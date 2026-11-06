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
                <div class="text">Команда профессиональных ювелиров, художников и&nbsp;модельеров эксклюзивных изделий, которые создаются для вас в&nbsp;нашей студии в&nbsp;центре Москвы.</div>

                <div class="inner-block">
                    <h2>Наша команда</h2>
                    <div class="text">В&nbsp;студии &laquo;Ювелиры Москвы&raquo; работают настоящие профессионалы своего дела: менеджеры, художники-технологи, 3D-модельеры и&nbsp;ювелиры с&nbsp;опытом работы от&nbsp;10&nbsp;до&nbsp;30&nbsp;лет. Каждый из&nbsp;них вносит свой вклад в&nbsp;создание вашего уникального украшения.</div>
                    <div class="employees swiper">
						<div class="swiper-wrapper">
							<?php foreach ($about_employees as $employee) { ?>
							<div class="employee swiper-slide">
								<div class="employee__inner">
									<picture class="employee__image">
										<img src="<?php echo htmlspecialchars($employee['image'], ENT_QUOTES, 'UTF-8'); ?>" alt="<?php echo htmlspecialchars($employee['name'], ENT_QUOTES, 'UTF-8'); ?>" width="480" height="592" loading="lazy">
									</picture>
									<div class="employee__description">
										<div class="employee__name"><?php echo htmlspecialchars($employee['name'], ENT_QUOTES, 'UTF-8'); ?></div>
										<div class="employee__position"><?php echo htmlspecialchars($employee['position'], ENT_QUOTES, 'UTF-8'); ?></div>
									</div>
								</div>
							</div>
							<?php } ?>
						</div>
						<div class="swiper-buttons">
							<div class="swiper-button-prev"></div>
							<div class="swiper-pagination"></div>
							<div class="swiper-button-next"></div>
						</div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Наша студия</h2>
                    <div class="text fix-width">Добро пожаловать к&nbsp;нам в&nbsp;гости! Наша студия расположена в&nbsp;самом центре Москвы&nbsp;&mdash; на&nbsp;Кузнецком мосту. Здесь вас ждут уютная атмосфера, профессиональные консультации и&nbsp;возможность увидеть процесс создания украшений.</div>

                    <div class="inner-slider inner-slider--big swiper">
                        <div class="swiper-wrapper">
                            <a href="<?php echo $asset; ?>images/content/about-1.webp" data-fancybox="inner-slider" class="inner-slider__item swiper-slide">
                                <picture class="inner-slider__image">
                                    <img src="<?php echo $asset; ?>images/content/about-1.webp" alt="" width="1270" height="640" loading="lazy">
                                </picture>
                            </a>
                            <a href="<?php echo $asset; ?>images/content/about-2.webp" data-fancybox="inner-slider" class="inner-slider__item swiper-slide">
                                <picture class="inner-slider__image">
                                    <img src="<?php echo $asset; ?>images/content/about-2.webp" alt="" width="1270" height="640" loading="lazy">
                                </picture>
                            </a>
                            <a href="<?php echo $asset; ?>images/content/about-3.webp" data-fancybox="inner-slider" class="inner-slider__item swiper-slide">
                                <picture class="inner-slider__image">
                                    <img src="<?php echo $asset; ?>images/content/about-3.webp" alt="" width="1270" height="640" loading="lazy">
                                </picture>
                            </a>
                            <a href="<?php echo $asset; ?>images/content/about-4.webp" data-fancybox="inner-slider" class="inner-slider__item swiper-slide">
                                <picture class="inner-slider__image">
                                    <img src="<?php echo $asset; ?>images/content/about-4.webp" alt="" width="1270" height="640" loading="lazy">
                                </picture>
                            </a>
                        </div>
                        <div class="swiper-buttons">
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-pagination"></div>
                            <div class="swiper-button-next"></div>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>СМИ о&nbsp;нас</h2>
                    <div class="text fix-width">&laquo;Ювелиры Москвы&raquo; становятся всё более популярными среди известных телеканалов. Нас приглашают экспертами в&nbsp;различные передачи. Телеканалы сами приезжают к&nbsp;нам, так что на&nbsp;этих роликах вы&nbsp;можете увидеть не&nbsp;только основателя компании Хомича Олега, но&nbsp;и&nbsp;заглянуть в&nbsp;укромные уголки нашего ювелирного царства.</div>

                    <div class="inner-video">
						<iframe class="inner-video__frame" src="https://vkvideo.ru/video_ext.php?oid=-46483382&id=456239552&hash=1d9424f3d3c7dc98&hd=1" width="640" height="360" allow="autoplay; encrypted-media; fullscreen; picture-in-picture; screen-wake-lock;" frameborder="0" allowfullscreen></iframe>
                        <div class="inner-video__caption">&laquo;Наше экспертное мнение на&nbsp;телеканале Москва24&raquo;.</div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Наши достижения и&nbsp;награды</h2>
                    <div class="text">Мы&nbsp;гордимся признанием нашего профессионализма. Студия отмечена наградами и&nbsp;дипломами за&nbsp;высокое качество работы и&nbsp;вклад в&nbsp;развитие ювелирного искусства.</div>
                    <div class="documents swiper">
                        <div class="swiper-wrapper">
                            <?php foreach ($about_awards as $award) { ?>
                            <div class="document swiper-slide">
                                <a href="<?php echo htmlspecialchars($award['full'], ENT_QUOTES, 'UTF-8'); ?>" class="document__link" data-fancybox="documents">
                                    <img src="<?php echo htmlspecialchars($award['thumb'], ENT_QUOTES, 'UTF-8'); ?>" alt="" width="228" height="323" loading="lazy">
                                </a>
                            </div>
                            <?php } ?>
                        </div>
                        <div class="swiper-buttons show-on-tab">
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-pagination"></div>
                            <div class="swiper-button-next"></div>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Почему выбирают &laquo;Ювелиров Москвы&raquo;</h2>
                    <div class="text">Нас выбирают за&nbsp;профессионализм, качество и&nbsp;индивидуальный подход к&nbsp;каждому клиенту.</div>
                    <div class="inner-extras-4 swiper dark">
                        <div class="swiper-wrapper">
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-health-care.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Индивидуальный подход</h3>
                                    <p>Мы&nbsp;создаём украшения по&nbsp;вашим эскизам и&nbsp;идеям, учитывая все пожелания.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-diamond.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Высокое качество</h3>
                                    <p>Используем только сертифицированные металлы и&nbsp;камни. Все изделия проходят проверку в&nbsp;Пробирной Палате.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-medal.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Опыт и&nbsp;мастерство</h3>
                                    <p>В&nbsp;нашей команде&nbsp;&mdash; ювелиры с&nbsp;опытом работы до&nbsp;30&nbsp;лет и&nbsp;художники-технологи.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-clipboard.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Гарантия и&nbsp;сервис</h3>
                                    <p>Пожизненная гарантия и&nbsp;бесплатное сервисное обслуживание на&nbsp;все наши изделия.</p>
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
                    <h2>Узнайте больше о&nbsp;нашей студии</h2>
                    <div class="text">Мы&nbsp;собрали в&nbsp;одном месте всё, что поможет вам узнать нас ближе: примеры выполненных работ, отзывы клиентов, публикации в&nbsp;СМИ и&nbsp;полезные статьи. А&nbsp;для партнёров и&nbsp;оптовых клиентов&nbsp;&mdash; отдельные условия сотрудничества.</div>
                    <div class="inner-links swiper">
                        <div class="swiper-wrapper">
                            <a href="" class="inner-link swiper-slide">
                                <img class="inner-link__icon" src="<?php echo $asset; ?>images/icons/icon-ring.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="h3">Наши работы</div>
                                <p>Реальные украшения, созданные в&nbsp;нашей студии по&nbsp;индивидуальным эскизам. Оцените уровень исполнения.</p>
                            </a>
                            <a href="" class="inner-link swiper-slide">
                                <img class="inner-link__icon" src="<?php echo $asset; ?>images/icons/icon-message-star.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="h3">Отзывы</div>
                                <p>Истории наших клиентов о&nbsp;том, как мы&nbsp;помогли воплотить их&nbsp;идеи в&nbsp;жизнь.</p>
                            </a>
                            <a href="" class="inner-link swiper-slide">
                                <img class="inner-link__icon" src="<?php echo $asset; ?>images/icons/icon-camera-video.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="h3">Обзоры</div>
                                <p>Видео и&nbsp;публикации, где мы&nbsp;делимся процессом создания украшений и&nbsp;раскрываем секреты мастерства.</p>
                            </a>
                            <a href="" class="inner-link swiper-slide">
                                <img class="inner-link__icon" src="<?php echo $asset; ?>images/icons/icon-newspaper.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="h3">Статьи</div>
                                <p>Полезные материалы о&nbsp;выборе металла, камней, уходе за&nbsp;украшениями и&nbsp;не&nbsp;только.</p>
                            </a>
                            <a href="" class="inner-link swiper-slide">
                                <img class="inner-link__icon" src="<?php echo $asset; ?>images/icons/icon-handshake.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="h3">Сотрудничество</div>
                                <p>Предложения для дизайнеров, мастеров и&nbsp;партнёров&nbsp;&mdash; как мы&nbsp;можем работать вместе.</p>
                            </a>
                            <a href="" class="inner-link swiper-slide">
                                <img class="inner-link__icon" src="<?php echo $asset; ?>images/icons/icon-briefcase.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="h3">Оптовикам и&nbsp;B2B сегменту</div>
                                <p>Специальные условия для бизнеса: серийное изготовление, работа под маркой заказчика, юридические лица.</p>
                            </a>
                            <a href="" class="inner-link swiper-slide">
                                <img class="inner-link__icon" src="<?php echo $asset; ?>images/icons/icon-folder.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="h3">Реквизиты</div>
                                <p>Юридическая информация о&nbsp;компании&nbsp;&mdash; ИП, ИНН, ОГРН, банковские реквизиты для договоров и&nbsp;оплат.</p>
                            </a>
                            <a href="" class="inner-link swiper-slide">
                                <img class="inner-link__icon" src="<?php echo $asset; ?>images/icons/icon-map.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="h3">Контакты</div>
                                <p>Как нас найти в&nbsp;Москве, режим работы, телефон, мессенджеры и&nbsp;форма обратной связи.</p>
                            </a>
                        </div>
                        <div class="swiper-buttons show-on-tab">
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-pagination"></div>
                            <div class="swiper-button-next"></div>
                        </div>
                    </div>
                </div>
            </section>
<?php echo $information_faq_html; ?>
</main>
<?php echo $footer; ?>
