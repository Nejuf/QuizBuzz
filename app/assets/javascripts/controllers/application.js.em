class QuizBuzz.ApplicationController extends QuizBuzz.BaseController
  pathChangeCount: 0
  +observer currentPath
  currentPathDidChange: ()->
    if @pathChangeCount > 0
      $('.flash-container').remove()# clear the Rails flash message
    @pathChangeCount += 1

  currentUser: null

