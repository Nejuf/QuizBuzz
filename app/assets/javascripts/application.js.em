#= require jquery
#= require jquery_ujs
#
#= require handlebars
#= require ember
#= require ember-data
#= require ember-animate
#= require ember-animated-outlet
#= require_self
#= require quiz_buzz

# for more details see: http://emberjs.com/guides/application/
emberPaths = ['/']
validEmberPath = emberPaths.any (path)->
  window.location.pathname == path || window.location.pathname[0..path.length+1] == path + '#'

window.QuizBuzz = {}
if validEmberPath
  window.QuizBuzz = Ember.Application.create(
    rootElement: '#ember-quiz-buzz'

    # Basic logging, e.g. "Transitioned into 'post'"
    # LOG_TRANSITIONS: true

    # Extremely detailed logging, highlighting every internal
    # step made while transitioning into a route, including
    # `beforeModel`, `model`, and `afterModel` hooks, and
    # information about redirects and aborted transitions
    # LOG_TRANSITIONS_INTERNAL: true
    )


onDocHeightChanged = ()->
  docHeight = $(document).height()
  bodyHeight = $('body').height()
  if docHeight > bodyHeight
    footerHeight = 50
    # if the doc's height is greater than the body's height,
    # then a new element has been rendered or a height increased,
    # increase the body to account for that,
    # adding-in the height of the absolute positioned footer
    $('body').height(docHeight + footerHeight)

$(document).on 'ready.height-fix', ()->
  $(document).off('ready.height-fix')
  onDocHeightChanged()
  $(window).on 'load.height-fix', ()->
    $(window).off('load.height-fix')
    onDocHeightChanged()
  $(window).resize ()->
    onDocHeightChanged()
  $(window).scroll ()->
    onDocHeightChanged()

Ember.View.reopen
  # Basic animation for all of the views
  willAnimateIn: ()->
    this.$().css("opacity", 0)
  animateIn: ()->
    this.$().fadeTo(500, 1)
  # Overriding the animateOut without doing view cleanup will result in old views sticking around
  # animateOut: ()->
  #   this.$().fadeTo(500, 0, done)

  # An element was inserted, so update the body height because the doc height may have changed
  didInsertElement: ()->
    @_super()
    Ember.run.scheduleOnce('afterRender', @, onDocHeightChanged)
