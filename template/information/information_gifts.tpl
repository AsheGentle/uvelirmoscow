<?php echo $header; ?>
<?php $asset = 'catalog/view/theme/uvelirmoscow_new/assets_new/'; ?>
<main>
            <section class="inner-section">
                <ul class="breadcrumbs" itemscope itemtype="https://schema.org/BreadcrumbList">
                    <?php $breadcrumb_count = count($breadcrumbs); ?>
                    <?php foreach ($breadcrumbs as $index => $breadcrumb) { ?>
                    <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                        <?php if ($index + 1 < $breadcrumb_count) { ?>
                        <a href="<?php echo htmlspecialchars($breadcrumb['href'], ENT_QUOTES, 'UTF-8'); ?>" class="breadcrumbs__link" itemprop="item">
                            <span itemprop="name"><?php echo htmlspecialchars($breadcrumb['text'], ENT_QUOTES, 'UTF-8'); ?></span>
                            <meta itemprop="position" content="<?php echo $index + 1; ?>">
                        </a>
                        <?php } else { ?>
                        <span class="breadcrumbs__link">
                            <span itemprop="name"><?php echo htmlspecialchars($breadcrumb['text'], ENT_QUOTES, 'UTF-8'); ?></span>
                            <meta itemprop="position" content="<?php echo $index + 1; ?>">
                        </span>
                        <?php } ?>
                    </li>
                    <?php } ?>
                </ul>
                <h1><?php echo htmlspecialchars($heading_title, ENT_QUOTES, 'UTF-8'); ?></h1>
                <div class="text">Подарите близким возможность создать украшение мечты. Подарочная карта &laquo;Ювелиров Москвы&raquo;&nbsp;&mdash; это не&nbsp;просто подарок, а&nbsp;целая история: от&nbsp;эскиза до&nbsp;готового изделия.</div>

                <div class="inner-block">
                    <h2>Что такое подарочная карта &laquo;Ювелиров Москвы&raquo;</h2>
                    <div class="text fix-width">Подарочная карта нашей студии&nbsp;&mdash; это необыкновенный и&nbsp;незабываемый подарок. Только представьте, какие безграничные творческие возможности предоставляет изготовление украшений на&nbsp;заказ!</div>
                    <div class="inner-picture inner-picture--left">
                        <picture class="inner-picture__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-24.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <p>Процесс обсуждения будущего украшения&nbsp;&mdash; увлекательное действие, которое запомнится неподдельными эмоциями ожидания чуда.</p>
                            <h3>На&nbsp;что можно потратить карту:</h3>
                            <ul class="inner-list">
                                <li>Изготовление ювелирного украшения по&nbsp;вашему эскизу или из&nbsp;каталога</li>
                                <li>Покупка готового изделия из&nbsp;нашего ассортимента</li>
                                <li>Ремонт ювелирных изделий (по&nbsp;желанию владельца карты)</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Дизайн и&nbsp;номиналы карт</h2>
                    <div class="inner-picture">
                        <div class="inner-pictures inner-picture__image swiper">
                            <div class="swiper-wrapper">
                                <picture class="inner-picture__image-item swiper-slide">
                                    <img src="<?php echo $asset; ?>images/content/static/detail-25.webp" alt="" width="1010" height="640" loading="lazy">
                                </picture>
                                <picture class="inner-picture__image-item swiper-slide">
                                    <img src="<?php echo $asset; ?>images/content/static/detail-26.webp" alt="" width="1010" height="640" loading="lazy">
                                </picture>
                                <picture class="inner-picture__image-item swiper-slide">
                                    <img src="<?php echo $asset; ?>images/content/static/detail-27.webp" alt="" width="1010" height="640" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="inner-picture__info">
                            <p>Карты выполнены в&nbsp;стилистике студии, возможно именное оформление (обсуждается индивидуально)</p>
                            <h3>Номиналы карт:</h3>
                            <ul class="small">
                                <li>25&nbsp;000&nbsp;руб.</li>
                                <li>50&nbsp;000&nbsp;руб.</li>
                                <li>100&nbsp;000&nbsp;руб.</li>
                                <li>Любая сумма</li>
                            </ul>
                            <p>Специальное предложение&nbsp;&mdash; скидка&nbsp;10% (при наличии акции)</p>
                        </div>

                            <div class="inner-pictures__buttons swiper-buttons">
                                <div class="inner-pictures-prev swiper-button-prev"></div>
                                <div class="inner-pictures-pagination swiper-pagination"></div>
                                <div class="inner-pictures-next swiper-button-next"></div>
                            </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Как приобрести подарочную карту</h2>
                    <div class="text fix-width">Мы&nbsp;предлагаем два способа покупки подарочной карты:</div>
                    <div class="inner-picture inner-picture--left">
                        <picture class="inner-picture__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-11.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <h3>Лично в&nbsp;студии:</h3>
                            <ul class="small">
                                <li>Адрес: г. Москва, ул. Кузнецкий мост, дом&nbsp;7, строение&nbsp;3, этаж&nbsp;2 (менее 5&nbsp;минут от&nbsp;метро Кузнецкий мост)</li>
                                <li>Часы работы: <?php echo htmlspecialchars(trim(strip_tags($header_contacts_work_weekdays)), ENT_QUOTES, 'UTF-8'); ?> | <?php echo htmlspecialchars(trim(strip_tags($header_contacts_work_weekend)), ENT_QUOTES, 'UTF-8'); ?></li>
                                <li>Телефон для записи: <?php if ($header_contacts_phone) { ?><strong><a href="<?php echo htmlspecialchars($header_contacts_phone_href, ENT_QUOTES, 'UTF-8'); ?>"><?php echo htmlspecialchars($header_contacts_phone, ENT_QUOTES, 'UTF-8'); ?></a></strong><?php } ?></li>
                                <li>Условия: Рекомендуем предварительно записаться, чтобы мастер был готов вас принять.</li>
                                <li>Парковка: Бесплатная для гостей студии.</li>
                            </ul>
                        </div>
                    </div>

                    <div class="inner-picture">
                        <picture class="inner-picture__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-16.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <h3>Онлайн-заявка:</h3>
                            <ul class="small">
                                <li>Оставьте заявку на&nbsp;сайте или позвоните нам.</li>
                                <li>Мы&nbsp;свяжемся с&nbsp;вами, уточним детали и&nbsp;оформим заказ.</li>
                                <li>Карту можно будет забрать в&nbsp;студии или получить с&nbsp;курьером (по&nbsp;согласованию).</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>

            <section class="text-section big">
                <h2>Правила использования подарочной карты</h2>
                <p>Пожалуйста, ознакомьтесь с&nbsp;основными правилами использования карты:</p>
                <ol>
                    <li>Карта может быть использована однократно для оплаты ювелирных изделий на&nbsp;сумму, не&nbsp;превышающую номинал карты.</li>
                    <li>Если стоимость выбранных изделий превышает номинал карты, возможна доплата наличными или банковской картой. Если сумма меньше номинала&nbsp;&mdash; остаток не&nbsp;возвращается.</li>
                    <li>Карта действует 12&nbsp;месяцев с&nbsp;момента приобретения.</li>
                    <li>Карта предъявляется владельцем в&nbsp;студии по&nbsp;адресу: Кузнецкий мост, д.&nbsp;7, стр.&nbsp;3. При использовании карта изымается, её&nbsp;индивидуальный номер становится недействительным.</li>
                    <li>В&nbsp;случае утери, хищения или порчи карты восстановление и&nbsp;блокировка не&nbsp;производятся, денежные средства не&nbsp;возвращаются.</li>
                    <li>Карта обмену и&nbsp;возврату не&nbsp;подлежит. Нельзя использовать для обналичивания денежных средств.</li>
                    <li>При покупке и&nbsp;использовании карты вы&nbsp;автоматически соглашаетесь с&nbsp;данными правилами.</li>
                </ol>
				<p><a href="/pokupatelyam/pravila-podarochnyh-kart">Правила использования подарочных карт</a></p>
            </section>

            <section class="consultation-section">
                <div class="consultation-section__wrap">
                    <div class="consultation-section__description">
                        <h2>Заявка на&nbsp;покупку подарочной карты</h2>
                        <div class="text">Мы&nbsp;свяжемся с&nbsp;вами и&nbsp;поможем выбрать и&nbsp;оформить карту</div>
                    </div>
                    <form class="consultation-section__form form">
                        <div class="form__row">
                            <label class="form__element">
                                <input type="text" class="inputbox" placeholder="Ваше имя*" required>
                            </label>
                            <label class="form__element">
                                <input type="text" class="inputbox inputbox-phone" placeholder="+7 (___)___-__-__*" required>
                            </label>
                        </div>
                        <div class="form__row">
                            <label class="form__element">
                                <select class="inputbox">
                                    <option value="" selected disabled>Желаемый номинал</option>
                                    <option value="1">3000</option>
                                    <option value="2">5000</option>
                                    <option value="3">10000</option>
                                </select>
                            </label>
                        </div>
                        <div class="form__row">
                            <div class="form__label">Именная карта</div>
                            <div class="form__radios">
                                <label class="radiobox">
                                    <input type="radio" name="names" value="yes" checked>
                                    <span class="radiobox__label">Да</span>
                                </label>
                                <label class="radiobox">
                                    <input type="radio" name="names" value="no">
                                    <span class="radiobox__label">Нет</span>
                                </label>
                            </div>
                        </div>
                        <div class="form__row">
                            <div class="form__label">Способ получения</div>
                            <div class="form__radios">
                                <label class="radiobox">
                                    <input type="radio" name="delivery" value="office" checked>
                                    <span class="radiobox__label">В&nbsp;студии</span>
                                </label>
                                <label class="radiobox">
                                    <input type="radio" name="delivery" value="delivery">
                                    <span class="radiobox__label">С&nbsp;доставкой</span>
                                </label>
                            </div>
                        </div>
                        <div class="form__row">
                            <button type="submit" class="btn btn--medium">Оставить заявку</button>
                        </div>
                        <div class="form__row form__checkbox">
                            <label class="checkbox">
                                <input type="checkbox" required>
                                <span class="checkbox__label">Я&nbsp;даю согласие на&nbsp;<a href="/soglasie-na-obrabotku-dannyh">обработку персональных данных</a></span>
                            </label>
                            <label class="checkbox">
                                <input type="checkbox" required>
                                <span class="checkbox__label">Я&nbsp;даю согласие на&nbsp;<a href="/soglasie-na-rassylku">получение рекламных рассылок</a></span>
                            </label>
                            <div class="checkbox">Оставляя текущую заявку, я&nbsp;соглашаюсь, что сайт носит информационный характер и&nbsp;не&nbsp;является публичной офертой.</div>
                            <div class="checkbox"><a href="/politika-obrabotku-personalnyh-dannyh">Политика обработки персональных данных</a></div>
                        </div>
                    </form>
                </div>
            </section>

            <?php echo $information_faq_html; ?>
        </main>
<?php echo $footer; ?>
