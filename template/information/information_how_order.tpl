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
                <div class="text">Заказать украшение в&nbsp;&laquo;Ювелирах Москвы&raquo; можно тремя способами: лично в&nbsp;студии, онлайн с&nbsp;доставкой или срочно. Выберите удобный вариант и&nbsp;получите изделие вашей мечты.</div>

                <div class="order-ways">
                    <h2>Выберите удобный способ заказа</h2>
                    <div class="order-ways__list swiper">
                        <div class="swiper-wrapper">
							<div class="order-way swiper-slide">
								<picture class="order-way__image">
									<img src="<?php echo $asset; ?>images/content/static/detail-8.webp" alt="" width="460" height="335" loading="lazy">
								</picture>
								<div class="order-way__description">
									<div class="order-way__title">Заказ в&nbsp;Москве</div>
									<div class="order-way__text">Приём заказа офлайн&nbsp;&mdash; самый удобный формат для начала сотрудничества. Посетите нашу студию в&nbsp;центре Москвы.</div>
									<a href="" class="btn">Подробнее</a>
								</div>
							</div>
							<div class="order-way swiper-slide">
								<picture class="order-way__image">
									<img src="<?php echo $asset; ?>images/content/static/detail-9.webp" alt="" width="460" height="335" loading="lazy">
								</picture>
								<div class="order-way__description">
									<div class="order-way__title">Заказ онлайн</div>
									<div class="order-way__text">Вы&nbsp;можете заказать украшение дистанционно из&nbsp;любой точки мира. Обсуждаем детали, утверждаем дизайн и&nbsp;отправляем готовое изделие.</div>
									<a href="" class="btn">Подробнее</a>
								</div>
							</div>
							<div class="order-way swiper-slide">
								<picture class="order-way__image">
									<img src="<?php echo $asset; ?>images/content/static/detail-10.webp" alt="" width="460" height="335" loading="lazy">
								</picture>
								<div class="order-way__description">
									<div class="order-way__title">Срочный заказ</div>
									<div class="order-way__text">Поджимают сроки&nbsp;&mdash; не&nbsp;проблема! Выполним заказ в&nbsp;кратчайшие сроки без потери качества.</div>
									<a href="" class="btn">Подробнее</a>
								</div>
							</div>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Видео-инструкция: как заказать украшение</h2>
                    <div class="text">Посмотрите нашу видео-инструкцию, и&nbsp;вам станут понятны все условия. Всего 5&nbsp;минут.</div>
                    <div class="inner-video">
						<iframe class="inner-video__frame" src="https://vkvideo.ru/video_ext.php?oid=-46483382&id=456239595&hash=ba39fafc6b325c87&hd=2" width="853" allow="autoplay; encrypted-media; fullscreen; picture-in-picture; screen-wake-lock;" frameborder="0" allowfullscreen></iframe>
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
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-gift.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Помощь в&nbsp;выборе подарка</h3>
                                    <p>Наши специалисты окажут квалифицированную консультацию в&nbsp;вопросе выбора украшения в&nbsp;подарок.</p>
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

            <section class="process-section">
                <h2>Этапы изготовления изделия</h2>
                <div class="text">От&nbsp;эскиза до&nbsp;финишной полировки&nbsp;&mdash; полный цикл производства в&nbsp;нашей студии.</div>
                <div class="process swiper">
                    <div class="swiper-wrapper">
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="<?php echo $asset; ?>images/content/process-1.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Разработка эскиза</h3>
                                    <p>Создание эскиза и&nbsp;технического задания. Возможно ваше творческое участие: поправки вносятся в&nbsp;шоу-руме либо онлайн.</p>
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
                                    <p>Создание 3D-модели и&nbsp;рендера для утверждения и&nbsp;коррекции.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="<?php echo $asset; ?>images/content/process-3-1.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Прототипирование изделия</h3>
                                    <p>Изготовление точного прототипа вашего будущего украшения.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="<?php echo $asset; ?>images/content/process-4-1.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Литье изделия</h3>
                                    <p>Восковой прототип помещают в&nbsp;гипсовую форму, в&nbsp;печи воск испаряется, а&nbsp;на&nbsp;его место заливают расплавленный металл.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="<?php echo $asset; ?>images/content/process-5-1.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Ручная работа ювелира</h3>
                                    <p>Обработка, шлифовка, полировка изделия ювелиром.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="<?php echo $asset; ?>images/content/process-6-1.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Пробирование</h3>
                                    <p>Проверка, опробирование и&nbsp;клеймение в&nbsp;Государственной Пробирной Палате России. На&nbsp;изделие проставляется проба и&nbsp;именник.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="<?php echo $asset; ?>images/content/process-7-1.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Полировка и&nbsp;закрепка камней</h3>
                                    <p>Ответственная работа под микроскопом по&nbsp;закрепке камней на&nbsp;изделии.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="<?php echo $asset; ?>images/content/process-8-1.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Финишная обработка</h3>
                                    <p>Придание требуемой фактуры поверхности и&nbsp;нанесение гальванического покрытия (при необходимости).</p>
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
            </section>

            <section class="examples-section">
                <h2>Ваши идеи, реализованные нами</h2>
                <?php if ($project_categories) { ?>
                <div class="catalog-categories">
                    <div class="catalog-categories__list">
                        <?php foreach ($project_categories as $index => $category) { ?>
                        <a href="<?php echo htmlspecialchars($category['href'], ENT_QUOTES, 'UTF-8'); ?>" class="catalog-categories__link<?php echo $index === 0 ? ' active' : ''; ?>" data-project-category="<?php echo (int)$category['id']; ?>">
                            <span><?php echo htmlspecialchars($category['name'], ENT_QUOTES, 'UTF-8'); ?></span>
                            <?php if ($category['thumb']) { ?><img src="<?php echo htmlspecialchars($category['thumb'], ENT_QUOTES, 'UTF-8'); ?>" alt="" width="50" height="50" loading="lazy"><?php } ?>
                        </a>
                        <?php } ?>
                    </div>
                </div>
                <div id="how-order-projects"><?php echo $projects_html; ?></div>
                <?php } ?>
            </section>
            <script>
            (function($) {
                var request;
                $('.examples-section').on('click', '[data-project-category]', function(event) {
                    event.preventDefault();
                    var link = $(this);
                    if (request) {
                        request.abort();
                    }
                    request = $.get(<?php echo json_encode($projects_ajax_url); ?>, {category_id: link.data('project-category')}, function(html) {
                        var oldSlider = document.querySelector('#how-order-projects .examples');
                        if (oldSlider && oldSlider.swiper) {
                            oldSlider.swiper.destroy(true, true);
                        }
                        $('#how-order-projects').html(html);
                        $('.examples-section [data-project-category]').removeClass('active');
                        link.addClass('active');
                        var slider = document.querySelector('#how-order-projects .examples');
                        if (slider && typeof Swiper !== 'undefined') {
                            new Swiper(slider, {
                                slidesPerView: 2,
                                spaceBetween: 10,
                                navigation: {
                                    nextEl: slider.querySelector('.swiper-button-next'),
                                    prevEl: slider.querySelector('.swiper-button-prev')
                                },
                                pagination: {
                                    el: slider.querySelector('.swiper-pagination'),
                                    type: 'fraction'
                                },
                                breakpoints: {
                                    600: {slidesPerView: 3, spaceBetween: 10},
                                    837: {slidesPerView: 3, spaceBetween: 20},
                                    1351: {slidesPerView: 3, spaceBetween: 30}
                                }
                            });
                        }
                    });
                });
            })(jQuery);
            </script>

            <section class="consultation-section">
                <div class="consultation-section__wrap">
                    <div class="consultation-section__description">
                        <h2>Заявка на&nbsp;консультацию</h2>
                        <div class="text">Расскажите, что у&nbsp;вас есть, и&nbsp;мы&nbsp;предложим идеи и&nbsp;стоимость</div>
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
