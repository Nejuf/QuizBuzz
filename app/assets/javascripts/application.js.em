#= require jquery
#= require jquery_ujs
#
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require quiz_buzz

# for more details see: http://emberjs.com/guides/application/
window.QuizBuzz = Ember.Application.create(
  rootElement: '#ember-quiz-buzz'

  # Basic logging, e.g. "Transitioned into 'post'"
  LOG_TRANSITIONS: true

  # Extremely detailed logging, highlighting every internal
  # step made while transitioning into a route, including
  # `beforeModel`, `model`, and `afterModel` hooks, and
  # information about redirects and aborted transitions
  LOG_TRANSITIONS_INTERNAL: true
  )