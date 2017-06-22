$(document).ready(function(){
  $('.login-list-item').click(handleListClick)
  $('.register-list-item').click(handleListClick)
  $('body').on('click', '#register-to-login', handleListClick)
  $('body').on('click', '#login-to-register', handleListClick)
})

function clearPopUp(){
  $('.blackout').remove();
  $('.popup-form').remove();
}

function handleListClick(event){
    event.preventDefault();
    $('.dropdown').click();
    if ($('.blackout').length === 0){
      $('#main-wrapper').prepend('<div class="blackout"></div>');
      setTimeout(function(){
        $('.blackout').addClass('fade-in-blackout');
      }, 10)
    } else {
      $('.popup-form').remove()
    }
    var url = $(event.target).attr('href')
    $.ajax({
      type: 'GET',
      url: url,
    }).done(function(response){
      $('#main-wrapper').append(response);
      $('.blackout').click(clearPopUp);
      $('.cancel-button').click(clearPopUp);
    })
}
