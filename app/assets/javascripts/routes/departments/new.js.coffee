Vanoblog.PostsNewRoute = Ember.Route.extend
  model: ->
    Vanoblog.Post.create()
  actions:
    save: ->
      @modelFor('newPost').save()