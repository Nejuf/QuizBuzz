class QuizBuzz.GameIndexController extends QuizBuzz.BaseObjectController with QuizBuzz.ChannelableMixin

  +computed moderator.email
  modName: ->
    @get('moderator.email') || "--"

  actions:
    startGame: ()->
      alert('Sorry, this feature is not yet implemented!\nFollow progress at https://github.com/Nejuf/QuizBuzz')
      false
