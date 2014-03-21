Vanoblog.PostsShowRoute = Ember.Route.extend
  model: (params) ->
    Vanoblog.Post.find(params.post_id)
    #@get('store').find 'Post', params.Post_id
  actions:
    remove: ->
      @modelFor('newPost').deleteRecord()
      #newComment: (params_model) ->
    #  @transitionToRoute('Posts.newComment', params_model)
