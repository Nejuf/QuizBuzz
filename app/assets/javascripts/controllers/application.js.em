class QuizBuzz.ApplicationController extends Ember.Controller
  pathChangeCount: 0
  +observer currentPath
  currentPathDidChange: ()->
    if @pathChangeCount > 0
      $('.flash-container').remove()# clear the Rails flash message
    @pathChangeCount += 1

