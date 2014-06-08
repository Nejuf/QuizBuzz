class QuizBuzz.GamesIndexController extends Ember.ArrayController
  +computed content.@each.seconds_remaining
  unfinishedGames: ->
    @content.filter (game)->
      game.seconds_remaining > 0
