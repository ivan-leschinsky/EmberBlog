Vanoblog.PostsShowController = Ember.ObjectController.extend

  remove: ->
    if window.confirm("Are you sure you want to delete this Post?")
      @content.deleteRecord()
      Bootstrap.NM.push('Отдел успешно удален', 'success')
      Bootstrap.GNM.push('', 'Отдел успешно удален.', 'info')
      @transitionToRoute('posts.index')
    