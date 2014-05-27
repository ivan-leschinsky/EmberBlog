attr = Ember.attr

Vanoblog.Post = Ember.Model.extend
  transient: false
  
  id: attr()
  title: attr()
  body: attr()
  date: attr()
  #comments: Ember.hasMany('Vanoblog.Comment', {key: 'comments', embedded: true})

Vanoblog.Post.rootKey = 'post'
Vanoblog.Post.collectionKey = 'posts'
Vanoblog.Post.url = "/ember/posts";
Vanoblog.Post.adapter = Ember.RESTAdapter.create();
