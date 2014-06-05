class QuizBuzz.GameNewController extends Ember.ObjectController

  init: ()->
    @_super()
    @model = @store.createRecord('game')

  actions:
    createGame: ()->
      if @name? && !isNaN(@seconds_remaining)
        @model.seconds_remaining = parseInt(@model.seconds_remaining)
        @model.save().then ()=>
          @model = @store.createRecord('game')

      false