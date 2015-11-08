$ ->
  return unless $('[data-game]').length

  currentRank = null

  setRankDom = (rank) ->
    $('#current_player_rank').html(rank)

  setCurrentRank = (rank) ->
    lastRank = currentRank
    currentRank = rank
    setRankDom(rank)
    return if lastRank == null
    switch
      when currentRank > lastRank then animateRankDown()
      when currentRank < lastRank then animateRankUp()

  animateRankUp = ->
    $('#level-up').addClass('active').delay(1200).queue(->
      $(@).removeClass('active')
      $(@).dequeue()
    )

  animateRankDown = ->
    $('#level-down').addClass('active').delay(1200).queue(->
      $(@).removeClass('active')
      $(@).dequeue()
    )

  getRankFromServer = ->
    $.ajax
      url: '/user_rank'
    .done (data) ->
      setCurrentRank(data.user_rank)
    .fail ->
      console?.log "Cannot get user rank"

  $("#game").on "game-over", ->
    clearInterval(updateInterval)

  getRankFromServer()

  updateInterval = setInterval getRankFromServer, window.App.LEADERBOARD_UPDATE_INTERVAL
