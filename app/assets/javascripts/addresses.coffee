$(document).on 'click', '.block', ->
  if $(this).hasClass('red')
    $(this).removeClass('red');
  else
    $(this).addClass('red').siblings().removeClass("red");
  return
  if $(this).hasClass('red')
    $('#address_image_src').val $(this).find('img').attr('src');
  return
  if $('div.red').length > 0
    $('.no-class').addClass 'green'
  else
    $('.no-class').removeClass 'green'
  return
return
