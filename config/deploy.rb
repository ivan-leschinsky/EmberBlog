require 'mina/bundler'
require 'mina/rails'
require 'mina/git'
require 'mina/rvm'
require 'mina/scp'

set :domain, 'likerok.com'
set :user, 'deployer'
set :deploy_to, '/var/www/vanoblog.tk'
set :repository, 'git@github.com:ivan-leschinsky/EmberBlog.git'
set :branch, 'master'
set :rails_env, 'production'
set :shared_paths, ['config/database.yml', 'log', ]
set :port, '37926'
# Uncomment this if using CentOS
#set :rvm_path, '/usr/local/rvm/bin/rvm-exec'

task :environment do
  invoke :'rvm:use[2.1.2@vanoblog]'
end

task setup: :environment do
  queue! %[mkdir -p "#{deploy_to}/shared/log"]
  queue! %[chmod g+rx,u+rwx "#{deploy_to}/shared/log"]

  queue! %[mkdir -p "#{deploy_to}/shared/config"]
  queue! %[chmod g+rx,u+rwx "#{deploy_to}/shared/config"]

  queue! %[mkdir -p "#{deploy_to}/shared/system"]

  queue! %[touch "#{deploy_to}/shared/config/database.yml"]
end

desc "Deploys the current version to the server."
task deploy: :environment do
  deploy do
    invoke :'git:clone'
    invoke :'deploy:link_shared_paths'
    invoke :'upload_configs'
    # Uncomment this if using CentOS
    # invoke :'bundle_config'
    invoke :'bundle:install'
    invoke :'rails:db_migrate'
    invoke :'rails:assets_precompile'

    to :launch do
      invoke :'restart'
    end
  end
end

task :bundle_config do
  queue "bundle config build.pg --with-pg_config=/usr/pgsql-9.3/bin/pg_config"
end

task :restart do
  queue "touch #{deploy_to}/tmp/restart.txt"
end


task :upload_configs do
  scp_upload("shared/config/database.yml", "#{deploy_to}/shared/config/database.yml")
end

namespace :logs do
  desc "tail rails logs"
  task :tail do
    queue "tail -f /var/log/apache.log"#tail -f #{deploy_to}/log/unicorn.stdout.log"
  end

  desc "last 300 lines of rails logs"
  task :tail do
    queue "tail -n 300 /var/log/apache.log"#  "tail -n 300 #{deploy_to}/log/unicorn.stdout.log"
  end

  desc "tail ember logs"
  task :tail_ember do
    execute "tail -f #{deploy_to}/log/ember_errors.log"
  end
end
