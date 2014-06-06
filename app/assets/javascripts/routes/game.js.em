class QuizBuzz.GameRoute extends Ember.Route
  model: (params)->
    @store.find('game', params.game_id)

  setupController: (controller, model)->
    console.log('setupController', model.id)
    controller.set('content', model)
