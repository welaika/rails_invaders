$ ->
  return unless $('[data-game]').length

  sendMatchToServer = ->
    $("#match-form").submit()

  updateScore = (score) ->
    $("input#match_score").val(score)

  setMatchFinished = ->
    $("input#match_status").val("finished")

  $("#game").on "score-updated", (event, score) ->
    updateScore(score)

  $("#game").on "game-over", (event, score) ->
    updateScore(score)
    setMatchFinished()
    sendMatchToServer()
    clearInterval(updateInterval)

  updateInterval = setInterval sendMatchToServer, window.App.MATCH_UPDATE_INTERVAL
