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
                <div class="text">Разработаем эксклюзивный дизайн украшения любой сложности: от&nbsp;эскиза до&nbsp;3D-модели. Кольца, серьги, браслеты, подвески и&nbsp;другие изделия из&nbsp;золота, серебра и&nbsp;платины. Воплотим вашу идею в&nbsp;жизнь!</div>

                <div class="inner-block">
                    <h2>Почему стоит заказать дизайн у&nbsp;нас</h2>
                    <div class="text fix-width">Создание украшения с&nbsp;нуля&nbsp;&mdash; это возможность получить эксклюзивное изделие, которого нет ни&nbsp;у&nbsp;кого. Мы&nbsp;разрабатываем авторский дизайн, полностью соответствующий вашим пожеланиям.</div>
                    <div class="inner-picture inner-picture--left">
                        <picture class="inner-picture__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-20.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <ul class="inner-list image small">
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-ringstar.svg" alt="" width="32" height="32">
                                    <span>
                                        <span class="inner-list__title">Эксклюзивный дизайн</span>
                                        Ваше украшение будет единственным в&nbsp;своём роде. Никаких готовых шаблонов&nbsp;&mdash; только индивидуальная работа с&nbsp;вами.
                                    </span></li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-magicpen.svg" alt="" width="32" height="32">
                                    <span>
                                        <span class="inner-list__title">Любая сложность</span>
                                        Мы&nbsp;разрабатываем дизайн для всех видов украшений: кольца, серьги, браслеты, цепочки, подвески, колье, кулоны, запонки, броши, диадемы, тиары, бодичейны.
                                    </span></li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-materials.svg" alt="" width="32" height="32">
                                    <span>
                                        <span class="inner-list__title">Любые материалы</span>
                                        Работаем с&nbsp;золотом (все пробы), серебром, платиной и&nbsp;комбинированными металлами. Используем бриллианты, драгоценные и&nbsp;полудрагоценные камни.
                                    </span></li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-3d.svg" alt="" width="32" height="32">
                                    <span>
                                        <span class="inner-list__title">Визуализация до&nbsp;изготовления</span>
                                        Вы&nbsp;увидите точную 3D-модель вашего украшения до&nbsp;начала производства. Вносите правки и&nbsp;утверждайте финальный вариант.
                                    </span></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Что мы&nbsp;разрабатываем</h2>
                    <div class="text">Мы&nbsp;создаём дизайн-проекты для любых ювелирных изделий:</div>
                    <h3>Виды изделий:</h3>
                    <div class="inner-types wrap">
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/icons/icon-ring.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Кольца</div>
                                <div class="inner-type__text">классика и&nbsp;авторские</div>
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
                                <div class="inner-type__text">жёсткие, глидерные, теннисные</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/icons/icon-chains.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Цепочки</div>
                                <div class="inner-type__text">плетение под дизайн</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/icons/icon-pendants.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Подвески и&nbsp;кулоны</div>
                                <div class="inner-type__text">формы и&nbsp;сюжеты</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/icons/icon-necklaces.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Колье</div>
                                <div class="inner-type__text">акцентные и&nbsp;вечерние</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/icons/icon-cufflinks.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Запонки</div>
                                <div class="inner-type__text">классика и&nbsp;авторские</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/icons/icon-brooches.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Броши</div>
                                <div class="inner-type__text">образные, с&nbsp;камнями</div>
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
                                <div class="inner-type__text">925 проба</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/content/material-4.webp" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Платиновые</div>
                                <div class="inner-type__text">950 проба</div>
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
                    <h3>Вставки:</h3>
                    <div class="inner-types">
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/content/stones-42.webp" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Бриллианты</div>
                                <div class="inner-type__text">форма и&nbsp;каратность</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/content/stones-43.webp" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Драгоценные камни</div>
                                <div class="inner-type__text">цвет и&nbsp;огранка</div>
                            </div>
                        </div>
                        <div class="inner-type">
                            <img class="inner-type__icon" src="<?php echo $asset; ?>images/content/stones-44.webp" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-type__description">
                                <div class="inner-type__title">Полудрагоценные камни</div>
                                <div class="inner-type__text">топаз, аметист, турмалин</div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="process-section">
                <h2>Этапы работы над дизайн-проектом</h2>
                <div class="text">Мы&nbsp;создаём украшение мечты в&nbsp;несколько этапов. На&nbsp;каждом этапе вы&nbsp;участвуете в&nbsp;процессе и&nbsp;утверждаете промежуточные результаты.</div>
                <div class="process swiper">
                    <div class="swiper-wrapper">
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="<?php echo $asset; ?>images/content/process-1-3.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Бриф и&nbsp;обсуждение идеи</h3>
                                    <p>Вы&nbsp;рассказываете о&nbsp;своей идее, предпочтениях, бюджете и&nbsp;сроках. Мы&nbsp;уточняем детали и&nbsp;формируем техническое задание.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="<?php echo $asset; ?>images/content/process-1.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Разработка эскиза</h3>
                                    <p>Наш художник создаёт несколько вариантов эскизов. Вы&nbsp;выбираете понравившийся или вносите правки.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="<?php echo $asset; ?>images/content/process-2-1.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Создание 3D-модели</h3>
                                    <p>Утверждённый эскиз превращается в&nbsp;точную 3D-модель с&nbsp;детальной проработкой всех элементов. Вы&nbsp;видите украшение со&nbsp;всех сторон.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="<?php echo $asset; ?>images/content/process-4-3.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Утверждение дизайна</h3>
                                    <p>Вы&nbsp;вносите финальные корректировки и&nbsp;утверждаете модель. После этого начинается изготовление.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="<?php echo $asset; ?>images/content/process-7-1.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Изготовление украшения</h3>
                                    <p>По&nbsp;утверждённому дизайну мы&nbsp;изготавливаем ваше украшение с&nbsp;использованием выбранных материалов и&nbsp;камней.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-buttons beige">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
                <div class="text"><strong>Важно:</strong> На&nbsp;любом этапе вы&nbsp;можете вносить изменения и&nbsp;корректировки.</div>
            </section>

            <section class="inner-section">
                <div class="inner-block">
                    <h2>Сколько стоит разработка дизайна</h2>
                    <div class="text">Стоимость дизайн-проекта зависит от&nbsp;сложности изделия, количества камней и&nbsp;времени на&nbsp;разработку.</div>

                    <div class="inner-services swiper">
                        <div class="swiper-wrapper">
                            <div class="inner-service swiper-slide">
                                <div class="inner-service__inner">
                                    <div class="inner-service__images">
                                        <img src="<?php echo $asset; ?>images/content/inner-service-5.webp" alt="" width="160" height="160">
                                    </div>
                                    <div class="inner-service__title">&laquo;Простой&raquo;</div>
                                    <div class="inner-service__text">Дизайн простого изделия (кольцо без камней, подвеска)</div>
                                    <div class="inner-service__price">от&nbsp;10&nbsp;000&nbsp;руб.</div>
                                    <a href="" class="btn">Заказать услугу</a>
                                </div>
                            </div>
                            <div class="inner-service swiper-slide">
                                <div class="inner-service__inner">
                                    <div class="inner-service__images">
                                        <img src="<?php echo $asset; ?>images/content/inner-service-6.webp" alt="" width="160" height="160">
                                    </div>
                                    <div class="inner-service__title">&laquo;Средний&raquo;</div>
                                    <div class="inner-service__text">Дизайн средней сложности (кольцо с&nbsp;1&ndash;3&nbsp;камнями, серьги)</div>
                                    <div class="inner-service__price">от&nbsp;15&nbsp;000&nbsp;руб.</div>
                                    <a href="" class="btn">Заказать услугу</a>
                                </div>
                            </div>
                            <div class="inner-service swiper-slide">
                                <div class="inner-service__inner">
                                    <div class="inner-service__images">
                                        <img src="<?php echo $asset; ?>images/content/inner-service-7.webp" alt="" width="160" height="160">
                                    </div>
                                    <div class="inner-service__title">&laquo;Сложный&raquo;</div>
                                    <div class="inner-service__text">Дизайн сложного изделия (колье, диадема, сложные закрепки)</div>
                                    <div class="inner-service__price">от&nbsp;25&nbsp;000&nbsp;руб.</div>
                                    <a href="" class="btn">Заказать услугу</a>
                                </div>
                            </div>
                            <div class="inner-service swiper-slide">
                                <div class="inner-service__inner">
                                    <div class="inner-service__images">
                                        <img src="<?php echo $asset; ?>images/content/inner-service-4.webp" alt="" width="160" height="160">
                                    </div>
                                    <div class="inner-service__title">&laquo;VIP&raquo;</div>
                                    <div class="inner-service__text">VIP-дизайн (брендовый уровень, эксклюзивные модели): индивидуальный расчёт</div>
                                    <div class="inner-service__price">Индивидуальный расчёт</div>
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

                    <div class="text"><strong>Важно:</strong> Стоимость дизайна может быть включена в&nbsp;стоимость изготовления украшения (обсуждается индивидуально).</div>
                </div>

                <div class="inner-block">
                    <h2>Примеры разработанных дизайнов</h2>
                    <div class="text">Посмотрите наши работы&nbsp;&mdash; от&nbsp;эскиза до&nbsp;готового украшения.</div>
                    <div class="inner-sliders">
                        <div class="inner-slider__wrap">
                            <div class="inner-slider swiper">
                                <div class="swiper-wrapper">
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-1-1.webp" data-fancybox="ba-1" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-1-1.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                    </a>
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-1-2.webp" data-fancybox="ba-1" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-1-2.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                    </a>
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-1-3.webp" data-fancybox="ba-1" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-1-3.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                    </a>
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-1-4.webp" data-fancybox="ba-1" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-1-4.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                    </a>
                                </div>
                                <div class="swiper-buttons">
                                    <p>Печатка Мужская Черный принц</p>
                                    <div class="swiper-button-prev"></div>
                                    <div class="swiper-button-next"></div>
                                </div>
                            </div>
                        </div>
                        <div class="inner-slider__wrap">
                            <div class="inner-slider swiper">
                                <div class="swiper-wrapper">
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-2-1.webp" data-fancybox="ba-2" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-2-1.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                    </a>
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-2-2.webp" data-fancybox="ba-2" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-2-2.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                    </a>
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-2-3.webp" data-fancybox="ba-2" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-2-3.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                    </a>
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-2-4.webp" data-fancybox="ba-2" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-2-4.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                    </a>
                                </div>
                                <div class="swiper-buttons">
                                    <p>Посох Асклепия</p>
                                    <div class="swiper-button-prev"></div>
                                    <div class="swiper-button-next"></div>
                                </div>
                            </div>
                        </div>
                        <div class="inner-slider__wrap">
                            <div class="inner-slider swiper">
                                <div class="swiper-wrapper">
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-3-1.webp" data-fancybox="ba-3" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-3-1.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                    </a>
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-3-2.webp" data-fancybox="ba-3" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-3-2.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                    </a>
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-3-3.webp" data-fancybox="ba-3" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-3-3.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                    </a>
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-3-4.webp" data-fancybox="ba-3" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-3-4.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                    </a>
                                </div>
                                <div class="swiper-buttons">
                                    <p>Серьги с&nbsp;желтыми бриллиантами огранки кушон</p>
                                    <div class="swiper-button-prev"></div>
                                    <div class="swiper-button-next"></div>
                                </div>
                            </div>
                        </div>
                        <div class="inner-slider__wrap">
                            <div class="inner-slider swiper">
                                <div class="swiper-wrapper">
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-4-1.webp" data-fancybox="ba-4" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-4-1.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                    </a>
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-4-2.webp" data-fancybox="ba-4" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-4-2.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                    </a>
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-4-3.webp" data-fancybox="ba-4" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-4-3.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                    </a>
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-4-4.webp" data-fancybox="ba-4" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-4-4.webp" alt="" width="750" height="400" loading="lazy">
                                        </picture>
                                    </a>
                                </div>
                                <div class="swiper-buttons">
                                    <p>Колье с&nbsp;желтыми бриллиантами огранки кушон</p>
                                    <div class="swiper-button-prev"></div>
                                    <div class="swiper-button-next"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Как заказать дизайн украшения</h2>
                    <div class="text fix-width">Мы&nbsp;предлагаем два способа начать работу над вашим дизайном:</div>
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
                                <li>Мы&nbsp;обсудим вашу идею, предоставим предварительную оценку стоимости и&nbsp;сроков.</li>
                                <li>Вся коммуникация может проходить дистанционно (по&nbsp;телефону, видео-звонку, в&nbsp;мессенджерах).</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </section>

            <section class="consultation-section">
                <div class="consultation-section__wrap">
                    <div class="consultation-section__description">
                        <h2>Заявка на&nbsp;разработку дизайна</h2>
                        <div class="text">Мы&nbsp;свяжемся с&nbsp;вами и&nbsp;обсудим вашу идею</div>
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
                                <textarea class="inputbox" placeholder="Описание идеи"></textarea>
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
