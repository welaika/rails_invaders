$ ->
  return unless $('#match-form').length

  updateMatch = ->
    $("#match-form").submit()

  updateMatch()
  setInterval updateMatch, window.App.MATCH_UPDATE_INTERVAL
