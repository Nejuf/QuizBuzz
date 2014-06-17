QuizBuzz.ChannelableMixin = Ember.Mixin.create
  channel: null

  +observer model
  initChannel: ()->
    if @model.id && !@channel
      @channel = QuizBuzz.pusher.subscribe("presence-game_#{@model.id}") # A presence channel so clients can communicate directly and know who is online
      @channel.bind 'pusher:subscription_succeeded', (data)=>
        @updateMembers()
      @channel.bind 'pusher:subscription_error', (data)->
        console.log('pusher subscription error!', data)
      @channel.bind 'pusher:member_added', (member)=>
        @updateMembers()

  updateMembers: ()->
    if @channel.members
      ids = []
      @channel.members.each (member)-> #the Pusher members object does have map
        ids.push member.id
      @store.findByIds('user', ids).then (members)=>
        @members = members
    else
      @members = []

  members: []

