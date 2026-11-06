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
                <div class="text">Профессиональная геммологическая экспертиза бриллиантов и&nbsp;других драгоценных камней. Подтверждение подлинности, оценка качества огранки, цвета, чистоты. Современное оборудование, сертифицированное в&nbsp;РФ. Результат&nbsp;&mdash; официальное заключение.</div>

                <div class="inner-block">
                    <h2>Экспресс-проверка подлинности бриллиантов за&nbsp;5&nbsp;минут</h2>
                    <div class="text fix-width">Мы&nbsp;определяем подлинность бриллиантов в&nbsp;изделии и&nbsp;без на&nbsp;новом высокоточном оборудовании ADI&nbsp;в вашем присутствии. С&nbsp;выдачей подтверждения в&nbsp;виде заключения. Аппарат сертифицирован в&nbsp;РФ и&nbsp;внесён в&nbsp;список рекомендованного оборудования Международными организациями продавцов бриллиантов. Используется в&nbsp;том числе на&nbsp;Алмазных биржах.</div>
                    <div class="inner-picture inner-picture--left">
                        <picture class="inner-picture__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-21.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <p>Проверяем подлинность бриллиантов на&nbsp;высокоточном приборе ADI&nbsp;&mdash; прямо в&nbsp;вашем присутствии. Можно проверить камень как в&nbsp;изделии, так и&nbsp;отдельно от&nbsp;него. По&nbsp;результатам выдаём заключение. Прибор сертифицирован в&nbsp;РФ и&nbsp;входит в&nbsp;перечень рекомендованного оборудования международных организаций продавцов бриллиантов. Используется на&nbsp;алмазных биржах.</p>
                            <ul class="inner-list">
                                <li>Стоимость дизайна может быть включена в&nbsp;стоимость изготовления украшения (обсуждается индивидуально).</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Что мы&nbsp;проверяем</h2>
                    <div class="text">В&nbsp;ходе экспертизы мы&nbsp;оцениваем ключевые характеристики камня:</div>
                    <div class="inner-wrap">
                        <div class="inner-wrap__description">
                            <ul class="inner-list image small">
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-hammer.svg" alt="" width="32" height="32">
                                    <span>
                                        <span class="inner-list__title">Подлинность</span>
                                        Подтверждение того, что камень является природным бриллиантом, а&nbsp;не&nbsp;синтетическим аналогом или имитацией.</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-diamond.svg" alt="" width="32" height="32">
                                    <span>
                                        <span class="inner-list__title">Качество огранки</span>
                                        Оценка пропорций, симметрии и&nbsp;полировки, влияющих на&nbsp;блеск и&nbsp;игру света.</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-colors.svg" alt="" width="32" height="32">
                                    <span>
                                        <span class="inner-list__title">Цвет</span>
                                        Определение цветовой группы по&nbsp;шкале GIA (от&nbsp;D до&nbsp;Z).</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-magicpen.svg" alt="" width="32" height="32">
                                    <span>
                                        <span class="inner-list__title">Чистота</span>
                                        Выявление внутренних и&nbsp;внешних дефектов (включений, трещин).</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-gai.svg" alt="" width="32" height="32">
                                    <span>
                                        <span class="inner-list__title">Сертификация</span>
                                        Сличение номера сертификата GIA (лазерная гравировка на&nbsp;рундисте) с&nbsp;данными в&nbsp;реестре.</span>
                                </li>
                            </ul>
                            <p>Мы&nbsp;также проверяем драгоценные камни (рубины, сапфиры, изумруды) и&nbsp;другие вставки&nbsp;&mdash; по&nbsp;запросу.</p>
                        </div>
                        <picture class="inner-wrap__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-22.webp" alt="" width="718" height="620" loading="lazy">
                        </picture>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Оборудование и&nbsp;методика экспертизы</h2>
                    <div class="text">Мы&nbsp;используем современное геммологическое оборудование, сертифицированное в&nbsp;Российской Федерации:</div>
                    <div class="inner-cards">
                        <div class="inner-card">
                            <h3>Оборудование:</h3>
                            <ul class="inner-list">
                                <li>ADI (Advanced Diamond Inspection)&nbsp;&mdash; высокоточный прибор для определения подлинности бриллиантов, рекомендованный Международными организациями продавцов бриллиантов. Используется на&nbsp;Алмазных биржах.</li>
                                <li>Микроскопы с&nbsp;увеличением&nbsp;&mdash; для детального исследования включений и&nbsp;дефектов.</li>
                                <li>Спектрометры&nbsp;&mdash; для анализа состава и&nbsp;происхождения камня.</li>
                            </ul>
                        </div>
                        <div class="inner-card">
                            <h3>Методика:</h3>
                            <ul class="inner-list">
                                <li>Проверка проводится в&nbsp;присутствии заказчика.</li>
                                <li>Камень тестируется на&nbsp;приборе ADI.</li>
                                <li>Сличается номер сертификата GIA (если есть).</li>
                                <li>Выдаётся заключение о&nbsp;подлинности.</li>
                                <li>При необходимости&nbsp;&mdash; пломбирование камня в&nbsp;индивидуальную упаковку.</li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Услуги и&nbsp;цены на&nbsp;проверку бриллиантов</h2>
                    <div class="text">Мы&nbsp;предлагаем несколько вариантов проверки в&nbsp;зависимости от&nbsp;веса камня и&nbsp;наличия оправы.</div>

                    <h3>За&nbsp;один камень БЕЗ оправы</h3>
                    <div class="table">
                        <table>
                            <thead>
                                <tr>
                                    <th>Вес камня</th>
                                    <th>5&nbsp;минут (без заключения)</th>
                                    <th>10&nbsp;минут (с&nbsp;заключением)</th>
                                    <th>С&nbsp;пломбированием</th>
                                    <th>Выезд к&nbsp;заказчику</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>0.1&ndash;0.59&nbsp;ct</td>
                                    <td>900&nbsp;руб.</td>
                                    <td>1&nbsp;500&nbsp;руб.</td>
                                    <td>-</td>
                                    <td>-</td>
                                </tr>
                                <tr>
                                    <td>0.6&ndash;1.25&nbsp;ct</td>
                                    <td>2&nbsp;500&nbsp;руб.</td>
                                    <td>3&nbsp;500&nbsp;руб.</td>
                                    <td>3&nbsp;500&nbsp;руб.</td>
                                    <td>-</td>
                                </tr>
                                <tr>
                                    <td>1.25+&nbsp;ct</td>
                                    <td>3&nbsp;000&nbsp;руб.</td>
                                    <td>5&nbsp;000&nbsp;руб.</td>
                                    <td>5&nbsp;500&nbsp;руб. (20&nbsp;мин)</td>
                                    <td>15&nbsp;000&nbsp;руб. (1&nbsp;час)</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <h3>За&nbsp;один камень В&nbsp;ИЗДЕЛИИ</h3>
                    <div class="table">
                        <table>
                            <thead>
                                <tr>
                                    <th>Вес камня</th>
                                    <th>5&nbsp;минут (без заключения)</th>
                                    <th>10&nbsp;минут (с&nbsp;заключением)</th>
                                    <th>С&nbsp;пломбированием</th>
                                    <th>Выезд к&nbsp;заказчику</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>0.1&ndash;0.59&nbsp;ct</td>
                                    <td>1&nbsp;500&nbsp;руб.</td>
                                    <td>2&nbsp;500&nbsp;руб.</td>
                                    <td>-</td>
                                    <td>-</td>
                                </tr>
                                <tr>
                                    <td>0.6&ndash;1.25&nbsp;ct</td>
                                    <td>3&nbsp;500&nbsp;руб.</td>
                                    <td>5&nbsp;500&nbsp;руб.</td>
                                    <td>5&nbsp;500&nbsp;руб.</td>
                                    <td>-</td>
                                </tr>
                                <tr>
                                    <td>1.25+&nbsp;ct</td>
                                    <td>4&nbsp;000&nbsp;руб.</td>
                                    <td>7&nbsp;000&nbsp;руб.</td>
                                    <td>7&nbsp;500&nbsp;руб. (20&nbsp;мин)</td>
                                    <td>15&nbsp;000&nbsp;руб. (1&nbsp;час)</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <h3>Услуга &laquo;Выезд к&nbsp;заказчику&raquo;:</h3>
                    <div class="inner-card">
                        <ul class="inner-list">
                            <li>Неограниченное количество проверяемых камней.</li>
                            <li>Бесплатная консультация.</li>
                            <li>Тест на&nbsp;ADI.</li>
                            <li>Исключительно по&nbsp;предоплате.</li>
                        </ul>
                        <p><strong>Важно:</strong> Прибор ADI рассчитан на&nbsp;проверку исключительно белых бриллиантов (цвет до&nbsp;J&mdash;I). Для проверки чёрных и&nbsp;цветных бриллиантов, а&nbsp;также других драгоценных камней (рубины, сапфиры, изумруды) используется другое оборудование&nbsp;&mdash; уточняйте по&nbsp;телефону.</p>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Какие документы вы&nbsp;получаете</h2>
                    <div class="text fix-width">По&nbsp;результатам экспертизы мы&nbsp;предоставляем официальные документы:</div>
                    <div class="inner-picture">
                        <picture class="inner-picture__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-3.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <h3>Перечень документов:</h3>
                            <ul class="inner-list">
                                <li>Заключение о&nbsp;подлинности&nbsp;&mdash; на&nbsp;бланке студии с&nbsp;подписью эксперта и&nbsp;печатью (при заказе услуги &laquo;с&nbsp;заключением&raquo;).</li>
                                <li>Акт проверки&nbsp;&mdash; с&nbsp;указанием характеристик камня (вес, цвет, чистота, огранка) и&nbsp;результата теста на&nbsp;AD</li>
                                <li>Пломбировочный конверт&nbsp;&mdash; при заказе услуги &laquo;с&nbsp;пломбированием&raquo; камень упаковывается в&nbsp;индивидуальную упаковку с&nbsp;пломбой.</li>
                                <li>Сертификат GIA (если камень сертифицирован)&nbsp;&mdash; мы&nbsp;сверяем номер и&nbsp;подтверждаем соответствие.</li>
                            </ul>
                            <p>Вы&nbsp;также можете проверить сертификат GIA самостоятельно на&nbsp;официальном сайте лаборатории.</p>
                            <a href="" class="btn btn--big">Проверить сертификат GIA</a>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Почему стоит проверить бриллиант у&nbsp;нас</h2>
                    <div class="inner-extras-4 dark counter rows">
                        <div class="inner-extra">
                            <div class="inner-extra__description">
                                <div class="h3">Надёжные технологии</div>
                                <p>Мы&nbsp;доверяем технологиям, подтверждёнными лучшими экспертами. Прибор ADI сертифицирован в&nbsp;РФ и&nbsp;рекомендован международными организациями.</p>
                            </div>
                        </div>
                        <div class="inner-extra">
                            <div class="inner-extra__description">
                                <div class="h3">VIP обслуживание</div>
                                <p>Выезд на&nbsp;сделку на&nbsp;дом для консультации и&nbsp;проверки. Работаем с&nbsp;крупными камнями (от&nbsp;1.25&nbsp;ct) и&nbsp;большими партиями.</p>
                            </div>
                        </div>
                        <div class="inner-extra">
                            <div class="inner-extra__description">
                                <div class="h3">Удобное расположение</div>
                                <p>Мы&nbsp;находимся в&nbsp;центре Москвы (м. Кузнецкий мост). Есть бесплатная парковка для гостей студии.</p>
                            </div>
                        </div>
                        <div class="inner-extra">
                            <div class="inner-extra__description">
                                <div class="h3">Надёжность и&nbsp;репутация</div>
                                <p>Только мастера с&nbsp;опытом от&nbsp;15&nbsp;лет работают в&nbsp;нашей студии. Мы&nbsp;гарантируем точность и&nbsp;объективность экспертизы.</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Как передать камень на&nbsp;проверку</h2>
                    <div class="text fix-width">Мы&nbsp;предлагаем два способа сдать камень на&nbsp;экспертизу:</div>
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
                            <img src="<?php echo $asset; ?>images/content/static/detail-23.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <h3>Выезд к&nbsp;заказчику:</h3>
                            <ul class="small">
                                <li>Для камней от&nbsp;1.25&nbsp;ct или больших партий</li>
                                <li>Стоимость: 15&nbsp;000&nbsp;₽ за&nbsp;1&nbsp;час</li>
                                <li>Исключительно по&nbsp;предоплате</li>
                                <li>Неограниченное количество проверяемых камней</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>

            <section class="consultation-section">
                <div class="consultation-section__wrap">
                    <div class="consultation-section__description">
                        <h2>Заявка на&nbsp;проверку бриллиантов</h2>
                        <div class="text">Мы&nbsp;свяжемся с&nbsp;вами и&nbsp;ответим на&nbsp;все интересующие вопросы</div>
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
                                <textarea class="inputbox" placeholder="Характеристики камня"></textarea>
                            </label>
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
