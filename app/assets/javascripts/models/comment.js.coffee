attr = Ember.attr

Vanoblog.Comment = Ember.Model.extend
  transient: false

  id: attr()
  name: attr()
  body: attr()
  #Post: belongsTo('Vanoblog.Post', {key: 'Post_id'})

Vanoblog.Comment.adapter = Ember.RESTAdapter.create();
Vanoblog.Comment.url = "/ember/comments";
Vanoblog.Comment.rootKey = 'comment'
Vanoblog.Comment.collectionKey = 'comments'
