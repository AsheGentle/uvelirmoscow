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
                <div class="text">Поджимают сроки? Мы&nbsp;выполним заказ качественно и&nbsp;в&nbsp;срок! Изготовим украшение за&nbsp;1&ndash;14 дней в&nbsp;зависимости от&nbsp;сложности. Срочный ремонт и&nbsp;гравировка&nbsp;&mdash; тоже доступны.</div>

                <div class="inner-block">
                    <h2>Поджимают сроки? Поможем!</h2>
                    <div class="inner-picture inner-picture--left">
                        <picture class="inner-picture__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-10.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <ul class="inner-list">
                                <li>Не&nbsp;нашли хороших обручальных колец в&nbsp;магазинах?</li>
                                <li>Ювелиры не&nbsp;успевают сделать серьги для вашей любимой ко&nbsp;Дню рождения?</li>
                                <li>Скоро Новый год, а&nbsp;подарки родным не&nbsp;смогли подобрать?</li>
                            </ul>
                            <p>Тогда вы&nbsp;обратились по&nbsp;адресу! Мы&nbsp;действительно берёмся и&nbsp;успешно выполняем срочные заказы. Доверьтесь, и&nbsp;вы&nbsp;не&nbsp;пожалеете!</p>
                            <button type="button" class="btn btn--big" data-modal="#modal-1">Оставить заявку</button>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Примеры заказов и&nbsp;сроков исполнения</h2>
                    <div class="variants-4 swiper">
                        <div class="swiper-wrapper">
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <picture class="variant__image">
                                        <img src="<?php echo $asset; ?>images/content/how-order-variant-1.webp" alt="" width="296" height="296" loading="lazy">
                                    </picture>
                                    <div class="variant__title">Кольца</div>
                                    <div class="variant__text">
                                        <p>Изготовление за&ndash;~&ndash;14&ndash;30 дней</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <picture class="variant__image">
                                        <img src="<?php echo $asset; ?>images/content/how-order-variant-2.webp" alt="" width="296" height="296" loading="lazy">
                                    </picture>
                                    <div class="variant__title">Серьги</div>
                                    <div class="variant__text">
                                        <p>Изготовление за&ndash;~&ndash;10&ndash;21 день</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <picture class="variant__image">
                                        <img src="<?php echo $asset; ?>images/content/how-order-variant-3.webp" alt="" width="296" height="296" loading="lazy">
                                    </picture>
                                    <div class="variant__title">Браслеты</div>
                                    <div class="variant__text">
                                        <p>Изготовление за&ndash;~&ndash;21&ndash;30 дней</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <picture class="variant__image">
                                        <img src="<?php echo $asset; ?>images/content/how-order-variant-4.webp" alt="" width="296" height="296" loading="lazy">
                                    </picture>
                                    <div class="variant__title">Подвески</div>
                                    <div class="variant__text">
                                        <p>Изготовление за&ndash;~&ndash;14&ndash;21 день</p>
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
                </div>

                <div class="inner-block">
                    <h2>Доплата за&nbsp;срочный заказ&nbsp;&mdash; всего 5&ndash;7%</h2>
                    <div class="inner-picture">
                        <picture class="inner-picture__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-18.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <p>При срочном заказе наценка назначается только на&nbsp;стоимость работы. Металлы и&nbsp;драгоценные камни считаются по&nbsp;обычной цене, поэтому суммарная переплата на&nbsp;украшение составит всего 5&ndash;7% от&nbsp;стандартной стоимости.</p>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Особенности срочного заказа украшений</h2>
                    <div class="inner-extras swiper dark">
                        <div class="swiper-wrapper">
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-materials.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Дата выдачи</h3>
                                    <p>Назовите дату события, не&nbsp;вычитая дней, и&nbsp;мы&nbsp;сделаем точный расчёт и&nbsp;сформируем оптимальное ценовое предложение с&nbsp;учётом требуемых сроков.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-medal.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Качество</h3>
                                    <p>Не&nbsp;все модели можно качественно изготовить в&nbsp;короткий срок. Но&nbsp;качество и&nbsp;внешний вид изделия&nbsp;&mdash; приоритет для нас. Поэтому мы&nbsp;либо не&nbsp;возьмёмся за&nbsp;ваш заказ, либо выполним его в&nbsp;том&nbsp;же качестве в&nbsp;стандартные сроки.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-tag.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Опробование</h3>
                                    <p>Вы&nbsp;получаете изделие с&nbsp;официальным пробирным клеймом, подтверждающим заявленную пробу драгоценного металла. Без этого клейма украшение не&nbsp;может быть передано заказчику.</p>
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
                    <h2>Какие услуги доступны в&nbsp;срочном порядке</h2>
                    <div class="text">В&nbsp;срочном порядке мы&nbsp;выполняем:</div>
                    <div class="inner-extras swiper dark">
                        <div class="swiper-wrapper">
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-materials.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Изготовление</h3>
                                    <p>Кольца, серьги, подвески, браслеты, цепочки и&nbsp;другие украшения</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-making.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Ремонт</h3>
                                    <p>Ремонт замков, пайка, увеличение/уменьшение размера, замена вставок, полировка</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-list-star.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Гравировка</h3>
                                    <p>Именная гравировка на&nbsp;украшениях (в&nbsp;зависимости от&nbsp;сложности)</p>
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
            </section>

            <section class="consultation-section">
                <h2>Срочный заказ? Звоните!</h2>
                <div class="text">Для срочных заказов звоните нам по&nbsp;телефону или оставляйте заявку. Мы&nbsp;работаем быстро и&nbsp;качественно.</div>
                <div class="consultation__buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Оставить заявку">Оставить заявку</button>
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
                <h2>Как оформить срочный заказ</h2>
                <div class="inner-picture">
                    <picture class="inner-picture__image">
                        <img src="<?php echo $asset; ?>images/content/static/detail-16.webp" alt="" width="1010" height="640" loading="lazy">
                    </picture>
                    <div class="inner-picture__info">
                        <ol>
                            <li>Свяжитесь с&nbsp;нами по&nbsp;телефону&nbsp;<?php echo htmlspecialchars($header_contacts_phone, ENT_QUOTES, 'UTF-8'); ?> или оставьте заявку на&nbsp;сайте</li>
                            <li>Назовите желаемую дату получения&nbsp;&mdash; мы&nbsp;рассчитаем возможность и&nbsp;стоимость</li>
                            <li>Утвердите дизайн, материалы и&nbsp;камни (эскиз и&nbsp;3D-модель готовим максимально быстро)</li>
                            <li>Внесите предоплату&nbsp;&mdash; и&nbsp;мы&nbsp;приступаем к&nbsp;работе немедленно</li>
                        </ol>
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
