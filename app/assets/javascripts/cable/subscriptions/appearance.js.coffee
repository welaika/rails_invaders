$ ->
  App.appearance = App.cable.subscriptions.create "AppearanceChannel",
    connected: ->
      @appear()

    appear: ->
      console.log "APPEARING"
      @perform 'appear'

    received: (data) ->
      console.log "RICEVO DATI"
      console.log data
