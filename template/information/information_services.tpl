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
                <div class="text">Ювелирная студия &laquo;Ювелиры Москвы&raquo; в&nbsp;центре Москвы: изготавливаем украшения по&nbsp;вашим эскизам, ремонтируем и&nbsp;реставрируем, разрабатываем авторский дизайн, проверяем бриллианты и&nbsp;камни на&nbsp;геммологическом оборудовании. Работаем с&nbsp;драгоценными металлами, камнями и&nbsp;вашими материалами. Ниже&nbsp;&mdash; все направления, каждое раскрыто на&nbsp;отдельной странице.</div>
            </section>

            <section class="services-section">
                <h2>Направления работы</h2>
                <div class="services-grid swiper">
                    <div class="swiper-wrapper">
                        <div class="service swiper-slide">
                            <a href="/uslugi/izgotovlenie" class="service__inner">
                                <h3>Изготовление ювелирных изделий</h3>
                                <picture class="service__image">
                                    <img src="<?php echo $asset; ?>images/content/service-1.webp" alt="" width="275" height="275" loading="lazy">
                                </picture>
                                <div class="service__text">Создаем украшения по&nbsp;вашему эскизу или с&nbsp;нуля. Работаем с&nbsp;вашими материалами.</div>
                                <div class="btn btn--more">
                                    <svg role="img" aria-label="Подробнее"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-long" /></svg>
                                </div>
                            </a>
                        </div>
                        <div class="service swiper-slide">
                            <a href="/uslugi/remont-yuvelirnyh-izdeliy" class="service__inner">
                                <h3>Ремонт ювелирных изделий</h3>
                                <picture class="service__image">
                                    <img src="<?php echo $asset; ?>images/content/service-2.webp" alt="" width="275" height="275" loading="lazy">
                                </picture>
                                <div class="service__text">Восстановим любимые украшения: пайка, полировка, замена замков, ремонт оправы.</div>
                                <div class="btn btn--more">
                                    <svg role="img" aria-label="Подробнее"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-long" /></svg>
                                </div>
                            </a>
                        </div>
						<div class="service swiper-slide">
                            <a href="/uslugi/izgotovlenie-iz-vashih-materialov" class="service__inner">
                                <h3>Изготовление из&nbsp;ваших материалов</h3>
                                <picture class="service__image">
                                    <img src="<?php echo $asset; ?>images/content/service-5.webp" alt="" width="275" height="275" loading="lazy">
                                </picture>
                                <div class="service__text">Создадим новое украшение из&nbsp;ваших золота, серебра и&nbsp;камней. Бережно сохраним семейные ценности.</div>
                                <div class="btn btn--more">
                                    <svg role="img" aria-label="Подробнее"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-long" /></svg>
                                </div>
                            </a>
                        </div>
						<div class="service swiper-slide">
                            <a href="/uslugi/dizajn-yuvelirnyh-izdeliy" class="service__inner">
                                <h3>Дизайн ювелирных украшений</h3>
                                <picture class="service__image">
                                    <img src="<?php echo $asset; ?>images/content/service-4.webp" alt="" width="275" height="275" loading="lazy">
                                </picture>
                                <div class="service__text">Разработаем эскиз с&nbsp;учётом ваших пожеланий и&nbsp;бюджета. Покажем 3D-визуализацию до&nbsp;изготовления.</div>
                                <div class="btn btn--more">
                                    <svg role="img" aria-label="Подробнее"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-long" /></svg>
                                </div>
                            </a>
                        </div>						
                        <div class="service swiper-slide">
                            <a href="/uslugi/proverka-brilliantov-i-kamnej" class="service__inner">
                                <h3>Проверка бриллиантов (камней)</h3>
                                <picture class="service__image">
                                    <img src="<?php echo $asset; ?>images/content/service-3.webp" alt="" width="275" height="275" loading="lazy">
                                </picture>
                                <div class="service__text">Профессиональная диагностика, оценка качества огранки, чистоты и&nbsp;подлинности с&nbsp;помощью геммологического оборудования.</div>
                                <div class="btn btn--more">
                                    <svg role="img" aria-label="Подробнее"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-long" /></svg>
                                </div>
                            </a>
                        </div>
                        <div class="service swiper-slide">
                            <a href="/uslugi/sertifikaty-i-podarochnye-karty" class="service__inner">
                                <h3>Сертификаты и&nbsp;подарочные карты</h3>
                                <picture class="service__image">
                                    <img src="<?php echo $asset; ?>images/content/service-6.webp" alt="" width="275" height="275" loading="lazy">
                                </picture>
                                <div class="service__text">Подарите выбор украшения или услуги. Сертификаты на&nbsp;любую сумму и&nbsp;индивидуальный заказ.</div>
                                <div class="btn btn--more">
                                    <svg role="img" aria-label="Подробнее"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-long" /></svg>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="swiper-buttons beige show-on-tab">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
            </section>

            <section class="inner-section">
                <h2>Почему выбирают нашу студию?</h2>
                <div class="inner-picture inner-picture--left">
                        <picture class="inner-picture__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-17.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <ul class="inner-list image">
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-health-care.svg" alt="" width="32" height="32">
                                    <span>Индивидуальный подход</span></li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-materials.svg" alt="" width="32" height="32">
                                    <span>Работа с&nbsp;вашими материалами&nbsp;&mdash; экономия до&nbsp;30%</span></li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-shield.svg" alt="" width="32" height="32">
                                    <span>Пожизненная гарантия</span></li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-diamond.svg" alt="" width="32" height="32">
                                    <span>Собственное геммологическое оборудование</span></li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-tag.svg" alt="" width="32" height="32">
                                    <span>Прозрачные цены и&nbsp;сроки</span></li>
                            </ul>
                        </div>
                    </div>
            </section>

            <?php echo $information_faq_html; ?>
        </main>
<?php echo $footer; ?>
