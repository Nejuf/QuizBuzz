class QuizBuzz.GameIndexController extends QuizBuzz.BaseObjectController with QuizBuzz.ChannelableMixin

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

  +computed currentUser, model.moderator
  currentUserIsMod: ->
    @currentUser == @model.moderator

  actions:
    startGame: ()->
      alert('Sorry, this feature is not yet implemented!\nFollow progress at https://github.com/Nejuf/QuizBuzz')
      false
