Vanoblog.PostsNewController = Ember.ObjectController.extend
  headerTitle: 'Создание отдела'
  buttonCreate: 'Создать'
  buttonCancel: 'Отмена'
  labelName: 'Название'
  labelType: 'Тип отдела'
  labelVanoblogeal: 'Обращение к клиенту'
  labelGrade: 'Тип оценок'

  #categories: Vanoblog.Category.find()

  save: ->
    @content.save().then =>
      @transitionToRoute('posts.show', @content)

  cancel: ->
    @content.deleteRecord()
    @transitionToRoute('posts.index')