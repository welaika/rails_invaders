$ ->
  setInterval ->
    $.ajax
      method: 'POST'
      url: '/ping_users'
    .done (data) ->
      console.log(data)
  , 4000
