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
        <div class="text">
            <p>Удобные способы получения и&nbsp;оплаты вашего заказа</p>
            <p>Мы&nbsp;делаем процесс получения украшений максимально простым и&nbsp;прозрачным. Выберите самый удобный для вас способ доставки и&nbsp;оплаты.</p>
        </div>

        <div class="delivery-methods">
            <h2>Способы доставки заказа</h2>
            <div class="prices-info dark">
                <img src="<?php echo $asset; ?>images/icons/info-square.svg" alt="" width="48" height="48" loading="lazy">
                <span>Сроки и&nbsp;стоимость доставки согласовываются индивидуально при оформлении заказа и&nbsp;фиксируются в&nbsp;договоре. Указанные способы доставки доступны после полной оплаты согласно условиям договора.</span>
            </div>
            <div class="delivery-methods__list">
                <div class="delivery-method">
                    <img class="delivery-method__icon" src="<?php echo $asset; ?>images/icons/icon-bag.svg" alt="" width="48" height="48">
                    <h3>Самовывоз из&nbsp;офиса в&nbsp;Москве (м. Кузнецкий мост)</h3>
                    <div class="delivery-method__text">
                        <p>Адрес: г. Москва, ул. Кузнецкий мост, дом&nbsp;7, строение&nbsp;3, этаж&nbsp;2 (менее 5&nbsp;минут от&nbsp;метро Кузнецкий мост).</p>
                        <p>Часы работы: с&nbsp;11:00 до&nbsp;20:00&nbsp;в рабочие дни.</p>
                    </div>
                </div>
                <div class="delivery-method">
                    <img class="delivery-method__icon" src="<?php echo $asset; ?>images/icons/icon-truck.svg" alt="" width="48" height="48">
                    <h3>Доставка курьером по&nbsp;Москве и&nbsp;Санкт-Петербургу</h3>
                    <div class="delivery-method__text">
                        <p>Получите заказ уже на&nbsp;следующий день. Перед выездом курьера мы&nbsp;обязательно свяжемся с&nbsp;вами и&nbsp;подтвердим время доставки.</p>
                    </div>
                </div>
                <div class="delivery-method">
                    <img class="delivery-method__icon" src="<?php echo $asset; ?>images/icons/icon-plane.svg" alt="" width="48" height="48">
                    <h3>Доставка по&nbsp;всей России</h3>
                    <div class="delivery-method__text">
                        <p>Доставка в&nbsp;регионы осуществляется лицензированными транспортными компаниями с&nbsp;полным отслеживанием заказа.</p>
                    </div>
                </div>
                <div class="delivery-method">
                    <img class="delivery-method__icon" src="<?php echo $asset; ?>images/icons/icon-planet.svg" alt="" width="48" height="48">
                    <h3>Доставка по&nbsp;всему миру</h3>
                    <div class="delivery-method__text">
                        <p>Мы&nbsp;отправляем наши украшения в&nbsp;любую точку мира надёжными международными службами доставки.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="map-section">
        <h2>Мы&nbsp;успешно доставляем наши украшения по&nbsp;всему миру!</h2>
        <div class="map">
            <picture class="map__image">
                <img src="<?php echo $asset; ?>images/content/map.svg" alt="" width="750" height="435" loading="lazy">
            </picture>
            <div class="map__description">
                <h3>Мы&nbsp;уже работали с&nbsp;клиентами из&nbsp;этих городов:</h3>
                <ul class="map__list">
                    <li>Москва</li>
                    <li>Санкт-Петербург</li>
                    <li>Новосибирск</li>
                    <li>Казань</li>
                    <li>Нижний Новгород</li>
                    <li>Челябинск</li>
                    <li>Омск</li>
                    <li>Ростов-на-Дону</li>
                    <li>Уфа</li>
                    <li>Пермь</li>
                    <li>Воронеж</li>
                    <li>Волгоград</li>
                    <li>Саратов</li>
                    <li>Тюмень</li>
                    <li>Тольятти</li>
                    <li>Барнаул</li>
                    <li>Ульяновск</li>
                    <li>Иркутск</li>
                    <li>Ярославль</li>
                    <li>Владивосток</li>
                    <li>Махачкала</li>
                    <li>Оренбург</li>
                    <li>Кемерово</li>
                    <li>Новокузнецк</li>
                    <li>Астрахань</li>
                    <li>Пенза</li>
                    <li>Липецк</li>
                    <li>Балашиха</li>
                    <li>Курск</li>
                    <li>Сочи</li>
                </ul>
            </div>
        </div>
        <div class="h3">А&nbsp;также:</div>
        <p>Беларусь (Минск), Казахстан (Алматы, Астана), Армения (Ереван), Киргизия (Бишкек), Узбекистан (Ташкент), и&nbsp;другие страны мира&nbsp;&mdash; от&nbsp;Европы до&nbsp;Азии и&nbsp;Америки.</p>
        <div class="buttons">
            <a href="/pokupatelyam/dostavka-i-oplata" class="btn btn--big">Подробнее о&nbsp;доставке и&nbsp;оплате</a>
        </div>
    </section>

    <section class="delivery-individual-section">
        <h2>Индивидуальные способы доставки</h2>
        <div class="delivery-individual">
            <picture class="delivery-individual__image">
                <img src="<?php echo $asset; ?>images/content/static/detail-1.webp" alt="" width="1140" height="640" loading="lazy">
            </picture>
            <div class="delivery-individual__info">
                <div class="delivery-individual__title">Уточнить условия индивидуальной доставки можно у&nbsp;нашего менеджера. Окончательная стоимость и&nbsp;сроки доставки рассчитываются индивидуально и&nbsp;подтверждаются в&nbsp;договоре.</div>
                <div class="delivery-individual__text">
                    <?php if ($header_contacts_phone) { ?>
                    <p>
					<span>Телефон в&nbsp;Москве:</span>
					<span><strong><a href="<?php echo htmlspecialchars($header_contacts_phone_href, ENT_QUOTES, 'UTF-8'); ?>"><?php echo htmlspecialchars($header_contacts_phone, ENT_QUOTES, 'UTF-8'); ?></a></strong></span>
					</p>
                    <?php } ?>
                    <?php $work_time = array_filter(array(trim(strip_tags($header_contacts_work_weekdays)), trim(strip_tags($header_contacts_work_weekend)))); ?>
                    <?php if ($work_time) { ?><p>
					<span>Время работы:</span>
					<span><strong><?php echo htmlspecialchars(implode(', ', $work_time), ENT_QUOTES, 'UTF-8'); ?></strong></span>
					</p><?php } ?>
                </div>
            </div>
        </div>
    </section>

    <section class="payment-methods-section">
        <h2>Способы оплаты заказа</h2>
        <div class="text">При оплате заказов мы&nbsp;не&nbsp;берём дополнительных процентов</div>
        <div class="prices-info dark">
            <img src="<?php echo $asset; ?>images/icons/info-square.svg" alt="" width="48" height="48" loading="lazy">
            <span>Важно: Все реквизиты, указанные на&nbsp;этой странице, носят информационный характер и&nbsp;не&nbsp;являются основанием для оплаты до&nbsp;заключения договора. Оплата производится только после согласования всех деталей заказа, подписания договора и&nbsp;выставления счёта. Окончательная стоимость фиксируется в&nbsp;договоре и&nbsp;может отличаться от&nbsp;примерной цены на&nbsp;сайте.</span>
        </div>
        <div class="payment-methods">
            <div class="payment-method">
                <div class="payment-method__title">Способ &#8470;&nbsp;1: Оплата банковской картой</div>
                <div class="payment-method__item">
                    <div class="payment-method__content">
                        <div class="payment-method__subtitle">Оплата банковской картой</div>
                        <p>Реквизиты (заполнены корректно из&nbsp;текущей страницы):</p>
                        <ul>
                            <li>Номер счёта: 40802810002620001078</li>
                            <li>Валюта: RUB</li>
                            <li>Название: ХОМИЧ ОЛЕГ ДМИТРИЕВИЧ (ИП)</li>
                            <li>ИНН: 490900906710</li>
                            <li>Банк: АО&nbsp;&laquo;АЛЬФА-БАНК&raquo;</li>
                            <li>БИК: 044525593</li>
                            <li>Кор. счёт: 30101810200000000593</li>
                            <li>Назначение платежа: оплата за&nbsp;заказ (&#8470;заказа)</li>
                        </ul>
                    </div>
                    <div class="payment-method__image">
                        <img src="<?php echo $asset; ?>images/icons/card-tick.svg" alt="" width="50" height="50">
                    </div>
                </div>
            </div>
            <div class="payment-method">
                <div class="payment-method__title">Способ &#8470;&nbsp;2: Онлайн-кошелёк</div>
                <div class="payment-method__item">
                    <div class="payment-method__content">
                        <div class="payment-method__subtitle">Онлайн-кошелёк</div>
                        <p>Реквизиты (заполнены корректно из&nbsp;текущей страницы):</p>
                        <ul>
                            <li>Номер счёта: 410011643488091</li>
                            <li>Назначение платежа: оплата за&nbsp;заказ (&#8470;заказа)</li>
                        </ul>
                    </div>
                    <div class="payment-method__image">
                        <img src="<?php echo $asset; ?>images/icons/empty-wallet-tick.svg" alt="" width="50" height="50">
                    </div>
                </div>
            </div>
            <div class="payment-method">
                <div class="payment-method__title">Способ &#8470;&nbsp;3: Перевод с&nbsp;карты на&nbsp;карту</div>
                <div class="payment-method__items">
                    <div class="payment-method__item">
                        <div class="payment-method__content">
                            <div class="payment-method__subtitle">Альфа-Банк:</div>
                            <p>Реквизиты (заполнены корректно из&nbsp;текущей страницы):</p>
                            <ul>
                                <li>Номер счёта: 40817810104170040160</li>
                                <li>Получатель: ХОМИЧ ОЛЕГ ДМИТРИЕВИЧ (ИП)</li>
                                <li>ИНН банка получателя: 490900906710</li>
                                <li>Кор. счёт: 30101810200000000593</li>
                                <li>Банк: АО&nbsp;&laquo;АЛЬФА-БАНК&raquo;, г. Москва</li>
                                <li>КПП банка получателя: 770801001</li>
                                <li>БИК: 044525593</li>
                                <li>Назначение платежа: оплата за&nbsp;заказ (&#8470;заказа)</li>
                            </ul>
                        </div>
                        <div class="payment-method__image">
                            <img src="<?php echo $asset; ?>images/content/alfabank.svg" alt="" width="180" height="45" loading="lazy">
                        </div>
                    </div>
                    <div class="payment-method__item">
                        <div class="payment-method__content">
                            <div class="payment-method__subtitle">Сбербанк:</div>
                            <p>Реквизиты (заполнены корректно из&nbsp;текущей страницы):</p>
                            <ul>
                                <li>Номер счёта: 40817810038090627687</li>
                                <li>Получатель: ХОМИЧ ОЛЕГ ДМИТРИЕВИЧ (ИП)</li>
                                <li>Банк: ПАО СБЕРБАНК</li>
                                <li>БИК: 044525225</li>
                                <li>Кор. счёт: 30101810400000000225</li>
                                <li>ИНН: 7707083893</li>
                                <li>КПП: 773643001</li>
                                <li>SWIFT-код: SABRRUMM</li>
                                <li>Назначение платежа: оплата за&nbsp;заказ (&#8470;заказа)</li>
                            </ul>
                        </div>
                        <div class="payment-method__image">
                            <img src="<?php echo $asset; ?>images/content/sberbank.svg" alt="" width="183" height="47" loading="lazy">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="consultation-section">
        <h2>Остались вопросы по&nbsp;доставке или оплате?</h2>
        <div class="text">Наши менеджеры с&nbsp;радостью ответят на&nbsp;все ваши вопросы и&nbsp;помогут оформить заказ.</div>
        <div class="consultation__buttons">
            <button type="button" class="btn btn--big" data-modal="#modal-1">Заказать звонок</button>
        </div>
        <div class="consultation__contacts">
            <?php if ($header_contacts_phone) { ?>
            <a href="<?php echo htmlspecialchars($header_contacts_phone_href, ENT_QUOTES, 'UTF-8'); ?>" class="consultation__phone">
                <svg aria-hidden="true"><use href="<?php echo $asset; ?>images/icons/icons.svg#phone"></use></svg>
                <span><?php echo htmlspecialchars($header_contacts_phone, ENT_QUOTES, 'UTF-8'); ?></span>
            </a>
            <?php } ?>
            <div class="consultation__time">Время работы: <strong><?php echo htmlspecialchars(implode(', ', $work_time), ENT_QUOTES, 'UTF-8'); ?></strong></div>
        </div>
    </section>

    <?php echo $information_faq_html; ?>
</main>
<?php echo $footer; ?>
