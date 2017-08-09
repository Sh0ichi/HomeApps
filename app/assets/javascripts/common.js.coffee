ready = ->
  $(".datetimepicker").datetimepicker()

  $('.form-control').change ->
    console.log eval($(this).val())
    $('#' + $(this).attr('id') + '_val').val(eval($(this).val()))

$(document).ready(ready)
$(document).on('page:load', ready)
