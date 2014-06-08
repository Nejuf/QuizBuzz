class QuizBuzz.IndexController extends Ember.Controller
  +computed content.@each.seconds_remaining
  unfinishedGames: ->
    @content.filter (game)->
      game.seconds_remaining > 0

