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
                <div class="text">Профессиональный ремонт украшений любой сложности: кольца, серьги, браслеты, цепочки, подвески и&nbsp;другие изделия из&nbsp;золота, серебра и&nbsp;платины. Бесплатная диагностика, гарантия до&nbsp;18&nbsp;месяцев, срочный ремонт в&nbsp;присутствии заказчика. Работаем со&nbsp;всеми видами металлов и&nbsp;оправ.</div>

                <div class="inner-block">
                    <h2>Почему стоит обратиться к&nbsp;нам</h2>
                    <div class="inner-picture inner-picture--left">
                        <picture class="inner-picture__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-19.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <ol class="small">
                                <li><span>
                                        <span class="inner-list__title">Гарантия 18&nbsp;месяцев</span>
                                        На&nbsp;все произведённые работы любой сложности мы&nbsp;даём гарантию 18&nbsp;месяцев.
                                    </span></li>
                                <li><span>
                                        <span class="inner-list__title">Современное оборудование</span>
                                        У&nbsp;нас есть современное оборудование: гальваническая ванна, лазерная пайка, пневмоштихеля и&nbsp;т.д.
                                    </span></li>
                                <li><span>
                                        <span class="inner-list__title">Берёмся за&nbsp;все работы</span>
                                        Выполняем все виды работ, и&nbsp;даже&nbsp;те, от&nbsp;которых отказываются другие компании.
                                    </span></li>
                                <li><span>
                                        <span class="inner-list__title">Опыт мастеров от&nbsp;15&nbsp;лет</span>
                                        В&nbsp;нашей студии работают квалифицированные мастера с&nbsp;большим опытом в&nbsp;своём деле.
                                    </span></li>
                            </ol>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Что мы&nbsp;ремонтируем</h2>
                    <div class="text">Мы&nbsp;ремонтируем любые ювелирные изделия из&nbsp;драгоценных металлов. Наши мастера работают со&nbsp;всеми видами украшений:</div>
                    <h3>Виды изделий:</h3>
                    <div class="inner-types wrap">
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/icons/icon-ring.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Кольца</div>
                                <div class="inner-type__text">обручальные, помолвочные, перстни, печатки</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/icons/icon-earrings.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Серьги</div>
                                <div class="inner-type__text">пусеты, конго, длинные</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/icons/icon-bracelets.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Браслеты</div>
                                <div class="inner-type__text">ручные, глидерные, теннисные</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/icons/icon-chains.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Цепочки</div>
                                <div class="inner-type__text">все виды плетений</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/icons/icon-pendants.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Подвески и&nbsp;кулоны</div>
                                <div class="inner-type__text">различные формы и&nbsp;размеры</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/icons/icon-necklaces.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Колье</div>
                                <div class="inner-type__text">изящные и&nbsp;массивные</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/icons/icon-cufflinks.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Запонки</div>
                                <div class="inner-type__text">классические и&nbsp;дизайнерские</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/icons/icon-brooches.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Броши</div>
                                <div class="inner-type__text">с&nbsp;камнями и&nbsp;без</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/icons/icon-tiaras.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Диадемы и&nbsp;тиары</div>
                                <div class="inner-type__text">свадебные и&nbsp;вечерние</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/icons/icon-bodychains.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Бодичейны</div>
                                <div class="inner-type__text">тонкие и&nbsp;акцентные</div>
                            </div>
                        </div>
                    </div>
                    <h3>Виды металлов:</h3>
                    <div class="inner-types">
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/content/material-1.webp" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Золотые</div>
                                <div class="inner-type__text">все пробы: 585, 750, 958</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/content/material-2.webp" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Серебряные</div>
                                <div class="inner-type__text">925, 875, 960 пробы</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/content/material-4.webp" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Платиновые</div>
                                <div class="inner-type__text">950 и&nbsp;900 пробы</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/content/material-6.webp" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Комбинированные</div>
                                <div class="inner-type__text">сочетание металлов</div>
                            </div>
                        </div>
                    </div>
                    <div class="text"><strong>Важно:</strong> Работаем с&nbsp;изделиями из&nbsp;разных металлов, со&nbsp;вставками и&nbsp;без, с&nbsp;любыми видами оправ (крапановая, корнеровая, глухая, клеевая, паве, блочная, трубчатая, швензовая).</div>
                </div>

                <div class="inner-block">
                    <h2>Услуги и&nbsp;цены на&nbsp;ремонт</h2>
                    <div class="text">Мы&nbsp;предлагаем несколько пакетов услуг, чтобы вы&nbsp;могли выбрать оптимальный вариант для вашего украшения. Цена зависит от&nbsp;сложности работ и&nbsp;срочности.</div>

                    <div class="inner-services swiper">
                        <div class="swiper-wrapper">
                            <div class="inner-service swiper-slide">
                                <div class="inner-service__inner">
                                    <div class="inner-service__images">
                                        <img src="<?php echo $asset; ?>images/content/inner-service-1.webp" alt="" width="160" height="160">
                                    </div>
                                    <div class="inner-service__title">&laquo;Первое касание&raquo;</div>
                                    <div class="inner-service__text">Простая пайка, увеличение/уменьшение размера, реставрация покрытия, шлифовка/полировка/мойка, простая закрепка.</div>
                                    <div class="inner-service__price">1&nbsp;500&nbsp;руб.</div>
                                    <a href="" class="btn">Заказать услугу</a>
                                </div>
                            </div>
                            <div class="inner-service swiper-slide">
                                <div class="inner-service__inner">
                                    <div class="inner-service__images">
                                        <img src="<?php echo $asset; ?>images/content/inner-service-2.webp" alt="" width="160" height="160">
                                    </div>
                                    <div class="inner-service__title">&laquo;Уверенность&raquo;</div>
                                    <div class="inner-service__text">Сложные закрепки, 2&ndash;3 пайки одного изделия, сложные гальванические работы, изготовление утраченных деталей, все работы из&nbsp;пакета &laquo;Первое касание&raquo;.</div>
                                    <div class="inner-service__price">2&nbsp;500&nbsp;руб.</div>
                                    <a href="" class="btn">Заказать услугу</a>
                                </div>
                            </div>
                            <div class="inner-service swiper-slide">
                                <div class="inner-service__inner">
                                    <div class="inner-service__images">
                                        <img src="<?php echo $asset; ?>images/content/inner-service-3.webp" alt="" width="160" height="160">
                                    </div>
                                    <div class="inner-service__title">&laquo;Если не&nbsp;мы, то&nbsp;кто?&raquo;</div>
                                    <div class="inner-service__text">Реставрация антиквариата и&nbsp;винтажа, ремонт сложной бижутерии, восстановление крапанов, сложная закрепка.</div>
                                    <div class="inner-service__price">4&nbsp;500&nbsp;руб.</div>
                                    <a href="" class="btn">Заказать услугу</a>
                                </div>
                            </div>
                            <div class="inner-service swiper-slide">
                                <div class="inner-service__inner">
                                    <div class="inner-service__images">
                                        <img src="<?php echo $asset; ?>images/content/inner-service-4.webp" alt="" width="160" height="160">
                                    </div>
                                    <div class="inner-service__title">&laquo;VIP&raquo;</div>
                                    <div class="inner-service__text">Обслуживание дизайнерских и&nbsp;брендовых изделий, сложных реплик, реставрация сложных механических повреждений.</div>
                                    <div class="inner-service__price">6&nbsp;500&nbsp;/ 10&nbsp;000&nbsp;/ 15&nbsp;000&nbsp;руб.</div>
                                    <a href="" class="btn">Заказать услугу</a>
                                </div>
                            </div>
                        </div>

                        <div class="swiper-buttons show-on-tab">
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-pagination"></div>
                            <div class="swiper-button-next"></div>
                        </div>
                    </div>

                    <h3>Дополнительно:</h3>
                    <div class="inner-extras swiper dark">
                        <div class="swiper-wrapper">
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-alarm.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Услуга Express!</h3>
                                    <p>Cрочный ремонт в&nbsp;присутствии заказчика (удваивает стоимость пакета).</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-expertise-empty.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Примерка и&nbsp;снятие мерок</h3>
                                    <p>Бесплатно</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-tweezers.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Замена вставок</h3>
                                    <p>Индивидуальный расчёт.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-lock.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Замена замков</h3>
                                    <p>Для цепочек, браслетов, ожерелий&nbsp;&mdash; входит в&nbsp;пакеты или индивидуально.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-ringstar.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Родирование и&nbsp;восстановление покрытия</h3>
                                    <p>Входит в&nbsp;пакеты</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-making.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Гравировка</h3>
                                    <p>По&nbsp;запросу</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-buttons show-on-tab">
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-pagination"></div>
                            <div class="swiper-button-next"></div>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Как передать изделие в&nbsp;ремонт</h2>
                    <div class="text fix-width">Мы&nbsp;предлагаем два способа сдать украшение в&nbsp;ремонт:</div>
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
                                <li>Оставьте заявку на&nbsp;сайте или свяжитесь с&nbsp;нами по&nbsp;телефону.</li>
                                <li>Мы&nbsp;обсудим проблему, предварительно оценим стоимость и&nbsp;сроки.</li>
                                <li>Вы&nbsp;можете отправить изделие почтой или курьерской службой (по&nbsp;согласованию).</li>
                            </ul>
                        </div>
                    </div>

                    <div class="text"><strong>Важно:</strong> Перед ремонтом мы&nbsp;проводим бесплатную диагностику и&nbsp;согласовываем с&nbsp;вами все работы, стоимость и&nbsp;сроки.</div>
                </div>

                <div class="inner-block">
                    <h2>Примеры наших работ &laquo;до&raquo; и&nbsp;&laquo;после&raquo;</h2>
                    <div class="text">Посмотрите, как наши мастера возвращают украшениям первозданный вид.</div>
                    <div class="inner-sliders">
                        <div class="inner-slider__wrap">
                            <div class="inner-slider swiper">
                                <div class="swiper-wrapper">
                                    <a href="<?php echo $asset; ?>images/content/before-after/ba-1-1.webp" data-fancybox="ba-1" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image">
                                            <img src="<?php echo $asset; ?>images/content/before-after/ba-1-1.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                        <div class="inner-slider__text">До</div>
                                    </a>
                                    <a href="<?php echo $asset; ?>images/content/before-after/ba-1-2.webp" data-fancybox="ba-1" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image">
                                            <img src="<?php echo $asset; ?>images/content/before-after/ba-1-2.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                        <div class="inner-slider__text">После</div>
                                    </a>
                                </div>
                                <div class="swiper-buttons">
                                    <p>Реставрация кольца: полировка и&nbsp;восстановление покрытия</p>
                                    <div class="swiper-button-prev"></div>
                                    <div class="swiper-button-next"></div>
                                </div>
                            </div>
                        </div>
                        <div class="inner-slider__wrap">
                            <div class="inner-slider swiper">
                                <div class="swiper-wrapper">
                                    <a href="<?php echo $asset; ?>images/content/before-after/ba-2-1.webp" data-fancybox="ba-2" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image">
                                            <img src="<?php echo $asset; ?>images/content/before-after/ba-2-1.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                        <div class="inner-slider__text">До</div>
                                    </a>
                                    <a href="<?php echo $asset; ?>images/content/before-after/ba-2-2.webp" data-fancybox="ba-2" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image">
                                            <img src="<?php echo $asset; ?>images/content/before-after/ba-2-2.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                        <div class="inner-slider__text">После</div>
                                    </a>
                                </div>
                                <div class="swiper-buttons">
                                    <p>Реставрация серег: полировка и&nbsp;родирование</p>
                                    <div class="swiper-button-prev"></div>
                                    <div class="swiper-button-next"></div>
                                </div>
                            </div>
                        </div>
                        <div class="inner-slider__wrap">
                            <div class="inner-slider swiper">
                                <div class="swiper-wrapper">
                                    <a href="<?php echo $asset; ?>images/content/before-after/ba-3-1.webp" data-fancybox="ba-3" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image">
                                            <img src="<?php echo $asset; ?>images/content/before-after/ba-3-1.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                        <div class="inner-slider__text">До</div>
                                    </a>
                                    <a href="<?php echo $asset; ?>images/content/before-after/ba-3-2.webp" data-fancybox="ba-3" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image">
                                            <img src="<?php echo $asset; ?>images/content/before-after/ba-3-2.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                        <div class="inner-slider__text">После</div>
                                    </a>
                                </div>
                                <div class="swiper-buttons">
                                    <p>Ремонт подвески: замена утраченной оправы&nbsp;/ реставрация поверхности</p>
                                    <div class="swiper-button-prev"></div>
                                    <div class="swiper-button-next"></div>
                                </div>
                            </div>
                        </div>
                        <div class="inner-slider__wrap">
                            <div class="inner-slider swiper">
                                <div class="swiper-wrapper">
                                    <a href="<?php echo $asset; ?>images/content/before-after/ba-4-1.webp" data-fancybox="ba-4" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image">
                                            <img src="<?php echo $asset; ?>images/content/before-after/ba-4-1.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                        <div class="inner-slider__text">До</div>
                                    </a>
                                    <a href="<?php echo $asset; ?>images/content/before-after/ba-4-2.webp" data-fancybox="ba-4" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image">
                                            <img src="<?php echo $asset; ?>images/content/before-after/ba-4-2.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                        <div class="inner-slider__text">После</div>
                                    </a>
                                </div>
                                <div class="swiper-buttons">
                                    <p>Ремонт и&nbsp;реставрация серег: полировка и&nbsp;замена пружины</p>
                                    <div class="swiper-button-prev"></div>
                                    <div class="swiper-button-next"></div>
                                </div>
                            </div>
                        </div>
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
