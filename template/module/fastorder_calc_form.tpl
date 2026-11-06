<form action="" class="form modal-form__inner js-form-send" method="post" enctype="multipart/form-data">
  <input type="hidden" name="calc_form_field" value="1" id="calc_form_field">
  <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response">
  <div class="row">
    <div class="form__title col-12">Мы свяжемся с Вами и уточним все детали и Ваши пожелания</div>
    <input type="hidden" name="filter_type" value="Рассчитать стоимость">
  </div>
  <div class="row">
    <div class="col-4 hidden-xs">
      <div class="form__product-block-2 form__col">
        <span class="form__product-title"></span>
        <div class="form__product-img">
          <img src="#" alt="">
        </div>
      </div>
    </div>
    <div class="col-4">
      <div class="form__col">
        <div class="form__subtitle">Укажите параметры изделия для рассчета стоимости</div>
        <div class="row">
          <div class="col-6 col-sm-6">
            <label class="tm-checkbox-2 form__label">
              <input class="tm-checkbox-2__input" type="checkbox" id="my-stone">
              <span class="tm-checkbox-2__box form__checkbox"></span>
              <span class="tm-checkbox-2__text">Свой камень</span>
            </label>
          </div>
          <div class="col-6 col-sm-6">
            <label class="tm-checkbox-2 form__label">
              <input class="tm-checkbox-2__input" type="checkbox" id="my-metall">
              <span class="tm-checkbox-2__box form__checkbox"></span>
              <span class="tm-checkbox-2__text">Свой металл</span>
            </label>
          </div>
        </div>
        <label class="tm-select form__label">
          <span class="form__label-name">Металл</span>
          <select class="tm-select__input" name="Металл" id="metall">
            <option value="Желтое золото 585 и 750">Желтое золото 585 или 750</option>
            <option value="Белое золото 585 и 750">Белое золото 585 или 750</option>
            <option value="Красное золото 585 и 750">Красное золото 585 или 750</option>
            <option value="Платина 950 пробы">Платина 950 пробы</option>
            <option value="Серебро 925 пробы">Серебро 925 пробы</option>
          </select>
        </label>
        <label class="tm-textarea form__label">
          <span class="form__label-name">Комментарий: </span><span>(не обязатаельно)</span>
          <textarea name="name" class="tm-textarea__input" placeholder="Напишите, пожалуйста, дополнительные пожелания и вопросы" id="input-comments"></textarea>
        </label>
      </div>
    </div>
    <div class="col-4">
      <div class="form__col">
        <div class="form__subtitle">Ваши контактные данные для обратной связи</div>
        <label class="tm-field form__label">
          <span>Имя</span>
          <input type="text" class="tm-field__input form__field" name="Имя" placeholder="Ваше имя" required id="input-name">
        </label>
        <label class="tm-field form__label">
          <span>Номер телефона</span>
          <input type="tel" class="tm-field__input form__field" name="Телефон" placeholder="+7 (_ _ _) _ _ _ - _ _ - _ _" required id="input-phone" onkeyup="keyup_phone($(this).val())"  value="+7(">
        </label>

        <div class="form__processing">
          <span class="form__processing-text">Согласен на обработку <a href="#">персональных данных</a></span>
        </div>

        <button class="btn form__btn" type="submit">
          <span class="btn__text">Заказать рассчет</span>
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
