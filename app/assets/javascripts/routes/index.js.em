class QuizBuzz.IndexRoute extends Ember.Route
  model: ()->
    Ember.RSVP.hash(
      users: @store.find('user')
      games: @store.find('game')
    )

  setupController: (controller, models)->
    controller.set('users', models.users)
    controller.set('games', models.games)

    @controllerFor('gameNew').set('showGameForm', false)
