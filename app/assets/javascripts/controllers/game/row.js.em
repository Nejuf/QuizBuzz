class QuizBuzz.GameRowController extends Ember.ObjectController
  actions:
    onRowClicked: ()->
      @transitionToRouteAnimated('game', {main: 'slideLeft'}, @model)
      false
