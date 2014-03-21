Vanoblog.PostsEditRoute = Ember.Route.extend
  model: (params) ->
    Vanoblog.Post.find(params.post_id)
  actions:
    save: ->
      @modelFor('newPost').save()