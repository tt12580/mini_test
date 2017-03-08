$(document).on 'click', '.block', ->
  $('#address_image_src').val $(this).find('img').attr('src');
  if $(this).hasClass('selected')
    $(this).removeClass('selected');
  else
    $(this).addClass('selected').siblings('.block').removeClass("selected");
  if $('div.selected').length == 1
    $('.no-class').prop('disabled', false);
    $('.no-class').addClass('btn-primary');
  else
    $('.no-class').prop('disabled', true);
    $('.no-class').removeClass('btn-primary');
  $('.size').html($('.selected').size());
return
