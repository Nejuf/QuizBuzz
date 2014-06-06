#= require jquery
#= require jquery_ujs
#
#= require handlebars
#= require ember
#= require ember-data
#= require ember-animate
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
  # LOG_TRANSITIONS_INTERNAL: true
  )

# Basic animation for all of the views
Ember.View.reopen
  willAnimateIn: ()->
    console.log('animate')
    this.$().css("opacity", 0)

  animateIn: ()->
    console.log('animate in')
    this.$().fadeTo(500, 1)

  # Overriding the animateOut without doing view cleanup will result in old views sticking around
  # animateOut: ()->
  #   this.$().fadeTo(500, 0, done)
