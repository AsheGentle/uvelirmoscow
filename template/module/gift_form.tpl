<form action="" class="form modal-form__inner js-form-send" method="post" enctype="multipart/form-data">
  <input type="hidden" name="type" value="Намекнуть о подарке">
  <div class="row">
    <div class="col-4">
      <div class="form__product-block-2 form__col">
        <span class="form__title">Намекнуть о подарке</span>
        <div class="form__desc">Мы отправим письмо со ссылкой на украшение</div>
        <div class="form__product-img">
          <img src="#" alt="">
        </div>
      </div>
    </div>
    <div class="col-8">
      <div class="row">
        <div class="col-6">
          <div class="form__col">
            <div class="form__subtitle">Кому отправить</div>
            <label class="tm-field form__label">
              <span>Имя</span>
              <input type="text" class="tm-field__input form__field" name="Имя" placeholder="Имя получателя" required id="input-to-name">
            </label>
            <label class="tm-field form__label">
              <span>E-mail</span>
              <input type="email" class="tm-field__input form__field" name="E-mail" placeholder="E-mail получателя" required id="input-to-mail">
            </label>
          </div>
        </div>
        <div class="col-6">
          <div class="form__col">
            <div class="form__subtitle">От кого</div>
            <label class="tm-field form__label">
              <span>Имя</span>
              <input type="text" class="tm-field__input form__field" name="Имя" placeholder="Ваше имя" required id="input-from-name">
            </label>
            <label class="tm-field form__label">
              <span>E-mail</span>
              <input type="email" class="tm-field__input form__field" name="E-mail" placeholder="Ваш E-mail"  required id="input-from-mail">
            </label>
          </div>
        </div>
        <div class="col-12">
          <div class="form__col">
            <label class="tm-checkbox form__processing">
              <input class="tm-checkbox__input" type="checkbox" required checked>
              <span class="tm-checkbox__box form__checkbox"></span>
              <span class="form__processing-text">Согласен на обработку <a href="#">персональных данных</a></span>
            </label>
            <button class="btn form__btn" type="submit">
              <span class="btn__text">Отправить</span>
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>

</form>
