class QuizBuzz.User extends DS.Model
  email: DS.attr('string')

  games: DS.hasMany('game', inverse: 'moderator')
