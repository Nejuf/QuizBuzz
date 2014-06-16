class QuizBuzz.GameNewController extends QuizBuzz.BaseObjectController

  showGameForm: false

  init: ()->
    @_super()
    @model = @store.createRecord('game')

  actions:
    createGame: ()->
      if @name? && !isNaN(@seconds_remaining)
        @model.seconds_remaining = parseInt(@model.seconds_remaining)
        @model.save().then (game)=>
          @model = @store.createRecord('game')
          @showGameForm = false
          # @transitionToRoute('game', game)
          @transitionToRouteAnimated('game', {main: 'slideLeft'}, game)

      false

    openNewGameForm: ()->
      @showGameForm = true
      false
