# For more information see: http://emberjs.com/guides/routing/

QuizBuzz.Router?.map ->
  @route('index', path: '/')
  @resource 'game', path: '/game/:game_id', ()-> #have to pass in third parameter for it to generate default routes
    @route('play')

