$(document).on 'click', '.block', ->
  if $('div.selected').length == 0
    $('#address_image_src').val $(this).find('img').attr('src');
  else
    $('#address_image_src').val ''
  if $(this).hasClass('selected')
    $(this).removeClass('selected');
  else
    $(this).addClass('selected').siblings('.block').removeClass("selected");
  if $('div.selected').length == 1
    $('.no-class').addClass 'green'
  else
    $('.no-class').removeClass 'green'
  $('.size').html($('.selected').size());
return
