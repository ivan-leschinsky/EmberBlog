# for more details see: http://emberjs.com/guides/controllers/

Vanoblog.VanobloglicationController = Ember.Controller.extend
  posts: Vanoblog.Post.find()

