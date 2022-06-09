$(document).ready(function () {
  // PRELOAD (DOM)
  $.fn.preload = function () {
    this.each(function () {
      (new Image()).src = this;
    });
  }
  $(['./img/bg-img.jpg']).preload();
  /* SIDEBAR   */
  $('.openSidebar').click(function () {
    $('.sidebar').css('left', '0px')
    $('.overlay').css('display', 'block')
    $('.btnSidebar').css('left', '400px')
    $('.main-content').css('filter', 'blur(6px)')
    $('.text-content').css('filter', 'blur(6px)')
  })
  $('.overlay').click(function () {
    $('.sidebar').css('left', '-400px')
    $('.overlay').css('display', 'none')
    $('.btnSidebar').css('left', '0px')
    $('.main-content').css('filter', 'none')
    $('.text-content').css('filter', 'none')
  })
  /* APPARATUS   */
  $('.line').hover(function () {
    $(this).find('.inline-app').show();
    $(this).find('.line-num').show();
  }, function () {
    $(this).find('.inline-app').hide();
    $(this).find('.line-num').hide();
  });
  /* INPUTS   */
  $('#input-placename').on('change', function () {
    if ($(this).is(':checked')) {
      $('.tei-placename').css('background-color', '#ffa50040');
      $('.tei-placename').css('text-decoration', 'underline');
      $('.tei-placename').css('text-decoration-color', '#ffa500');
    } else {
      $('.tei-placename').css('background-color', 'transparent');
      $('.tei-placename').css('text-decoration', 'none');
    }
  });
  $('#input-persname').on('change', function () {
    if ($(this).is(':checked')) {
      $('.tei-persname').css('background-color', '#ffff0040');
      $('.tei-persname').css('text-decoration', 'underline');
      $('.tei-persname').css('text-decoration-color', '#ffff00');
    } else {
      $('.tei-persname').css('background-color', 'transparent');
      $('.tei-persname').css('text-decoration', 'none');
    }
  });
  $('.tei-reg').hide();
  $('#input-choice').on('change', function () {
    if ($(this).is(':checked')) {
      $('.tei-reg').show();
      $('.tei-orig').hide();
    } else {
      $('.tei-reg').hide();
      $('.tei-orig').show();
    }
  });
  $('#input-app').on('change', function () {
    if ($(this).is(':checked')) {
      $('.line').css('pointer-events', 'auto');
      $('#input-note').removeAttr('disabled');
    } else {
      $('.line').css('pointer-events', 'none');
      $('#input-note').attr('disabled', true);
    }
  });
  $('#input-note').on('change', function () {
    if ($(this).is(':checked')) {
      $('.tei-note').css('content', '*');
      $('.tei-note').css('display', 'inline-block');
      $('.tei-witdetail').css('display', 'block');
    } else {
      $('.tei-note').css('display', 'none');
      $('.tei-witdetail').css('display', 'none');
    }
  });
});