class QuizBuzz.GamePlayController extends QuizBuzz.GameController
  viewingScores: false

  +computed viewingScores
  showScores: ->
    @viewingScores

  questionNum: 0

  +computed questionNum
  questionNumText: ->
    "Question ##{@questionNum}"

  +computed questionTimeRemaining
  questionTimeText: ->
    seconds = @questionTimeRemaining / 1000
    "#{Math.ceil(seconds)} seconds"

  answerTimeText: ~>
    "00:00"

  answeringPlayer: null

  nextQuestion: ->
    @questionNum = @questionNum + 1
    @startQuestionTimer()

  questionTimeRemaining: 0 # in milliseconds
  questionDuration: 30000 # in milliseconds
  questionTimer: null

  startQuestionTimer: ->
    @questionTimeRemaining = @questionDuration
    @questionTimer = setInterval(@advanceQuestionTimer.bind(this), 500)

  advanceQuestionTimer: ->
    @questionTimeRemaining = @questionTimeRemaining - 500
    if @questionTimeRemaining <= 0
      clearInterval(@questionTimer)
      @nextQuestion()

  pauseQuestionTimer: ->
    clearInterval(@questionTimer)
    @questionTimer = null

  resumeQuestionTimer: ->
    @questionTimer = setInterval(@advanceQuestionTimer.bind(this), 500)


  actions:
    buzz: ->
      if @answeringPlayer == null && !@currentUserIsMod
        @answeringPlayer = @currentUser
      else
        alert("Another player is answering.")

      false

    answerCorrect: ->
      # TODO Assign points
      @nextQuestion()

      false

    answerWrong: ->
      alert('wrong')
      false

    togglePause: ->
      if @questionTimer
        @pauseQuestionTimer()
      else
        @resumeQuestionTimer()
      false
