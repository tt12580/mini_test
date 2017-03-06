$(document).on 'click', '.block', ->
    $(this).find('img').toggleClass 'red'
    $('#address_image_src').val $(this).find('img').attr('src')
    if $(this).find('img').hasClass('red')
      $('.no-class').addClass 'green'
    else
      $('.no-class').removeClass 'green'
    return
  return
