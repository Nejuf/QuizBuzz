class QuizBuzz.GameIndexController extends Ember.ObjectController
  +computed moderator.email
  modName: ->
    @get('moderator.email') || "--"