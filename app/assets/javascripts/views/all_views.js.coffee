# require mask_input

Vanoblog.VanobloglicationView = Ember.View.extend
  classNames: ['application']

Vanoblog.DashboardView = Ember.View.extend
  didInsertElement: ->
    @_super();
    Ember.run.scheduleOnce('afterRender', this, ->
      # тут можно вставить код для графиков
      #alert($("#remove_Post_modal").html())
    )

Vanoblog.PostsView = Ember.View.extend()
Vanoblog.PostsIndexView = Ember.View.extend()
Vanoblog.PostsShowView = Ember.View.extend
  didInsertElement: ->
    @_super();
    Ember.run.scheduleOnce('afterRender', this, ->
      
    )
Vanoblog.PostsViewView = Ember.View.extend()
Vanoblog.PostsNewView = Ember.View.extend()
Vanoblog.PostsEditView = Ember.View.extend()
Vanoblog.PostsNeweView = Ember.View.extend()

Vanoblog.GradesView = Ember.View.extend()

Vanoblog.SettingsView = Ember.View.extend
  didInsertElement: ->
    #alert($)
Vanoblog.CommentsView = Ember.View.extend()
Vanoblog.CommentsShowView = Ember.View.extend()
Vanoblog.CommentsNewView = Ember.View.extend()
Vanoblog.CommentsNewDepView = Ember.View.extend()
Vanoblog.GradeGroupsView = Ember.View.extend()
Vanoblog.GradeGroupsIndexView = Ember.View.extend()
Vanoblog.GradeGroupsShowView = Ember.View.extend()
Vanoblog.GradeGroupsEditView = Ember.View.extend()
