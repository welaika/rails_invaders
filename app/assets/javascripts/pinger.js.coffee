$ ->
  return unless $('#currently_playing_count').length

  pingUser = ->
    $.ajax
      method: 'POST'
      url: '/ping_user'
    .done (data) ->
      $('#currently_playing_count').html(data.currently_playing_count)

  pingUser()
  setInterval pingUser, window.App.PING_TIMEOUT
