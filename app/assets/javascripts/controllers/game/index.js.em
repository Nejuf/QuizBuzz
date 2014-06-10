class QuizBuzz.GameIndexController extends Ember.ObjectController
  +computed moderator.email
  modName: ->
    @get('moderator.email') || "--"

  actions:
    startGame: ()->
      alert('Sorry, this feature is not yet implemented!\nFollow progress at https://github.com/Nejuf/QuizBuzz')
      false
