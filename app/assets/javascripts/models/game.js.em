class QuizBuzz.Game extends DS.Model
  name: DS.attr('string')
  seconds_remaining: DS.attr('number')

  moderator: DS.belongsTo('user')
