$ ->
  $("[data-drawer='toggle']").on 'click', () ->
    $(this).toggleClass('open')
    $("[data-drawer='menu']").slideToggle()
