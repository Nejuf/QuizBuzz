class QuizBuzz.GameView extends Ember.View
class QuizBuzz.GameIndexView extends Ember.View

class QuizBuzz.GameRowView extends Ember.View
  tagName: 'tr'
  classNames: ['game-row']

  click: (jQueryEvent)->
    @controller.send('onRowClicked')
