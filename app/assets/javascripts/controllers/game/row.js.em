class QuizBuzz.GameRowController extends QuizBuzz.BaseObjectController
  actions:
    onRowClicked: ()->
      @transitionToRouteAnimated('game', {main: 'slideLeft'}, @model)
      false
