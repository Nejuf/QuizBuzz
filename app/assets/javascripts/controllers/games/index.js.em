class QuizBuzz.GamesIndexController extends QuizBuzz.BaseArrayController
  +computed content.@each.seconds_remaining
  unfinishedGames: ->
    @content.filter (game)->
      game.seconds_remaining > 0
