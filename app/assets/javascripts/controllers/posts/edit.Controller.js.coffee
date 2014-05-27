Vanoblog.PostsEditController = Ember.ObjectController.extend
  buttonTitle: 'Обновить'

  save: ->
    @content.save().then =>
      @transitionToRoute('posts.show', @content)


  remove: ->
    if window.confirm("Are you sure you want to delete this Post?")
      @content.deleteRecord()
      @transitionToRoute('posts.index')