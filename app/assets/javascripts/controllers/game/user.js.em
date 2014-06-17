class QuizBuzz.GameUserController extends Ember.ObjectController

  needs: ['gameIndex']

  game: Ember.computed.alias("controllers.gameIndex")

  +computed game.members.@each
  userReadyText: ->
    if @game.members?.contains(@model)
      'ready!'
    else
      'not ready'
