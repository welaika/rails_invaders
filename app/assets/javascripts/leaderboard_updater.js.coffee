$ ->
  return unless $('[data-game]').length

  currentRank = 0

  setRankDom = (rank) ->
    $('#current_player_rank').html(rank)

  setCurrentRank = (rank) ->
    lastRank = currentRank
    currentRank = rank
    switch
      when currentRank > lastRank then $("#game").trigger("rank_up")
      when currentRank < lastRank then $("#game").trigger("rank_down")

  getRankFromServer = ->
    $.ajax
      url: '/user_rank'
    .done (data) ->
      setCurrentRank(data.user_rank)
    .fail ->
      console?.log "Cannot get user rank"

  setInterval getRankFromServer, window.App.LEADERBOARD_UPDATE_INTERVAL

