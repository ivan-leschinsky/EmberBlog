Vanoblog.PostsRoute = Ember.Route.extend
  actions:
    remove: ->
      @modelFor('newPost').deleteRecord()
    posts_edit: (params_model) ->
      @transitionToAnimated('posts.edit', {posts: "flip"}, params_model)
    #newComment: (params_model) ->
    #  @transitionToAnimated('Posts.newComment', {Posts: "flip"}, params_model.get('Comments').create())
