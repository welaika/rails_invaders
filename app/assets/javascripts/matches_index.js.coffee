$ ->
  $tableButtons = $("button[data-leaderboard-target]")

  $tableButtons.on "click", ->
    clickedButton = @

    $tableButtons.each ->
      if @ == clickedButton
        $(@).addClass("button--rev")
      else
        $(@).removeClass("button--rev")

    leaderboardTarget = $(@).data("leaderboard-target")

    $(".table[data-leaderboard]").each ->
      $table = $(@)
      if $table.data("leaderboard") == leaderboardTarget
        $table.fadeIn()
      else
        $table.hide()
