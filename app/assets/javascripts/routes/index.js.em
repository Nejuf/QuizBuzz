class QuizBuzz.IndexRoute extends Ember.Route
  model: ()->
    @store.find('user')
