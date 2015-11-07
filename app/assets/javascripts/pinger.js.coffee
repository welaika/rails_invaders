$ ->
  return unless $('body.matches-show').length

  setInterval ->
    $.ajax
      method: 'POST'
      url: '/ping_users'
    .done (data) ->
      $('#currently_playing_count').html(data.currently_playing_count)
  , window.App.PING_TIMEOUT
