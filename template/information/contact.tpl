<?php echo $header; ?>
<div class="container">
  <div class="breadcrumbs row wrapper">
    <ul class="breadcrumbs__list" itemscope itemtype="https://schema.org/BreadcrumbList">
      <?php $bread_count = count($breadcrumbs); ?>
      <?php foreach ($breadcrumbs as $i => $breadcrumb) { ?>
      <li class="breadcrumbs__item" itemprop="itemListElement" itemscope
      itemtype="https://schema.org/ListItem">
        <?php if($i+1 > $bread_count) { ?>
        <span itemprop="name" class="breadcrumbs__link"><?php echo $breadcrumb['text']; ?></span>
        <meta itemprop="position" content="<?php echo $i ?>">
        <? }else{ ?>
        <a class="breadcrumbs__link" href="<?php echo $breadcrumb['href']; ?>" itemprop="item">
			<span itemprop="name"><?php echo $breadcrumb['text']; ?></span>
			<meta itemprop="position" content="<?php echo $i ?>">
		</a>
        <?php } ?>
      </li>
      <?php } ?>
    </ul>
  </div>
</div>
<div class="container">
  <div class="row">
    <div id="content" class="contacts">
      <?php echo $content_top; ?>
      <div class="contacts__wrapper wrapper">
        <div class="row">
          <div class="col-6 contacts__col">
            <div class="contacts__list">
              <h1>Контакты и адрес Ювелирной Студии</h1>
              <div class="contacts__list-item">
                <h4 class="contacts__list-phone contacts__list-item-title">Телефон:</h4>
                <a href="tel:+74957418614" class="contacts__list-link contacts__list-link_under">8 (495) 741-86-14</a>
              </div>
              <div class="contacts__list-item">
                <h4 class="contacts__list-phone contacts__list-item-title">WhatsApp:</h4>
                <a class="contacts__list-link contacts__list-link_under" href="https://wa.me/79264080071">+7 (926) 408-00-71 Виктория</a>
                <br>
                <a class="contacts__list-link contacts__list-link_under" href="https://wa.me/79152580925">+7 (915) 258-09-25 Оксана</a>
              </div>
              <div class="contacts__list-item">
                <h4 class="contacts__list-email contacts__list-item-title">Почта:</h4>
                <a href="mailto:zakaz@uvelirmoscow.ru" class="contacts__list-link contacts__list-link_under">zakaz@uvelirmoscow.ru</a>
              </div>
              <div class="contacts__list-item">
                <h4 class="contacts__list-address contacts__list-item-title">Адрес:</h4>
                <span class="contacts__list-link">Москва, Кузнецкий мост, дом 7, стр. 3</span>
                <div class="contacts__list-desc">
                  Станция метро: Охотный ряд или Кузнецкий мост<br>
                  Здание напротив центрального входа в ЦУМ, вход в арку с улицы Неглинная.
                </div>
              </div>
              <div class="contacts__list-item">
                <h4 class="contacts__list-time contacts__list-item-title">Время работы:</h4>
                <span class="contacts__list-link contacts__list-link_time">Пн-Пт: с 10:00 до 20:00 Сб-Вс: с 12:00 до 17:00</span>
              </div>
            </div>
          </div>
          <div class="col-6 contacts__col">
            <div class="contacts__form-map hidden visible-sm">
              <iframe allowfullscreen="" frameborder="0" height="485" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2244.801014390018!2d37.61814702864557!3d55.7619587986143!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46b54a435ab49fa1%3A0x4db9a999560a1ec6!2z0K7QstC10LvQuNGA0Ysg0JzQvtGB0LrQstGLINGO0LLQtdC70LjRgNC90LDRjyDRgdGC0YPQtNC40Y8!5e0!3m2!1sru!2sua!4v1468909944458" style="border:0" width="100%"></iframe>
            </div>
            <form action="" class="contacts__form js-form-send form" enctype="multipart/form-data" method="post">
              <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response">
              <input id="data-yandex" name="data-yandex" value="contact-msg-z3" />

              <div class="row">
                <div class="contacts__form-title col-12">Напишите нам по любому вопросу</div>
                <input type="hidden" name="type" value="Контакты">
                <div class="contacts__form-subtitle col-12">Наши специалисты свяжутся с вами в течении 2х часов и ответят на все ваши вопросы </div>
              </div>
              <div class="row">
                <div class="col-12">
                  <div class="contacts__form-col">
                    <label class="contacts__form-label">
                      <input class="contacts__form-field" name="name" placeholder="Имя" required="" type="text" id="input-name">
                    </label>
                    <label class="contacts__form-label">
                      <input class="contacts__form-field" name="email" placeholder="E-mail" required="" type="email" id="input-mail">
                    </label>
                    <label class="contacts__form-label">
                      <textarea name="comment" class="contacts__form-input" placeholder="Ваше сообщение" id="input-comments"></textarea>
                    </label>
                    <button class="btn contacts__form-btn form__btn" type="submit">
                      <span class="btn__text">Отправить сообщение</span>
                    </button>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
      <section class="contacts__map hidden-sm">
          <iframe allowfullscreen="" frameborder="0" height="750" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2244.801014390018!2d37.61814702864557!3d55.7619587986143!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46b54a435ab49fa1%3A0x4db9a999560a1ec6!2z0K7QstC10LvQuNGA0Ysg0JzQvtGB0LrQstGLINGO0LLQtdC70LjRgNC90LDRjyDRgdGC0YPQtNC40Y8!5e0!3m2!1sru!2sua!4v1468909944458" style="border:0" width="100%"></iframe>
      </section>
      <section class="contacts__location">
        <div class="contacts__wrapper">
          <h3 class="contacts__location-title hidden-xs">Как нас найти</h3>
          <div class="contacts__location-bg">
            <img data-src="catalog/view/theme/uvelirmoscow/assets/img/contacts/address.png" alt="Address" class="hidden-xs lazyload">
            <img data-src="catalog/view/theme/uvelirmoscow/assets/img/contacts/address-1.jpg" alt="Address" class="hidden visible-xs lazyload">
          </div>
          <div class="contacts__location-text">
            <h3 class="contacts__location-title hidden visible-xs">Как нас найти</h3>
            <p>Здание напротив центрального входа в ЦУМ, <span class="contacts__location-text-bold">вход в арку с улицы Неглинная.</span></p>
            <p>Зайдите в арку, поверните направо. Зайдите в деревянную дверь и поднимайтесь на второй этаж</p>
          </div>
        </div>
      </section>
      <section class="contacts__video">
        <div class="contacts__video-item">
          <a href="https://www.youtube.com/embed/1rgV9Y4FC6U" data-fancybox data-fancybox-type="iframe" class="fancybox contacts__video-item-link">
            <div class="contacts__video-item-img">
              <img class="lazyload" data-src="catalog/view/theme/uvelirmoscow/assets/img/contacts/instruction.png" alt="Инструкция">
            </div>
            <div class="contacts__video-item-text">
              Путь к шоу-рум от метро театральная
            </div>
          </a>
        </div>
      </section>
      <?php echo $content_bottom; ?>
    </div>
  </div>
</div>
<?php echo $footer; ?>
