        <footer>
            <div class="footer-top">
                <div class="footer-menu">
                    <div class="footer-menu__item">
                        <a href="/uslugi/izgotovlenie" class="footer-menu__title">Изготовление украшений</a>
                        <ul class="footer-menu__list">
                            <li><a href="/uslugi/izgotovlenie/kolca-na-zakaz">Кольца</a></li>
                            <li><a href="/uslugi/izgotovlenie/sergi-na-zakaz">Серьги</a></li>
                            <li><a href="/uslugi/izgotovlenie/braslety-na-zakaz">Браслеты</a></li>
                            <li><a href="/uslugi/izgotovlenie/cepochki-na-zakaz">Цепочки</a></li>
                            <li><a href="/uslugi/izgotovlenie/podveski-i-kulony-na-zakaz">Подвески и&nbsp;кулоны</a></li>
                            <li><a href="/uslugi/izgotovlenie/kolie-na-zakaz">Колье</a></li>
                            <li><a href="/uslugi/izgotovlenie/zaponok">Запонки</a></li>
                            <li><a href="/uslugi/izgotovlenie/broshi-na-zakaz">Броши</a></li>
                            <li><a href="/uslugi/izgotovlenie/diademy-i-tiary-na-zakaz">Диадемы и&nbsp;тиары</a></li>
                            <li><a href="/uslugi/izgotovlenie/bodichejny-na-zakaz">Бодичейны</a></li>
                            <li><a href="/uslugi/izgotovlenie/talismany-i-amulety-na-zakaz">Талисманы и&nbsp;амулеты</a></li>
                            <li><a href="/uslugi/izgotovlenie/yuvelirnye-suveniry-zakaz">Сувениры и&nbsp;брелоки</a></li>
                            <li><a href="/uslugi/izgotovlenie/breloki-na-zakaz">Брелоки</a></li>
                        </ul>
                    </div>
                    <div class="footer-menu__item">
                        <a href="/uslugi" class="footer-menu__title">Услуги</a>
                        <ul class="footer-menu__list">
                            <li><a href="/uslugi/izgotovlenie">Изготовление ювелирных изделий</a></li>
                            <li><a href="/uslugi/izgotovlenie-iz-vashih-materialov">Изготовление из&nbsp;ваших материалов</a></li>
                            <li><a href="/uslugi/remont-yuvelirnyh-izdeliy">Ремонт ювелирных изделий</a></li>
                            <li><a href="/uslugi/dizajn-yuvelirnyh-izdeliy">Дизайн ювелирных изделий</a></li>
                            <li><a href="/uslugi/proverka-brilliantov-i-kamnej">Проверка бриллиантов (камней)</a></li>
                            <li><a href="/uslugi/sertifikaty-i-podarochnye-karty">Сертификаты и подарочные карты</a></li>
                        </ul>
                    </div>
                    <div class="footer-menu__item">
                        <a href="/pokupatelyam" class="footer-menu__title">Покупателям</a>
                        <ul class="footer-menu__list">
                            <li><a href="/pokupatelyam/dostavka-i-oplata">Доставка и&nbsp;оплата</a></li>
                            <li><a href="/pokupatelyam/garantii">Гарантии</a></li>
                            <li><a href="/pokupatelyam/sertifikaty-studii">Сертификаты студии</a></li>
                            <li><a href="/pokupatelyam/kak-zakazat">Как заказать</a></li>
                            <li><a href="/pokupatelyam/pravila-podarochnyh-kart">Правила использования подарочных карт</a></li>
                        </ul>
                    </div>
                    <div class="footer-menu__item">
                        <a href="/o-studii" class="footer-menu__title">О&nbsp;студии</a>
                        <ul class="footer-menu__list">
                            <li><a href="/o-studii/nashi-raboty">Наши работы</a></li>
                            <li><a href="/o-studii/otzyvy">Отзывы</a></li>
                            <li><a href="/o-studii/obzory">Обзоры</a></li>
                            <li><a href="/o-studii/stati">Статьи</a></li>
                            <li><a href="/o-studii/sotrudnichestvo">Сотрудничество</a></li>
                            <li><a href="/o-studii/optovikam-i-b2b">Оптовикам и&nbsp;B2B сегменту</a></li>
                            <li><a href="/o-studii/rekvizity">Реквизиты</a></li>
                            <li><a href="/o-studii/kontakty">Контакты</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-contacts">
                <div class="footer-information">
                    <div class="footer-logo">
                        <img src="<?php echo htmlspecialchars($header_contacts_footer_logo_url, ENT_QUOTES, 'UTF-8'); ?>" alt="Логотип UvelirMoscow Jewellery." width="214" height="58" loading="lazy">
                    </div>
                    <div class="footer-copyrights">
                        &copy;&nbsp;2005&nbsp;&mdash; 2026&nbsp;ИП Хомич Олег Дмитриевич,  Все права защищены.
                    </div>
                </div>
                <div class="footer-contacts__item">
                    <div class="footer-contacts__title">Социальные сети</div>
                    <div class="socials">
                        <?php if ($header_contacts_socials) { ?>
                        <?php foreach ($header_contacts_socials as $social) { ?>
                        <a href="<?php echo htmlspecialchars($social['link'], ENT_QUOTES, 'UTF-8'); ?>" target="_blank" rel="noopener noreferrer" class="socials__item">
                            <img src="<?php echo htmlspecialchars($social['icon'], ENT_QUOTES, 'UTF-8'); ?>" alt="" width="30" height="30" loading="lazy">
                        </a>
                        <?php } ?>
                        <?php } else { ?>
                        <a href="https://max.ru/id490900906710_bot" target="_blank" class="socials__item">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/social-max.webp" alt="Max." width="30" height="30" loading="lazy">
                        </a>
                        <a href="tg://resolve/?domain=UvelirMoscowbot" target="_blank" class="socials__item">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/social-tg.svg" alt="Телеграм." width="30" height="30" loading="lazy">
                        </a>
                        <a href="https://vk.me/club46483382" target="_blank" class="socials__item">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/social-vk.svg" alt="Вконтакте." width="30" height="30" loading="lazy">
                        </a>
                        <a href="https://wa.me/79264080071" target="_blank" class="socials__item">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/social-wa.svg" alt="Whatsapp." width="30" height="30" loading="lazy">
                        </a>
                        <?php } ?>
                    </div>
                </div>
                <div class="footer-contacts__item">
                    <div class="footer-contacts__title">Адрес студии</div>
                    <div class="footer-contacts__text">Москва, Кузнецкий мост, д.&nbsp;7, стр.&nbsp;3</div>
                </div>
                <div class="footer-contacts__item">
                    <div class="footer-contacts__title">Режим работы</div>
                    <div class="footer-contacts__text"><?php echo htmlspecialchars($header_contacts_work_weekdays, ENT_QUOTES, 'UTF-8'); ?></div>
                    <div class="footer-contacts__text"><?php echo htmlspecialchars($header_contacts_work_weekend, ENT_QUOTES, 'UTF-8'); ?></div>
                </div>
                <div class="footer-contacts__item">
                    <div class="footer-contacts__title">Контактная информация</div>
                    <a href="<?php echo htmlspecialchars($header_contacts_phone_href, ENT_QUOTES, 'UTF-8'); ?>" class="footer-contacts__phone">
                        <svg aria-hidden="true"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#phone" /></svg>
                        <span><?php echo htmlspecialchars($header_contacts_phone, ENT_QUOTES, 'UTF-8'); ?></span>
                    </a>
                    <button type="button" class="btn btn--small" data-modal="#modal-1">Заказать звонок</button>
                </div>
            </div>
            <div class="footer-links">
                <a href="/politika-obrabotku-personalnyh-dannyh">Политика конфиденциальности</a>
                <a href="/soglasie-na-obrabotku-dannyh">Согласие на обработку данных</a>
                <a href="/soglasie-na-rassylku">Согласие на рассылку</a>
                <a href="/pravila-sajta">Правила сайта</a>
                <a href="/rekomendatelnye-tehnologii">Рекомендательные технологии</a>
            </div>
            <div class="footer-bottom">
                <p>Полное или частичное воспроизведение материалов данного сайта разрешено только с&nbsp;указанием активной гиперссылки на&nbsp;источник и&nbsp;обязательным уведомлением администрации данного сайта.<br>
                    Все права на&nbsp;изображения ювелирных изделий на&nbsp;данном сайте принадлежат компании ИП&nbsp;Хомич Олег Дмитриевич.<br>
                    Обращаем Ваше внимание на&nbsp;то, что данный интернет-сайт носит исключительно информационный характер и&nbsp;ни&nbsp;при каких условиях не&nbsp;является публичной офертой, определяемой положениями Статьи 437 (2) Гражданского кодекса Российской Федерации.</p>

                <p class="center">UvelirMoscow®</p>
            </div>
        </footer>

        <?php if ($show_cookie_consent) { ?>
        <div class="cookies">
            <div class="cookies__text"><?php echo htmlspecialchars($cookie_consent_text, ENT_QUOTES, 'UTF-8'); ?></div>
            <button type="button" class="btn btn--medium cookie__button">Принять</button>
            <div class="cookies__error" role="alert"></div>
        </div>
        <?php } ?>

        <div class="modal modal--form" id="modal-1">
            <button type="button" class="modal__close">
                <svg aria-hidden="true"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#close"></use></svg>
                <span>Закрыть</span>
            </button>
            <div class="modal__content">
                <div class="modal__body">
                    <div class="modal__title">Заказать звонок</div>
                    <form class="form" method="post" action="index.php?route=common/modal_form/send" novalidate data-modal-form="callback">
                        <input type="hidden" name="form_kind" value="callback">
                        <div class="form__row">
                            <label class="form__element">
                                <input type="text" name="name" class="inputbox" placeholder="Ваше имя*" maxlength="64" autocomplete="name">
                                <span class="error__text"></span>
                            </label>
                            <label class="form__element">
                                <input type="tel" name="phone" class="inputbox" placeholder="+7 (___) ___-__-__*" autocomplete="tel" inputmode="tel">
                                <span class="error__text"></span>
                            </label>
                        </div>
                        <div class="form__row">
                            <button type="submit" class="btn btn--medium">Оставить заявку</button>
                        </div>
                        <div class="form__row form__checkbox">
                            <label class="checkbox">
                                <input type="checkbox" name="consent" value="1">
                                <span class="checkbox__label">Я&nbsp;даю согласие на&nbsp;<a href="/soglasie-na-obrabotku-dannyh">обработку персональных данных</a></span>
                                <span class="error__text"></span>
                            </label>
                            <label class="checkbox">
                                <input type="checkbox" name="newsletter" value="1">
                                <span class="checkbox__label">Я&nbsp;даю согласие на&nbsp;<a href="/soglasie-na-rassylku">получение рекламных рассылок</a></span>
                            </label>
                            <div class="checkbox">Оставляя текущую заявку, я&nbsp;соглашаюсь, что сайт носит информационный характер и&nbsp;не&nbsp;является публичной офертой.</div>
                            <div class="checkbox"><a href="/politika-obrabotku-personalnyh-dannyh">Политика обработки персональных данных</a></div>
                        </div>
                        <div class="form__message" role="status" aria-live="polite"></div>
                    </form>
                </div>
            </div>
        </div>

        <div class="modal modal--form" id="modal-2">
            <button type="button" class="modal__close">
                <svg aria-hidden="true"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#close"></use></svg>
                <span>Закрыть</span>
            </button>
            <div class="modal__content">
                <div class="modal__body">
                    <div class="modal__title">Рассчитать стоимость</div>
                    <form class="form" method="post" action="index.php?route=common/modal_form/send" novalidate data-modal-form="cost">
                        <input type="hidden" name="form_kind" value="cost">
                        <div class="form__row">
                            <label class="form__element">
                                <input type="text" name="name" class="inputbox" placeholder="Ваше имя*" maxlength="64" autocomplete="name">
                                <span class="error__text"></span>
                            </label>
                            <label class="form__element">
                                <input type="tel" name="phone" class="inputbox" placeholder="+7 (___) ___-__-__*" autocomplete="tel" inputmode="tel">
                                <span class="error__text"></span>
                            </label>
                        </div>
                        <div class="form__row">
                            <label class="form__element">
                                <select name="material" class="inputbox">
                                    <option value="" selected disabled>Тип материала</option>
                                    <option value="1">Золото</option>
                                    <option value="2">Серебро</option>
                                    <option value="3">Платина</option>
                                    <option value="4">Драгоценные камни</option>
                                    <option value="5">Полудрагоценные камни</option>
                                </select>
                            </label>
                            <label class="form__element">
                                <input type="text" name="weight" class="inputbox" placeholder="Вес материала (приблизительно)">
                            </label>
                        </div>
                        <div class="form__row">
                            <label class="form__element">
                                <textarea name="description" class="inputbox" placeholder="Желаемое изделие"></textarea>
                            </label>
                        </div>
                        <div class="form__row">
                            <button type="submit" class="btn btn--medium">Оставить заявку</button>
                        </div>
                        <div class="form__row form__checkbox">
                             <label class="checkbox">
                                <input type="checkbox" name="consent" value="1">
                                <span class="checkbox__label">Я&nbsp;даю согласие на&nbsp;<a href="/soglasie-na-obrabotku-dannyh">обработку персональных данных</a></span>
                                <span class="error__text"></span>
                            </label>
                            <label class="checkbox">
                                <input type="checkbox" name="newsletter" value="1">
                                <span class="checkbox__label">Я&nbsp;даю согласие на&nbsp;<a href="/soglasie-na-rassylku">получение рекламных рассылок</a></span>
                            </label>
                            <div class="checkbox">Оставляя текущую заявку, я&nbsp;соглашаюсь, что сайт носит информационный характер и&nbsp;не&nbsp;является публичной офертой.</div>
                            <div class="checkbox"><a href="/politika-obrabotku-personalnyh-dannyh">Политика обработки персональных данных</a></div>
                        </div>
                        <div class="form__message" role="status" aria-live="polite"></div>
                    </form>
                </div>
            </div>
        </div>

        <div class="modal modal--form" id="modal-3">
            <button type="button" class="modal__close">
                <svg aria-hidden="true"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#close"></use></svg>
                <span>Закрыть</span>
            </button>
            <div class="modal__content">
                <div class="modal__body">
                    <div class="modal__title">Обсудить идею</div>
                    <form class="form" method="post" action="index.php?route=common/modal_form/send" novalidate data-modal-form="idea">
                        <input type="hidden" name="form_kind" value="idea">
                        <div class="form__row">
                            <label class="form__element">
                                <input type="text" name="name" class="inputbox" placeholder="Ваше имя*" maxlength="64" autocomplete="name">
                                <span class="error__text"></span>
                            </label>
                            <label class="form__element">
                                <input type="tel" name="phone" class="inputbox" placeholder="+7 (___) ___-__-__*" autocomplete="tel" inputmode="tel">
                                <span class="error__text"></span>
                            </label>
                        </div>
                        <div class="form__row">
                            <label class="form__element">
                                <textarea name="description" class="inputbox" placeholder="Описание идеи"></textarea>
                            </label>
                        </div>
                        <div class="form__row">
                            <button type="submit" class="btn btn--medium">Оставить заявку</button>
                        </div>
                        <div class="form__row form__checkbox">
                            <label class="checkbox">
                                <input type="checkbox" name="consent" value="1">
                                <span class="checkbox__label">Я&nbsp;даю согласие на&nbsp;<a href="/soglasie-na-obrabotku-dannyh">обработку персональных данных</a></span>
                                <span class="error__text"></span>
                            </label>
                            <label class="checkbox">
                                <input type="checkbox" name="newsletter" value="1">
                                <span class="checkbox__label">Я&nbsp;даю согласие на&nbsp;<a href="/soglasie-na-rassylku">получение рекламных рассылок</a></span>
                            </label>
                            <div class="checkbox">Оставляя текущую заявку, я&nbsp;соглашаюсь, что сайт носит информационный характер и&nbsp;не&nbsp;является публичной офертой.</div>
                            <div class="checkbox"><a href="/politika-obrabotku-personalnyh-dannyh">Политика обработки персональных данных</a></div>
                        </div>
                        <div class="form__message" role="status" aria-live="polite"></div>
                    </form>
                </div>
            </div>
        </div>

        <div class="modal modal--form" id="modal-4">
            <button type="button" class="modal__close">
                <svg aria-hidden="true"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#close"></use></svg>
                <span>Закрыть</span>
            </button>
            <div class="modal__content">
                <div class="modal__body">
                    <div class="modal__title">Прислать фото</div>
                    <form class="form" method="post" action="index.php?route=common/modal_form/send" enctype="multipart/form-data" novalidate data-modal-form="photo">
                        <input type="hidden" name="form_kind" value="photo">
                        <div class="form__row">
                            <label class="form__element">
                                <input type="text" name="name" class="inputbox" placeholder="Ваше имя*" maxlength="64" autocomplete="name">
                                <span class="error__text"></span>
                            </label>
                            <label class="form__element">
                                <input type="tel" name="phone" class="inputbox" placeholder="+7 (___) ___-__-__*" autocomplete="tel" inputmode="tel">
                                <span class="error__text"></span>
                            </label>
                        </div>
                        <div class="form__row">
                            <label class="form__element">
                                <textarea name="description" class="inputbox" placeholder="Вставьте ссылки на референсы"></textarea>
                            </label>
                        </div>
                        <div class="form__row">
                            <label class="inputfile">
                                <input type="file" name="photo" accept="image/jpeg,image/png,image/webp">
                                <span class="inputfile__label">
                                    <span>Прикрепить фото</span>
                                    <svg aria-hidden="true"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#download" /></svg>
                                </span>
                            </label>
                            <!--div class="inputfile">
                                <span class="inputfile__label">
                                    <span>Прикрепить фото</span>
                                    <span class="small">Загружено 3 фотографии</span>
                                    <svg aria-hidden="true"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#close" /></svg>
                                </span>
                            </div-->
                        </div>
                        <div class="form__row">
                            <button type="submit" class="btn btn--medium">Оставить заявку</button>
                        </div>
                        <div class="form__row form__checkbox">
                            <label class="checkbox">
                                <input type="checkbox" name="consent" value="1">
                                <span class="checkbox__label">Я&nbsp;даю согласие на&nbsp;<a href="/soglasie-na-obrabotku-dannyh">обработку персональных данных</a></span>
                                <span class="error__text"></span>
                            </label>
                            <label class="checkbox">
                                <input type="checkbox" name="newsletter" value="1">
                                <span class="checkbox__label">Я&nbsp;даю согласие на&nbsp;<a href="/soglasie-na-rassylku">получение рекламных рассылок</a></span>
                            </label>
                            <div class="checkbox">Оставляя текущую заявку, я&nbsp;соглашаюсь, что сайт носит информационный характер и&nbsp;не&nbsp;является публичной офертой.</div>
                            <div class="checkbox"><a href="/politika-obrabotku-personalnyh-dannyh">Политика обработки персональных данных</a></div>
                        </div>
                        <div class="form__message" role="status" aria-live="polite"></div>
                    </form>
                </div>
            </div>
        </div>

        <div class="modal modal--form" id="modal-success">
            <button type="button" class="modal__close">
                <svg aria-hidden="true"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#close"></use></svg>
                <span>Закрыть</span>
            </button>
            <div class="modal__content">
                <div class="modal__body">
                    <div class="modal__title">Спасибо! Заявка принята</div>
                    <div class="modal__text">Мы получили вашу заявку на консультацию. Специалист свяжется с вами в ближайшее время, чтобы обсудить детали.</div>
                    <div class="modal__button">
                        <button type="button" class="btn btn--medium modal-close">Закрыть</button>
                    </div>
                </div>
            </div>
        </div>

       <div class="modal" id="modal-table">
            <button type="button" class="modal__close">
                <svg aria-hidden="true"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#close"></use></svg>
                <span>Закрыть</span>
            </button>
            <div class="modal__content">
                <div class="modal__body">
                    <div class="table table--small table--scroll">
                        <table>
                            <thead>
                                <tr>
                                    <th>Россия</th>
                                    <th>Европа</th>
                                    <th>США</th>
                                    <th>Великобритания</th>
                                    <th>Швейцария</th>
                                    <th>Китай</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>13.00</td>
                                    <td>EU41</td>
                                    <td>1.75</td>
                                    <td>C 1/2</td>
                                    <td>1</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <td>13.20</td>
                                    <td>EU41.5</td>
                                    <td>2</td>
                                    <td>D</td>
                                    <td>1.5</td>
                                    <td>1.5</td>
                                </tr>
                                <tr>
                                    <td>13.40</td>
                                    <td>EU42</td>
                                    <td>2.25</td>
                                    <td>D 1/2</td>
                                    <td>2</td>
                                    <td>2</td>
                                </tr>
                                <tr>
                                    <td>13.55</td>
                                    <td>EU42.5</td>
                                    <td>2.38</td>
                                    <td>E</td>
                                    <td>2.5</td>
                                    <td>2.5</td>
                                </tr>
                                <tr>
                                    <td>13.70</td>
                                    <td>EU43</td>
                                    <td>2.5</td>
                                    <td>E 1/3</td>
                                    <td>3</td>
                                    <td>3</td>
                                </tr>
                                <tr>
                                    <td>13.85</td>
                                    <td>EU43.5</td>
                                    <td>2.75</td>
                                    <td>E 2/3</td>
                                    <td>3.5</td>
                                    <td>3.5</td>
                                </tr>
                                <tr>
                                    <td>14.00</td>
                                    <td>EU44</td>
                                    <td>3</td>
                                    <td>F</td>
                                    <td>4</td>
                                    <td>4</td>
                                </tr>
                                <tr>
                                    <td>14.15</td>
                                    <td>EU44.5</td>
                                    <td>3.12</td>
                                    <td>F 1/3</td>
                                    <td>4.5</td>
                                    <td>4.5</td>
                                </tr>
                                <tr>
                                    <td>14.30</td>
                                    <td>EU45</td>
                                    <td>3.25</td>
                                    <td>F 2/3</td>
                                    <td>5</td>
                                    <td>5</td>
                                </tr>
                                <tr>
                                    <td>14.50</td>
                                    <td>EU45.5</td>
                                    <td>3.5</td>
                                    <td>G</td>
                                    <td>5.5</td>
                                    <td>5.5</td>
                                </tr>
                                <tr>
                                    <td>14.70</td>
                                    <td>EU46</td>
                                    <td>3.75</td>
                                    <td>G 1/3</td>
                                    <td>6</td>
                                    <td>6</td>
                                </tr>
                                <tr>
                                    <td>14.85</td>
                                    <td>EU46.5</td>
                                    <td>3.87</td>
                                    <td>G 2/3</td>
                                    <td>6.5</td>
                                    <td>6.5</td>
                                </tr>
                                <tr>
                                    <td>15.00</td>
                                    <td>EU47</td>
                                    <td>4</td>
                                    <td>H</td>
                                    <td>7</td>
                                    <td>7</td>
                                </tr>
                                <tr>
                                    <td>15.15</td>
                                    <td>EU47.5</td>
                                    <td>4.14</td>
                                    <td>H 1/2</td>
                                    <td>7.5</td>
                                    <td>7.5</td>
                                </tr>
                                <tr>
                                    <td>15.30</td>
                                    <td>EU48</td>
                                    <td>4.25</td>
                                    <td>I</td>
                                    <td>8</td>
                                    <td>8</td>
                                </tr>
                                <tr>
                                    <td>15.45</td>
                                    <td>EU48.5</td>
                                    <td>4:5</td>
                                    <td>I 1/2</td>
                                    <td>8,5</td>
                                    <td>8,5</td>
                                </tr>
                                <tr>
                                    <td>15.60</td>
                                    <td>EU49</td>
                                    <td>4.75</td>
                                    <td>J</td>
                                    <td>9</td>
                                    <td>9</td>
                                </tr>
                                <tr>
                                    <td>15.75</td>
                                    <td>EU49.5</td>
                                    <td>5</td>
                                    <td>J 1/2</td>
                                    <td>9.5</td>
                                    <td>9.5</td>
                                </tr>
                                <tr>
                                    <td>15.90</td>
                                    <td>EU50</td>
                                    <td>5.25</td>
                                    <td>K</td>
                                    <td>10</td>
                                    <td>10</td>
                                </tr>
                                <tr>
                                    <td>16.05</td>
                                    <td>EU50.5</td>
                                    <td>5.5</td>
                                    <td>K 1/3</td>
                                    <td>10.5</td>
                                    <td>10.5</td>
                                </tr>
                                <tr>
                                    <td>16.20</td>
                                    <td>EU51</td>
                                    <td>5.75</td>
                                    <td>K 2/3</td>
                                    <td>11</td>
                                    <td>11</td>
                                </tr>
                                <tr>
                                    <td>16.35</td>
                                    <td>EU51.5</td>
                                    <td>5.87</td>
                                    <td>L 1/3</td>
                                    <td>11.5</td>
                                    <td>11.5</td>
                                </tr>
                                <tr>
                                    <td>16.50</td>
                                    <td>EU52</td>
                                    <td>6</td>
                                    <td>L 2/3</td>
                                    <td>12</td>
                                    <td>12</td>
                                </tr>
                                <tr>
                                    <td>16.70</td>
                                    <td>EU52.5</td>
                                    <td>6.12</td>
                                    <td>M</td>
                                    <td>12.5</td>
                                    <td>12.5</td>
                                </tr>
                                <tr>
                                    <td>16.90</td>
                                    <td>EU53</td>
                                    <td>6.25</td>
                                    <td>M 1/2</td>
                                    <td>13</td>
                                    <td>13</td>
                                </tr>
                                <tr>
                                    <td>17.05</td>
                                    <td>EU53.5</td>
                                    <td>6.5</td>
                                    <td>N</td>
                                    <td>13.5</td>
                                    <td>13.5</td>
                                </tr>
                                <tr>
                                    <td>17.20</td>
                                    <td>EU54</td>
                                    <td>6.75</td>
                                    <td>N 1/3</td>
                                    <td>14</td>
                                    <td>14</td>
                                </tr>
                                <tr>
                                    <td>17.35</td>
                                    <td>EU54.5</td>
                                    <td>7</td>
                                    <td>N 2/3</td>
                                    <td>14.05</td>
                                    <td>14.05</td>
                                </tr>
                                <tr>
                                    <td>17.50</td>
                                    <td>EU55.5</td>
                                    <td>7.25</td>
                                    <td>O</td>
                                    <td>15</td>
                                    <td>15</td>
                                </tr>
                                <tr>
                                    <td>17.65</td>
                                    <td>EU55.5</td>
                                    <td>7.37</td>
                                    <td>O 1/3</td>
                                    <td>15.5</td>
                                    <td>15.5</td>
                                </tr>
                                <tr>
                                    <td>17.80</td>
                                    <td>EU56</td>
                                    <td>7.5</td>
                                    <td>O 2/3</td>
                                    <td>16</td>
                                    <td>16</td>
                                </tr>
                                <tr>
                                    <td>18.00</td>
                                    <td>EU56.5</td>
                                    <td>7.75</td>
                                    <td>P</td>
                                    <td>16.5</td>
                                    <td>16.5</td>
                                </tr>
                                <tr>
                                    <td>18.20</td>
                                    <td>EU57</td>
                                    <td>8</td>
                                    <td>P 1/2</td>
                                    <td>17</td>
                                    <td>17</td>
                                </tr>
                                <tr>
                                    <td>18.35</td>
                                    <td>EU57.5</td>
                                    <td>8.12</td>
                                    <td>Q</td>
                                    <td>17.5</td>
                                    <td>17.5</td>
                                </tr>
                                <tr>
                                    <td>18.50</td>
                                    <td>EU58</td>
                                    <td>8.25</td>
                                    <td>Q 1/3</td>
                                    <td>18</td>
                                    <td>18</td>
                                </tr>
                                <tr>
                                    <td>18.65</td>
                                    <td>EU58.5</td>
                                    <td>8.5</td>
                                    <td>Q 2/3</td>
                                    <td>18.5</td>
                                    <td>18.5</td>
                                </tr>
                                <tr>
                                    <td>18.80</td>
                                    <td>EU59</td>
                                    <td>8.75</td>
                                    <td>R</td>
                                    <td>19</td>
                                    <td>19</td>
                                </tr>
                                <tr>
                                    <td>18.95</td>
                                    <td>EU59.5</td>
                                    <td>8.87</td>
                                    <td>R 1/2</td>
                                    <td>19.5</td>
                                    <td>19.5</td>
                                </tr>
                                <tr>
                                    <td>19.10</td>
                                    <td>EU60</td>
                                    <td>9</td>
                                    <td>S</td>
                                    <td>20</td>
                                    <td>20</td>
                                </tr>
                                <tr>
                                    <td>19.25</td>
                                    <td>EU60.5</td>
                                    <td>9.25</td>
                                    <td>S 1/3</td>
                                    <td>20.5</td>
                                    <td>20.5</td>
                                </tr>
                                <tr>
                                    <td>19.40</td>
                                    <td>EU61</td>
                                    <td>9.5</td>
                                    <td>S 2/3</td>
                                    <td>21</td>
                                    <td>21</td>
                                </tr>
                                <tr>
                                    <td>19.55</td>
                                    <td>EU61.5</td>
                                    <td>9.75</td>
                                    <td>T</td>
                                    <td>21.5</td>
                                    <td>21.5</td>
                                </tr>
                                <tr>
                                    <td>19.70</td>
                                    <td>EU62</td>
                                    <td>10</td>
                                    <td>T 1/2</td>
                                    <td>22</td>
                                    <td>22</td>
                                </tr>
                                <tr>
                                    <td>19.85</td>
                                    <td>EU62.5</td>
                                    <td>10.12</td>
                                    <td>U</td>
                                    <td>22.5</td>
                                    <td>22.5</td>
                                </tr>
                                <tr>
                                    <td>20.00</td>
                                    <td>EU63</td>
                                    <td>10.25</td>
                                    <td>U 1/3</td>
                                    <td>23</td>
                                    <td>23</td>
                                </tr>
                                <tr>
                                    <td>20.20</td>
                                    <td>EU63.5</td>
                                    <td>10.5</td>
                                    <td>U 2/3</td>
                                    <td>23.5</td>
                                    <td>23.5</td>
                                </tr>
                                <tr>
                                    <td>20.40</td>
                                    <td>EU64</td>
                                    <td>10.75</td>
                                    <td>V</td>
                                    <td>24</td>
                                    <td>24</td>
                                </tr>
                                <tr>
                                    <td>20.55</td>
                                    <td>EU64.5</td>
                                    <td>10.87</td>
                                    <td>V 1/2</td>
                                    <td>24.5</td>
                                    <td>24.5</td>
                                </tr>
                                <tr>
                                    <td>20.70</td>
                                    <td>EU65</td>
                                    <td>11</td>
                                    <td>W</td>
                                    <td>25</td>
                                    <td>25</td>
                                </tr>
                                <tr>
                                    <td>20.85</td>
                                    <td>EU65.5</td>
                                    <td>11.25</td>
                                    <td>W 1/3</td>
                                    <td>25.5</td>
                                    <td>25.5</td>
                                </tr>
                                <tr>
                                    <td>21.00</td>
                                    <td>EU66</td>
                                    <td>11.5</td>
                                    <td>W 2/3</td>
                                    <td>26</td>
                                    <td>26</td>
                                </tr>
                                <tr>
                                    <td>21.15</td>
                                    <td>EU66.5</td>
                                    <td>11.62</td>
                                    <td>X</td>
                                    <td>26.5</td>
                                    <td>26.5</td>
                                </tr>
                                <tr>
                                    <td>21.30</td>
                                    <td>EU67</td>
                                    <td>11.75</td>
                                    <td>X 1/3</td>
                                    <td>27</td>
                                    <td>27</td>
                                </tr>
                                <tr>
                                    <td>21.45</td>
                                    <td>EU67.5</td>
                                    <td>12</td>
                                    <td>X 2/3</td>
                                    <td>27.5</td>
                                    <td>27.5</td>
                                </tr>
                                <tr>
                                    <td>21.60</td>
                                    <td>EU68</td>
                                    <td>12.25</td>
                                    <td>Y</td>
                                    <td>28</td>
                                    <td>28</td>
                                </tr>
                                <tr>
                                    <td>21.80</td>
                                    <td>EU68.5</td>
                                    <td>12.37</td>
                                    <td>Z</td>
                                    <td>28.5</td>
                                    <td>28.5</td>
                                </tr>
                                <tr>
                                    <td>22.00</td>
                                    <td>EU69</td>
                                    <td></td>
                                    <td>12.5</td>
                                    <td>29</td>
                                    <td>29</td>
                                </tr>
                                <tr>
                                    <td>22.15</td>
                                    <td>EU69.5</td>
                                    <td></td>
                                    <td>12.75</td>
                                    <td>29.5</td>
                                    <td>29.5</td>
                                </tr>
                                <tr>
                                    <td>22.30</td>
                                    <td>EU70</td>
                                    <td></td>
                                    <td>13</td>
                                    <td>30</td>
                                    <td>30</td>
                                </tr>
                                <tr>
                                    <td>22.45</td>
                                    <td>EU70.5</td>
                                    <td></td>
                                    <td>13.12</td>
                                    <td>30.5</td>
                                    <td>30.5</td>
                                </tr>
                                <tr>
                                    <td>22.60</td>
                                    <td>EU71</td>
                                    <td></td>
                                    <td>13:25</td>
                                    <td>31</td>
                                    <td>31</td>
                                </tr>
                                <tr>
                                    <td>22.80</td>
                                    <td>EU71.5</td>
                                    <td></td>
                                    <td>13.5</td>
                                    <td>31.5</td>
                                    <td>31.5</td>
                                </tr>
                                <tr>
                                    <td>23.00</td>
                                    <td>EU72</td>
                                    <td></td>
                                    <td>13.75</td>
                                    <td>32</td>
                                    <td>32</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div class="favorites-popup" data-product-ids="<?php echo htmlspecialchars($wishlist_product_ids, ENT_QUOTES, 'UTF-8'); ?>">
            <button type="button" class="favorites-popup__close">
                <svg aria-hidden="true"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#close"></use></svg>
                <span>Закрыть</span>
            </button>
            <p>Товар успешно добавлен в&nbsp;избранное, перейти в&nbsp;раздел можно нажав на&nbsp;иконку сердечка в&nbsp;шапке сайта.</p>
            <a href="<?php echo htmlspecialchars($wishlist, ENT_QUOTES, 'UTF-8'); ?>" class="btn btn--small">В&nbsp;избранное</a>
        </div>

        <script src="catalog/view/theme/uvelirmoscow_new/assets_new/js/swiper-bundle.min.js" defer></script>
        <script src="catalog/view/theme/uvelirmoscow_new/assets_new/js/fancybox.umd.js" defer></script>
        <script src="catalog/view/theme/uvelirmoscow_new/assets_new/js/jquery.maskedinput.min.js" defer></script>
        <script src="catalog/view/theme/uvelirmoscow_new/assets_new/js/script.js?ver=13" defer></script>
        <?php foreach ($scripts as $script) { ?><script src="<?php echo $script; ?>" defer></script><?php } ?>
        <script src="catalog/view/theme/uvelirmoscow_new/custom/js/custom.js?ver=20" defer></script>
        <script src="catalog/view/javascript/jivo/jivosite.js"></script>
        <?php if (!in_array('catalog/view/javascript/jivochat/JivoChat.js', $scripts)) { ?><script src="https://code.jivosite.com/script/widget/4MJYfsz8hx" async></script><?php } ?>
    </body>
</html>
