<form action="" class="form modal-form__inner js-form-send" method="post" enctype="multipart/form-data">
  <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response">
  <div class="row">
    <div class="form__title col-12">Записаться на встречу</div>
    <input type="hidden" name="filter_type" value="Записаться на встречу">
  </div>
  <div class="row">
    <div class="col-12">
      <div class="form__col">
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
          <span class="btn__text">Отправить заявку</span>
        </button>
      </div>
    </div>
  </div>

</form>
