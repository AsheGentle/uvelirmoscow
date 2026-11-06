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
                <div class="text">Юридическая информация для оформления документов и&nbsp;оплаты. Данные актуальны для бухгалтерии, юридических лиц и&nbsp;индивидуальных предпринимателей.</div>

                <div class="inner-block">
                    <h2>Реквизиты индивидуального предпринимателя</h2>
                    <div class="text">Ниже представлены полные реквизиты для оформления договоров, счетов и&nbsp;бухгалтерских документов.</div>
                    <div class="payment-methods">
                        <div class="payment-method full">
                            <div class="payment-method__title">Основные реквизиты ИП&nbsp;Хомич Олег Дмитриевич:</div>
                            <div class="payment-method__item">
                                <div class="payment-method__content">
                                    <ul>
                                        <li>Полное наименование: ХОМИЧ ОЛЕГ ДМИТРИЕВИЧ (ИП)</li>
                                        <li>Дата регистрации: 05.05.2004</li>
                                        <li>ИНН: 490900906710</li>
                                        <li>КПП: (для&nbsp;ИП не&nbsp;присваивается)</li>
                                        <li>Код НО: 7723</li>
                                        <li>Банк: АО&nbsp;&laquo;АЛЬФА-БАНК&raquo;, г. Москва</li>
                                        <li>БИК: 44525593</li>
                                        <li>Корреспондентский счёт: 30101810200000000593</li>
                                        <li>Расчётный счёт: 40802810002620001078</li>
                                        <li>Юридический адрес: г. Москва, ул. Кузнецкий мост, дом&nbsp;7, строение&nbsp;3, этаж 2</li>
                                        <li>Фактический адрес: г. Москва, ул. Кузнецкий мост, дом&nbsp;7, строение&nbsp;3, этаж 2</li>
                                        <li>Руководитель: Хомич Олег Дмитриевич</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="payment-method">
                            <div class="payment-method__title">Реквизиты для перевода с&nbsp;карты на&nbsp;карту:</div>
                            <div class="payment-method__items">
                                <div class="payment-method__item">
                                    <div class="payment-method__content">
                                        <div class="payment-method__subtitle">Альфа-Банк:</div>
                                        <p>Реквизиты (заполнены корректно из&nbsp;текущей страницы):</p>
                                        <ul>
                                            <li>Номер счёта: 40817810104170040160</li>
                                            <li>БИК: 44525593</li>
                                            <li>Кор. счёт: 30101810200000000593</li>
                                            <li>КПП банка получателя: 770801001</li>
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
                                            <li>БИК: 44525225</li>
                                            <li>Кор. счёт: 30101810400000000225</li>
                                            <li>ИНН: 7707083893</li>
                                            <li>КПП банка получателя: 773643001</li>
                                            <li>SWIFT-код: SABRRUMM</li>
                                        </ul>
                                    </div>
                                    <div class="payment-method__image">
                                        <img src="<?php echo $asset; ?>images/content/sberbank.svg" alt="" width="183" height="47" loading="lazy">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="contacts-map-section">
                <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A6f7ce23971ee56e1fa1aef8eda263835efd7cd5166a010141cc41b247884f650&amp;width=100%25&amp;height=100%25&amp;lang=ru_RU&amp;scroll=false"></script>
                <div class="contacts-map">
                    <h3>Юридический и&nbsp;фактический адрес</h3>
                    <div class="contacts-map__item">
                        <img src="<?php echo $asset; ?>images/icons/icon-location.svg" alt="" width="48" height="48" loading="lazy">
                        <span>Юридический адрес: г. Москва, ул. Кузнецкий мост, дом&nbsp;7, строение&nbsp;3, этаж 2</span>
                    </div>
                    <div class="contacts-map__item">
                        <img src="<?php echo $asset; ?>images/icons/icon-location.svg" alt="" width="48" height="48" loading="lazy">
                        <span>Фактический адрес (студия): г. Москва, ул. Кузнецкий мост, дом&nbsp;7, строение&nbsp;3, этаж 2</span>
                    </div>
                    <div class="contacts-map__item">
                        <img src="<?php echo $asset; ?>images/icons/icon-metro.svg" alt="" width="48" height="48" loading="lazy">
                        <span>Станция метро: Охотный ряд или Кузнецкий мост</span>
                    </div>
                    <div class="contacts-map__item">
                        <span>Ориентир: Здание напротив центрального входа в&nbsp;ЦУМ, вход в&nbsp;арку с&nbsp;улицы Неглинная</span>
                    </div>
                </div>
            </section>

            <section class="inner-section">
                <h2>Документы для скачивания</h2>
                <div class="text">Вы&nbsp;можете скачать копии документов для бухгалтерии или юридического отдела.</div>
                <div class="inner-downloads">
                    <div class="inner-download">
                        <div class="h3">Свидетельство о&nbsp;государственной регистрации (ОГРНИП)</div>
                        <?php if (!empty($information_documents['ogrnip'])) { ?><a href="<?php echo htmlspecialchars($information_documents['ogrnip'], ENT_QUOTES, 'UTF-8'); ?>" class="btn btn--medium" download>Скачать PDF</a><?php } ?>
                    </div>
                    <div class="inner-download">
                        <div class="h3">Свидетельство о&nbsp;постановке на&nbsp;учёт в&nbsp;налоговом органе (ИНН)</div>
                        <?php if (!empty($information_documents['inn'])) { ?><a href="<?php echo htmlspecialchars($information_documents['inn'], ENT_QUOTES, 'UTF-8'); ?>" class="btn btn--medium" download>Скачать PDF</a><?php } ?>
                    </div>
                    <div class="inner-download">
                        <div class="h3">Выписка из&nbsp;ЕГРИП (актуальная)</div>
                        <?php if (!empty($information_documents['egrip'])) { ?><a href="<?php echo htmlspecialchars($information_documents['egrip'], ENT_QUOTES, 'UTF-8'); ?>" class="btn btn--medium" download>Скачать PDF</a><?php } ?>
                    </div>
                    <div class="inner-download">
                        <div class="h3">Уведомление о&nbsp;постановке на&nbsp;учёт в&nbsp;ФПП (для ИП)</div>
                        <?php if (!empty($information_documents['fpp'])) { ?><a href="<?php echo htmlspecialchars($information_documents['fpp'], ENT_QUOTES, 'UTF-8'); ?>" class="btn btn--medium" download>Скачать PDF</a><?php } ?>
                    </div>
                    <div class="inner-download">
                        <div class="h3">Реквизиты в&nbsp;формате Word</div>
                        <?php if (!empty($information_documents['details'])) { ?><a href="<?php echo htmlspecialchars($information_documents['details'], ENT_QUOTES, 'UTF-8'); ?>" class="btn btn--medium" download>Скачать DOCX</a><?php } ?>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Как оплатить по&nbsp;счёту</h2>
                    <div class="text">Пошаговая инструкция:</div>

                    <div class="inner-extras-4 dark counter rows">
                        <div class="inner-extra">
                            <div class="inner-extra__description">
                                <p>Получите счёт на&nbsp;оплату от&nbsp;нашего менеджера (счёт формируется после согласования заказа).</p>
                            </div>
                        </div>
                        <div class="inner-extra">
                            <div class="inner-extra__description">
                                <p>Переведите сумму по&nbsp;указанным реквизитам (расчётный счёт, ИНН, БИК).</p>
                            </div>
                        </div>
                        <div class="inner-extra">
                            <div class="inner-extra__description">
                                <p>В&nbsp;назначении платежа укажите номер заказа (например, &laquo;Оплата заказа &#8470;&nbsp;12345&raquo;).</p>
                            </div>
                        </div>
                        <div class="inner-extra">
                            <div class="inner-extra__description">
                                <p>После поступления средств менеджер подтверждает оплату и&nbsp;запускает заказ в&nbsp;работу.</p>
                            </div>
                        </div>
                    </div>
                    <div class="text">Если вы&nbsp;платите с&nbsp;карты физического лица или через банк-клиент, пришлите копию платёжного поручения нашему менеджеру для идентификации платежа.</div>
                </div>

                <div class="inner-block">
                    <h2>Контакты для связи</h2>
                    <div class="text">Если у&nbsp;вас возникли вопросы по&nbsp;оплате или реквизитам, свяжитесь с&nbsp;нами.</div>
                    <div class="inner-extras-4 dark rows">
                        <div class="inner-extra">
                            <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-phone.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-extra__description">
                                <div class="inner-extra__sup">Телефон:</div>
                                <?php if ($header_contacts_phone) { ?><div class="h3"><a href="<?php echo htmlspecialchars($header_contacts_phone_href, ENT_QUOTES, 'UTF-8'); ?>"><?php echo htmlspecialchars($header_contacts_phone, ENT_QUOTES, 'UTF-8'); ?></a></div><?php } ?>
                            </div>
                        </div>
                        <div class="inner-extra">
                            <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-email.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-extra__description">
                                <div class="inner-extra__sup">Email:</div>
                                <?php if ($header_contacts_email) { ?><div class="h3"><a href="mailto:<?php echo htmlspecialchars($header_contacts_email, ENT_QUOTES, 'UTF-8'); ?>"><?php echo htmlspecialchars($header_contacts_email, ENT_QUOTES, 'UTF-8'); ?></a></div><?php } ?>
                            </div>
                        </div>
                        <div class="inner-extra">
                            <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-messages.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-extra__description">
                                <div class="inner-extra__sup">Мессенджеры:</div>
                                <div class="socials">
                                    <?php foreach ($header_contacts_socials as $social) { ?>
                                    <a href="<?php echo htmlspecialchars($social['link'], ENT_QUOTES, 'UTF-8'); ?>" target="_blank" rel="noopener noreferrer" class="socials__item">
                                        <img src="<?php echo htmlspecialchars($social['icon'], ENT_QUOTES, 'UTF-8'); ?>" alt="" width="30" height="30" loading="lazy">
                                    </a>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                        <div class="inner-extra">
                            <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-location.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-extra__description">
                                <div class="inner-extra__sup">Адрес студии:</div>
                                <div class="h3">г. Москва, ул. Кузнецкий мост, дом&nbsp;7, строение&nbsp;3, этаж 2</div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <?php echo $information_faq_html; ?>
        </main>
<?php echo $footer; ?>
