class QuizBuzz.GameController extends QuizBuzz.BaseObjectController with QuizBuzz.ChannelableMixin
  +computed currentUser, model.moderator
  currentUserIsMod: ->
    @currentUser == @model.moderator

  +computed moderator.email
  modName: ->
    @get('moderator.email') || "--"

  +computed members.@each
  playersReady: ->
    mod = @model.moderator
    @members.filter (user)->
      return user != mod

  +computed playersReady.length
  playersReadyCount: ->
    @playersReady.length

  +computed model.teams.@each.users.length
  playersTotal: ->
    total = 0
    @model.teams.forEach (team)->
      total += team.get('users.length')
    total
