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
                <div class="text">Приглашаем дизайнеров, свадебные агентства, салоны и&nbsp;других профессионалов к&nbsp;взаимовыгодному партнёрству. Вместе мы&nbsp;создаём украшения, которые радуют клиентов и&nbsp;приносят прибыль.</div>

                <div class="inner-block">
                    <h2>Для кого это сотрудничество</h2>
                    <div class="text">Украшения для самых важных событий в&nbsp;жизни. Каждое изделие создаётся с&nbsp;душой и&nbsp;бережно хранит ваши воспоминания.</div>
                    <div class="inner-extras swiper dark rows">
                        <div class="swiper-wrapper">
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-pen.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Дизайнеры и&nbsp;художники</h3>
                                    <p>Реализуйте свои творческие проекты с&nbsp;нашим производством.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-wedding.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Свадебные агентства</h3>
                                    <p>Предлагайте своим клиентам эксклюзивные обручальные и&nbsp;помолвочные кольца.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-bag.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Ювелирные салоны</h3>
                                    <p>Расширьте ассортимент уникальными украшениями на&nbsp;заказ.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-cosmetic-brush.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Стилисты и&nbsp;имиджмейкеры</h3>
                                    <p>Создавайте образы с&nbsp;авторскими украшениями.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-camera-video.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Блогеры и&nbsp;инфлюенсеры</h3>
                                    <p>Делитесь качественным контентом с&nbsp;аудиторией.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-tower.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Корпоративные клиенты</h3>
                                    <p>Заказывайте наградные и&nbsp;памятные украшения для сотрудников и&nbsp;партнёров.</p>
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
                    <h2>Условия и&nbsp;выгоды для партнёров</h2>
                    <div class="text fix-width">Мы&nbsp;предлагаем гибкие и&nbsp;прозрачные условия сотрудничества. Вы&nbsp;получаете:</div>
                    <div class="inner-picture inner-picture--left">
                        <picture class="inner-picture__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-17.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <ul class="inner-list image">
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-coins.svg" alt="" width="32" height="32">
                                    <span>Комиссионное вознаграждение&nbsp;&mdash; процент от&nbsp;каждого заказа, приведённого вами.</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-sale.svg" alt="" width="32" height="32">
                                    <span>Специальные скидки&nbsp;&mdash; на&nbsp;изготовление украшений для ваших личных проектов.</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-medal.svg" alt="" width="32" height="32">
                                    <span>Эксклюзивные условия&nbsp;&mdash; индивидуальные предложения для крупных партнёров.</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-megaphone.svg" alt="" width="32" height="32">
                                    <span>Маркетинговая поддержка&nbsp;&mdash; совместные акции, рекламные материалы и&nbsp;промо-коды.</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-user-tick.svg" alt="" width="32" height="32">
                                    <span>Приоритетное обслуживание&nbsp;&mdash; ускоренное изготовление заказов для ваших клиентов.</span>
                                </li>
                            </ul>
                            <p>Условия обсуждаются индивидуально и&nbsp;зависят от&nbsp;формата и&nbsp;объёма сотрудничества.</p>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Как стать партнёром</h2>
                    <div class="text fix-width">Процесс подключения максимально простой и&nbsp;занимает минимум времени.</div>
                    <div class="inner-picture">
                        <picture class="inner-picture__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-16.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <h3>На&nbsp;что можно потратить карту:</h3>
                            <ol>
                                <li><span>Оставьте заявку через форму на&nbsp;сайте или свяжитесь с&nbsp;менеджером по&nbsp;партнёрству.</span></li>
                                <li><span>Обсудите условия сотрудничества, формат и&nbsp;комиссионные.</span></li>
                                <li><span>
                                        <span class="inner-list__title">Берёмся за&nbsp;все работы</span>
                                        Выполняем все виды работ, и&nbsp;даже&nbsp;те, от&nbsp;которых отказываются другие компании.
                                    </span></li>
                                <li><span>Подпишите договор и&nbsp;начните работать&nbsp;&mdash; мы&nbsp;предоставим все необходимые материалы и&nbsp;поддержку.</span></li>
                            </ol>
                            <p>Мы&nbsp;ценим каждого партнёра и&nbsp;готовы адаптировать условия под ваши потребности.</p>
                        </div>
                    </div>
                </div>
            </section>

            <section class="consultation-section">
                <div class="consultation-section__wrap">
                    <div class="consultation-section__description">
                        <h2>Заявка на&nbsp;сотрудничество</h2>
                        <div class="text">Заполните форму, и&nbsp;мы&nbsp;свяжемся с&nbsp;вами в&nbsp;ближайшее время</div>
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
                                <input type="text" class="inputbox" placeholder="Email">
                            </label>
                            <label class="form__element">
                                <input type="text" class="inputbox" placeholder="Название компании">
                            </label>
                        </div>
                        <div class="form__row">
                            <label class="form__element">
                                <select class="inputbox">
                                    <option value="" selected disabled>Сфера деятельности</option>
                                    <option value="1">Золото</option>
                                    <option value="2">Серебро</option>
                                    <option value="3">Платина</option>
                                    <option value="4">Драгоценные камни</option>
                                    <option value="5">Полудрагоценные камни</option>
                                </select>
                            </label>
                        </div>
                        <div class="form__row">
                            <label class="form__element">
                                <textarea class="inputbox" placeholder="Сообщение"></textarea>
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

            <section class="contacts-map-section">
                <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A6f7ce23971ee56e1fa1aef8eda263835efd7cd5166a010141cc41b247884f650&amp;width=100%25&amp;height=100%25&amp;lang=ru_RU&amp;scroll=false"></script>
                <div class="contacts-map">
                    <h3>Контакты менеджера по&nbsp;партнёрству</h3>
                    <div class="contacts-map__item">
                        <span>Для оперативной связи вы&nbsp;можете обратиться к&nbsp;нашему менеджеру по&nbsp;развитию партнёрских отношений.</span>
                    </div>
                    <div class="contacts-map__item">
                        <img src="<?php echo $asset; ?>images/icons/icon-phone.svg" alt="" width="48" height="48" loading="lazy">
                        <?php if ($header_contacts_phone) { ?><span><a href="<?php echo htmlspecialchars($header_contacts_phone_href, ENT_QUOTES, 'UTF-8'); ?>"><?php echo htmlspecialchars($header_contacts_phone, ENT_QUOTES, 'UTF-8'); ?></a></span><?php } ?>
                    </div>
                    <div class="contacts-map__item">
                        <img src="<?php echo $asset; ?>images/icons/icon-email.svg" alt="" width="48" height="48" loading="lazy">
                        <?php if ($header_contacts_email) { ?><span><a href="mailto:<?php echo htmlspecialchars($header_contacts_email, ENT_QUOTES, 'UTF-8'); ?>"><?php echo htmlspecialchars($header_contacts_email, ENT_QUOTES, 'UTF-8'); ?></a></span><?php } ?>
                    </div>
                    <div class="contacts-map__item">
                        <img src="<?php echo $asset; ?>images/icons/icon-location.svg" alt="" width="48" height="48" loading="lazy">
                        <span>г. Москва, ул. Кузнецкий мост, дом&nbsp;7, строение&nbsp;3, этаж&nbsp;2</span>
                    </div>
                    <div class="contacts-map__item">
                        <span>Звоните или пишите в&nbsp;любое время&nbsp;&mdash; мы&nbsp;всегда на&nbsp;связи.</span>
                    </div>
                </div>
            </section>

            <?php echo $information_faq_html; ?>
        </main>
<?php echo $footer; ?>
