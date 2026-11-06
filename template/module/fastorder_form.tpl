<form action="" class="form modal-form__inner js-form-send" method="post" enctype="multipart/form-data">
  <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response">
  <div class="row">
    <div class="form__title col-12 hidden visible-xs">Мы свяжемся с Вами для оформления заказа</div>
    <input type="hidden" name="filter_type" value="Быстрый заказ">
  </div>
  <div class="row">
    <div class="col-6">
      <div class="form__product-block form__col">
        <span class="form__product-title"></span>
        <div class="form__product-img">
          <img src="#" alt="">
        </div>
      </div>
    </div>
    <div class="col-6">
      <div class="form__col">
        <div class="form__title hidden-xs">Мы свяжемся с Вами для оформления заказа</div>
        <input type="hidden" name="type" value="Оформление заказа">
        <label class="tm-field form__label">
          <span>Имя</span>
          <input type="text" class="tm-field__input form__field" name="Имя" placeholder="Ваше имя" required id="input-name">
        </label>
        <label class="tm-field form__label">
          <span>Номер телефона</span>
          <input type="tel" class="tm-field__input form__field" name="Телефон" placeholder="+7 (_ _ _) _ _ _ - _ _ - _ _" required id="input-phone" onkeyup="keyup_phone($(this).val())"  value="+7(">
        </label>

        <label class="tm-checkbox form__processing">
          <input class="tm-checkbox__input" type="checkbox" required checked>
          <span class="tm-checkbox__box form__checkbox"></span>
          <span class="form__processing-text">Согласен на обработку <a href="#">персональных данных</a></span>
        </label>

        <button class="btn form__btn" type="submit">
          <span class="btn__text">Заказать изделие</span>
        </button>
      </div>
    </div>
  </div>

</form>
<script>
  $('.privacy-fastorder').click(function() {
    var privacy = $(".privacy-fastorder:checked").val();
    if (privacy != 1) {
      $('.fastorder-btn').prop('disabled', true);
    } else if (privacy == 1) {
      $('.fastorder-btn').prop('disabled', false);
    }
  });
  $('#fom-comments label').on('click', function() {
    $('#fom-comments textarea').show();
  });

  function send() {
    var name = $("#input-name").val();
    var phone = $("#input-phone").val();
    var photo = $("#input-photo").val();
    var url = encodeURIComponent(window.location['href']);
    var comments = $("#input-comments").val();
    var sub = $('#subtitle').val();
    type = 'Каталог 1';
    model = $(".product-model").html();

    $("#input-name").focus(function() {
      $('#fom-name').removeClass('has-error');
      $('#fom-name .text-danger').remove();
      $('#fom-name .text-danger').remove();
    });

    $("#input-phone").focus(function() {
      $('#fom-phone').removeClass('has-error');
      $('#fom-phone .text-danger').remove();
    });

    $.ajax({
      url: 'index.php?route=module/fastorder/send',
      type: 'post',
      data: 'filter_model=' + model + '&filter_type=' + type + '&filter_name=' + name + '&filter_phone=' + phone + '&url=' + url + '&filter_photo=' + photo + '&filter_comments=' + comments + '&sub=' + sub,
      dataType: 'json',
      beforeSend: function() {
        $('#button-send').button('loading');
      },
      complete: function() {
        $('#button-send').button('reset');
      },
      success: function(json) {
        if (json['error']) {
          if (json['error']['name']) {
            if ($("#fom-name .text-danger").length > 0) {
              $('#fom-name').addClass('has-error');
              $('#fom-name > #input-name .text-danger').html(json['error']['name'])
            } else {
              $('#fom-name').addClass('has-error');
              $('#fom-name > #input-name').after('<div class="text-danger">' + json['error']['name'] + '</div>')
            }
          }
          if (json['error']['phone']) {
            if ($("#fom-phone .text-danger").length > 0) {
              $('#fom-phone').addClass('has-error');
              $('#fom-phone > #input-phone .text-danger').html(json['error']['phone'])
            } else {
              $('#fom-phone').addClass('has-error');
              $('#fom-phone > #input-phone').after('<div class="text-danger">' + json['error']['phone'] + '</div>')
            }
          }
        }
        if (json['success'] && !json['error']) {
          $('#fastorder>form .row>.col-sm-12').html(json['success']);
          setTimeout(function() {
            $("#fastorder .mfp-close").click();
          }, 3000);
          ga('send', 'event', 'order', 'sent');

        }
      }
    });
  }
</script>
