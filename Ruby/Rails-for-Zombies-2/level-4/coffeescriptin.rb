# Before

$(document).ready ->

# After

$(document).ready ->
  $('#displayWeaponForm').click (event) ->
    event.preventDefault()
    $(this).hide()
    $('#newWeapon').show()
