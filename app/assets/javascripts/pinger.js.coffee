$ ->
  return unless $('body.matches-show').length

  pingUser = ->
    $.ajax
      method: 'POST'
      url: '/ping_users'
    .done (data) ->
      $('#currently_playing_count').html(data.currently_playing_count)

  pingUser()
  setInterval pingUser, window.App.PING_TIMEOUT
