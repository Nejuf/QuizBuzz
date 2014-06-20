class QuizBuzz.ApplicationRoute extends Ember.Route
  actions:
    error: (error)->
      Ember.onerror(error)
