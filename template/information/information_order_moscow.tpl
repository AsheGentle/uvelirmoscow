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
                <div class="text">Приглашаем вас в&nbsp;нашу дизайн-студию для личной консультации. Обсудим ваше будущее украшение в&nbsp;уютной обстановке, покажем образцы, поможем с&nbsp;выбором материалов и&nbsp;дизайна.</div>

                <div class="meeting-path">
                    <h2>4&nbsp;причины посетить нашу студию</h2>
                    <div class="meeting-path__list">
                        <div class="meeting-path__item">
                            <picture class="meeting-path__image">
                                <img src="<?php echo $asset; ?>images/content/static/detail-11.webp" alt="" width="1000" height="640">
                            </picture>
                            <div class="meeting-path__info">
                                <p>20&nbsp;метров от&nbsp;магазина ЦУМ. Въезд с&nbsp;улицы Неглинная. Предупредите менеджера о&nbsp;вашем визите.</p>
                            </div>
                        </div>
                        <div class="meeting-path__item">
                            <picture class="meeting-path__image">
                                <img src="<?php echo $asset; ?>images/content/static/detail-12.webp" alt="" width="1000" height="640">
                            </picture>
                            <div class="meeting-path__info">
                                <p>Гарантированная и&nbsp;бесплатная парковка для гостей студии.</p>
                            </div>
                        </div>
                        <div class="meeting-path__item">
                            <picture class="meeting-path__image">
                                <img src="<?php echo $asset; ?>images/content/static/detail-13.webp" alt="" width="1000" height="640">
                            </picture>
                            <div class="meeting-path__info">
                                <p>В&nbsp;нашем офисе уютно и&nbsp;тепло зимой и&nbsp;прохладно летом. Кофе свежей обжарки и&nbsp;вкусные конфеты.</p>
                            </div>
                        </div>
                        <div class="meeting-path__item">
                            <picture class="meeting-path__image">
                                <img src="<?php echo $asset; ?>images/content/static/detail-14.webp" alt="" width="1000" height="640">
                            </picture>
                            <div class="meeting-path__info">
                                <p>Присутствуют все необходимые специалисты для быстрого оформления заказа или разработки эскиза.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="consultation-section">
                <h2>Приглашаем обсудить ваше будущее украшение в&nbsp;нашей дизайн-студии!</h2>
                <div class="text">Совместно с&nbsp;нашими специалистами мы&nbsp;обсудим ваше будущее украшение в&nbsp;уютной обстановке за&nbsp;чашечкой кофе.</div>
                <div class="consultation__buttons">
                    <a href="" class="btn btn--big">Оставить заявку</a>
                </div>
                <div class="consultation__contacts">
                    <?php if ($header_contacts_phone) { ?>
                    <a href="<?php echo htmlspecialchars($header_contacts_phone_href, ENT_QUOTES, 'UTF-8'); ?>" class="consultation__phone">
                        <svg aria-hidden="true"><use href="<?php echo $asset; ?>images/icons/icons.svg#phone"></use></svg>
                        <span><?php echo htmlspecialchars($header_contacts_phone, ENT_QUOTES, 'UTF-8'); ?></span>
                    </a>
                    <?php } ?>
                    <?php $work_time = array_filter(array(trim(strip_tags($header_contacts_work_weekdays)), trim(strip_tags($header_contacts_work_weekend)))); ?>
                    <div class="consultation__time">Время работы: <strong><?php echo htmlspecialchars(implode(', ', $work_time), ENT_QUOTES, 'UTF-8'); ?></strong></div>
                </div>
            </section>

            <section class="inner-section">
                <div class="inner-block">
                    <h2>Как проходит процесс заказа в&nbsp;студии</h2>
                    <div class="inner-picture">
                        <picture class="inner-picture__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-15.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <h3>Что&nbsp;же нужно для заказа украшения в&nbsp;нашей студии?</h3>
                            <ol>
                                <li>Посетить наш шоу-рум, где вас встретят наши специалисты, помогут с&nbsp;парковкой, угостят кофе</li>
                                <li>Совместно определиться с&nbsp;типом украшения, материалами, камнями и&nbsp;их&nbsp;количеством</li>
                                <li>Согласовать и&nbsp;утвердить набросок будущего украшения, который вам предложат наши художники</li>
                                <li>Определиться со&nbsp;сроками изготовления</li>
                                <li>Внести предоплату 30&ndash;50% (в&nbsp;зависимости от&nbsp;материалов) от&nbsp;стоимости изделия</li>
                            </ol>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Дополнительные возможности</h2>
                    <div class="inner-extras swiper">
                        <div class="swiper-wrapper">
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-materials.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Работаем с&nbsp;материалами заказчика</h3>
                                    <p>Изготовим изделие с&nbsp;использованием ваших материалов: платина, золото, драгоценные камни.</p>
                                </div>
                                <a href="" class="btn">Подробнее</a>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-making.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Как мы&nbsp;изготавливаем изделия</h3>
                                    <p>Ваше изделие проходит 8&nbsp;этапов от&nbsp;идеи до&nbsp;воплощения в&nbsp;жизнь. Каждый этап мы&nbsp;согласовываем с&nbsp;вами.</p>
                                </div>
                                <a href="" class="btn">Подробнее</a>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-list-star.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Гарантии на&nbsp;наши изделия</h3>
                                    <p>На&nbsp;все украшения действует пожизненная гарантия и&nbsp;бесплатное сервисное обслуживание.</p>
                                </div>
                                <a href="" class="btn">Подробнее</a>
                            </div>
                        </div>
                        <div class="swiper-buttons show-on-tab">
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-pagination"></div>
                            <div class="swiper-button-next"></div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="contacts-map-section">
                <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A6f7ce23971ee56e1fa1aef8eda263835efd7cd5166a010141cc41b247884f650&amp;width=100%25&amp;height=100%25&amp;lang=ru_RU&amp;scroll=false"></script>
                <div class="contacts-map">
                    <h3>Адрес и&nbsp;режим работы студии</h3>
                    <div class="contacts-map__item">
                        <img src="<?php echo $asset; ?>images/icons/icon-location.svg" alt="" width="48" height="48" loading="lazy">
                        <span>г. Москва, ул. Кузнецкий мост, дом&nbsp;7, строение&nbsp;3, этаж&nbsp;2 (менее 5&nbsp;минут от&nbsp;метро Кузнецкий мост)</span>
                    </div>
                    <div class="contacts-map__item">
                        <img src="<?php echo $asset; ?>images/icons/icon-alarm.svg" alt="" width="48" height="48" loading="lazy">
                        <span><?php echo htmlspecialchars(trim(strip_tags($header_contacts_work_weekdays)), ENT_QUOTES, 'UTF-8'); ?><br><?php echo htmlspecialchars(trim(strip_tags($header_contacts_work_weekend)), ENT_QUOTES, 'UTF-8'); ?></span>
                    </div>
                    <div class="contacts-map__item">
                        <img src="<?php echo $asset; ?>images/icons/icon-phone.svg" alt="" width="48" height="48" loading="lazy">
                        <?php if ($header_contacts_phone) { ?><span><a href="<?php echo htmlspecialchars($header_contacts_phone_href, ENT_QUOTES, 'UTF-8'); ?>"><?php echo htmlspecialchars($header_contacts_phone, ENT_QUOTES, 'UTF-8'); ?></a></span><?php } ?>
                    </div>
                    <div class="contacts-map__item">
                        <img src="<?php echo $asset; ?>images/icons/icon-parking.svg" alt="" width="48" height="48" loading="lazy">
                        <span>Бесплатная для гостей студии</span>
                    </div>
                    <div class="contacts-map__item">
                        <span>Условия визита: по&nbsp;предварительной записи (рекомендуем предупредить менеджера о&nbsp;вашем визите)</span>
                    </div>
                </div>
            </section>

            <section class="consultation-section">
                <div class="consultation-section__wrap">
                    <div class="consultation-section__description">
                        <h2>Заявка на&nbsp;консультацию</h2>
                        <div class="text">Мы&nbsp;свяжемся с&nbsp;вами и&nbsp;ответим на&nbsp;все интересующие вопросы</div>
                    </div>
                    <form class="consultation-section__form form">
                        <div class="form__row">
                            <label class="form__element">
                                <input type="text" class="inputbox" placeholder="Ваше имя*" required>
                            </label>
                        </div>
                        <div class="form__row">
                            <label class="form__element">
                                <input type="text" class="inputbox inputbox-phone" placeholder="+7 (___)___-__-__*" required>
                            </label>
                        </div>
                        <div class="form__row">
                            <button type="submit" class="btn btn--medium">Оставить заявку</button>
                        </div>
                        <div class="form__row form__checkbox">
                            <label class="checkbox">
                                <input type="checkbox">
                                <span class="checkbox__label">Я&nbsp;даю согласие на&nbsp;<a href="/soglasie-na-obrabotku-dannyh">обработку персональных данных</a></span>
                            </label>
                            <label class="checkbox">
                                <input type="checkbox">
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
