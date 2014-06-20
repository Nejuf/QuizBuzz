#= require ./store
#= require_tree ./models
#= require_tree ./controllers
#= require_tree ./views
#= require_tree ./helpers
#= require_tree ./templates
#= require_tree ./routes
#= require ./router
#= require_self

QuizBuzz.recentRoutes = []
QuizBuzz.visitedRoute = (url)->
  QuizBuzz.recentRoutes.unshift(url)
  QuizBuzz.recentRoutes = QuizBuzz.recentRoutes.slice(0,20)

if QuizBuzz.Router?
  QuizBuzz.Router.reopen
    logTransitions: (()->
      @_super()
      QuizBuzz.visitedRoute(@url)
      ).on('didTransition')

Ember.onerror = (error)->
  try
    appController = QuizBuzz.__container__.lookup('controller:application')
    currentPath = appController.get('currentPath')

  Rollbar?.error(error, {'currentPath': currentPath, 'recentRoutes': QuizBuzz.recentRoutes})

  if window.Rails.isDevelopment
    throw error
