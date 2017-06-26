$(document).on 'turbolinks:load', ->
  $(".get_out_team").on 'click', (e) =>
    $('#get_out_team_modal').modal('open')
    $('.get_out_team_form').attr('action', 'get_out/' + e.target.id)
    return false

  $('.get_out_team_form').on 'submit', (e) ->
    $.ajax e.target.action,
        type: 'POST'
        contentType:'application/json',
        dataType: 'json',
        data: {id: id_team}
        success: (data, text, jqXHR) ->
          alert(data)
          $(location).attr('href','/');
        error: (jqXHR, textStatus, errorThrown) ->
          $('#get_out_team_modal').modal('close')
          Materialize.toast('Problem to get out Team &nbsp;<b>:(</b>', 4000, 'red')
    return false
