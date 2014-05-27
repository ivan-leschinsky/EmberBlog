#= require jquery
#= require jquery_ujs
#= require handlebars
#= require ember
#= require ember-model-custom
#= require ember-animated-outlet
#= require bs/bs-core.min
#= require bs/bs-button.min
#= require bs/bs-modal.max
#= require bs/bs-notifications.min
#= require bs/bs-growl-notifications.min
#= require_self
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./components
#= require_tree ./templates
#= require_tree ./routes
#= require ./router

# for more details see: http://emberjs.com/guides/application/
window.Vanoblog = Ember.Application.create(
  LOG_TRANSITIONS: true
  LOG_VIEW_LOOKUPS: true
  LOG_ACTIVE_GENERATION: true
)
