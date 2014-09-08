class QuizBuzz.GameIndexController extends QuizBuzz.GameController
  actions:
    startGame: ()->
      # alert('Sorry, this feature is not yet implemented!\nFollow progress at https://github.com/Nejuf/QuizBuzz')
      @transitionToRouteAnimated('game.play', {main: 'slideLeft'}, @model)
      false
