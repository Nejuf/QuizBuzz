class QuizBuzz.Team extends DS.Model
  name: DS.attr('string')

  users: DS.hasMany('users')
  games: DS.hasMany('games')
