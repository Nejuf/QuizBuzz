class QuizBuzz.GameRoute extends Ember.Route
  model: (params)->
    debugger
    @store.find('game', params.game_id)

  setupController: (controller, model)->
    window.test = controller
    controller.set('content', model)
