# Before

$(document).ready ->
  $('div#reload_form form').submit (event) ->
    event.preventDefault()
    url = $(this).attr('action')
    ammo = $('#ammo_to_reload').val()

# After

$(document).ready ->
  $('div#reload_form form').submit (event) ->
    event.preventDefault()
    url = $(this).attr('action')
    ammo = $('#ammo_to_reload').val()

    $.ajax
      type: 'put'
      url: url
      data: {ammo_to_reload: ammo}
      dataType: 'json'
      success: (json) ->
        $('#ammo').text(json.ammo).effect("highlight")
        $('#reload_form').fadeOut() if json.ammo >= 30
