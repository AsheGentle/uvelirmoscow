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
                <div class="text">Мы&nbsp;предлагаем выгодные условия для оптовых закупок и&nbsp;корпоративного сотрудничества. Изготовление наградных украшений, сувениров и&nbsp;подарков для компаний любого масштаба.</div>

                <div class="inner-block">
                    <h2>Для кого мы&nbsp;работаем в&nbsp;B2B-сегменте</h2>
                    <div class="text">Мы&nbsp;сотрудничаем с&nbsp;компаниями из&nbsp;разных сфер, предлагая индивидуальные условия и&nbsp;высокое качество продукции.</div>
                    <div class="inner-extras swiper dark rows">
                        <div class="swiper-wrapper">
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-bag.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Ювелирные салоны и&nbsp;магазины</h3>
                                    <p>поставка эксклюзивных украшений для розничной продажи.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-tower.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Корпоративные клиенты</h3>
                                    <p>наградные украшения, подарки для сотрудников и&nbsp;партнёров.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-wedding.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Свадебные агентства</h3>
                                    <p>обручальные и&nbsp;помолвочные кольца для ваших клиентов.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-magicpen.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Дизайнеры и&nbsp;бренды</h3>
                                    <p>изготовление авторских коллекций под вашим брендом.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-map-pin.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Туристические компании</h3>
                                    <p>сувенирная продукция и&nbsp;памятные знаки.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-medal.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Спортивные и&nbsp;общественные организации</h3>
                                    <p>медали, нагрудные знаки, наградная атрибутика.</p>
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
                    <h2>Условия для оптовых закупок</h2>
                    <div class="text fix-width">Мы&nbsp;предлагаем гибкие условия для оптовых заказов, адаптированные под ваши потребности.</div>
                    <div class="inner-picture inner-picture--left">
                        <picture class="inner-picture__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-28.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <ul class="inner-list image">
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-coins.svg" alt="" width="32" height="32">
                                    <span>Минимальный заказ: от&nbsp;10&nbsp;единиц одного изделия</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-calendar.svg" alt="" width="32" height="32">
                                    <span>Сроки изготовления: от&nbsp;5&nbsp;рабочих дней (зависит от&nbsp;сложности и&nbsp;объёма)</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-pen.svg" alt="" width="32" height="32">
                                    <span>Индивидуальный дизайн: разработка эксклюзивных моделей под ваш бренд</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-materials.svg" alt="" width="32" height="32">
                                    <span>Материалы: золото, серебро, платина, драгоценные и&nbsp;полудрагоценные камни</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-box-line.svg" alt="" width="32" height="32">
                                    <span>Документация: полный пакет документов, сертификаты и&nbsp;декларации</span>
                                </li>
                            </ul>
                            <p>Цены на&nbsp;оптовые заказы формируются индивидуально в&nbsp;зависимости от&nbsp;объёма, материалов и&nbsp;сложности.</p>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Почему выбирают нас для корпоративных заказов</h2>
                    <div class="inner-extras-4 swiper dark">
                        <div class="swiper-wrapper">
                            <div class="inner-extra swiper-slide">
                                <div class="inner-extra__inner">
                                    <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-medal.svg" alt="" width="48" height="48" loading="lazy">
                                    <div class="inner-extra__description">
                                        <h3>Высокое качество</h3>
                                        <p>используем только сертифицированные металлы и&nbsp;камни. Все изделия проходят проверку в&nbsp;Пробирной Палате.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <div class="inner-extra__inner">
                                    <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-diamond.svg" alt="" width="48" height="48" loading="lazy">
                                    <div class="inner-extra__description">
                                        <h3>Опыт работы</h3>
                                        <p>более 15&nbsp;лет на&nbsp;рынке ювелирных услуг. Реализованы сотни корпоративных проектов.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <div class="inner-extra__inner">
                                    <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-health-care.svg" alt="" width="48" height="48" loading="lazy">
                                    <div class="inner-extra__description">
                                        <h3>Индивидуальный подход</h3>
                                        <p>разрабатываем уникальные дизайны под ваши задачи и&nbsp;бренд.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <div class="inner-extra__inner">
                                    <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-calc.svg" alt="" width="48" height="48" loading="lazy">
                                    <div class="inner-extra__description">
                                        <h3>Гибкие условия</h3>
                                        <p>адаптируемся под ваш бюджет, сроки и&nbsp;объёмы.</p>
                                    </div>
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
                    <h2>Скидки и&nbsp;цены</h2>
                    <div class="text fix-width">Мы&nbsp;предлагаем систему скидок в&nbsp;зависимости от&nbsp;объёма заказа.</div>
                    <div class="inner-picture">
                        <picture class="inner-picture__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-16.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <h3>Цены предоставляются по&nbsp;запросу&nbsp;&mdash; свяжитесь с&nbsp;нашим B2B-менеджером для получения индивидуального коммерческого предложения.</h3>
                            <ul class="inner-list image small columns">
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-discount.svg" alt="" width="48" height="48">
                                    <span>
                                        <span class="inner-list__title">Скидка&nbsp;5%</span>
                                        При заказе от&nbsp;10&nbsp;шт.
                                    </span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-discount.svg" alt="" width="48" height="48">
                                    <span>
                                        <span class="inner-list__title">Скидка&nbsp;10%</span>
                                        При заказе от&nbsp;30&nbsp;шт.
                                    </span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-discount.svg" alt="" width="48" height="48">
                                    <span>
                                        <span class="inner-list__title">Скидка&nbsp;15%</span>
                                        При заказе от&nbsp;50&nbsp;шт.
                                    </span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-discount.svg" alt="" width="48" height="48">
                                    <span>
                                        <span class="inner-list__title">Скидка&nbsp;20%</span>
                                        При заказе от&nbsp;100&nbsp;шт. (обсуждается индивидуально)
                                    </span>
                                </li>
                            </ul>
                            <p class="small">Скидки зависят от&nbsp;сложности изделия, материалов и&nbsp;сроков. Точные условия уточняйте у&nbsp;менеджера.</p>
                        </div>
                    </div>
                </div>


                <div class="inner-block">
                    <h2>Примеры наших корпоративных заказов</h2>
                    <div class="text">Мы&nbsp;успешно реализовали проекты для компаний из&nbsp;разных сфер.</div>
                    <div class="inner-sliders">
                        <div class="inner-slider__wrap">
                            <div class="inner-slider swiper">
                                <div class="swiper-wrapper">
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-5-1.webp" data-fancybox="ba-1" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-5-1.webp" alt="" width="750" height="400" loading="lazy">
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
                                    <div class="swiper-buttons__description">
                                        <p class="h3">Наградные украшения</p>
                                        <p>Медали, нагрудные знаки, кубки для спортивных и&nbsp;корпоративных мероприятий.</p>
                                    </div>
                                    <div class="swiper-button-prev"></div>
                                    <div class="swiper-button-next"></div>
                                </div>
                            </div>
                        </div>
                        <div class="inner-slider__wrap">
                            <div class="inner-slider swiper">
                                <div class="swiper-wrapper">
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-6-1.webp" data-fancybox="ba-2" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-6-1.webp" alt="" width="750" height="400" loading="lazy">
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
                                    <div class="swiper-buttons__description">
                                        <p class="h3">Корпоративные подарки</p>
                                        <p>Именные брелоки, запонки, значки с&nbsp;логотипом компании.</p>
                                    </div>
                                    <div class="swiper-button-prev"></div>
                                    <div class="swiper-button-next"></div>
                                </div>
                            </div>
                        </div>
                        <div class="inner-slider__wrap">
                            <div class="inner-slider swiper">
                                <div class="swiper-wrapper">
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-7-1.webp" data-fancybox="ba-3" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-7-1.webp" alt="" width="750" height="400" loading="lazy">
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
                                    <div class="swiper-buttons__description">
                                        <p class="h3">Эксклюзивные коллекции</p>
                                        <p>Авторские украшения для ювелирных брендов. <br>
                                            Каждый проект уникален&nbsp;&mdash; мы&nbsp;подбираем решения под ваши задачи и&nbsp;бюджет.</p>
                                    </div>
                                    <div class="swiper-button-prev"></div>
                                    <div class="swiper-button-next"></div>
                                </div>
                            </div>
                        </div>
                        <div class="inner-slider__wrap">
                            <div class="inner-slider swiper">
                                <div class="swiper-wrapper">
                                    <a href="<?php echo $asset; ?>images/content/samples/sample-8-1.webp" data-fancybox="ba-4" class="inner-slider__item swiper-slide">
                                        <picture class="inner-slider__image center">
                                            <img src="<?php echo $asset; ?>images/content/samples/sample-8-1.webp" alt="" width="750" height="400" loading="lazy">
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
                                    <div class="swiper-buttons__description">
                                        <p class="h3">Обручальные кольца</p>
                                        <p>оптовые поставки для свадебных агентств и&nbsp;салонов.</p>
                                    </div>
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
                        <h2>Заявка на&nbsp;оптовый заказ</h2>
                        <div class="text">Заполните форму, и&nbsp;мы&nbsp;подготовим коммерческое предложение с&nbsp;учётом ваших потребностей</div>
                    </div>
                    <form class="consultation-section__form form">
                        <div class="form__row">
                            <label class="form__element">
                                <input type="text" class="inputbox" placeholder="Ваше имя*" required>
                            </label>
                            <label class="form__element">
                                <input type="text" class="inputbox" placeholder="Название компании*" required>
                            </label>
                        </div>
                        <div class="form__row">
                            <label class="form__element">
                                <input type="text" class="inputbox inputbox-phone" placeholder="+7 (___)___-__-__*" required>
                            </label>
                            <label class="form__element">
                                <input type="text" class="inputbox" placeholder="Email*" required>
                            </label>
                        </div>
                        <div class="form__row">
                            <label class="form__element">
                                <select class="inputbox">
                                    <option value="" selected disabled>Тип изделия</option>
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
                                <input type="text" class="inputbox" placeholder="Количество">
                            </label>
                            <label class="form__element">
                                <input type="text" class="inputbox" placeholder="Желаемый бюджет">
                            </label>
                        </div>
                        <div class="form__row">
                            <label class="form__element">
                                <textarea class="inputbox" placeholder="Дополнительные пожелания"></textarea>
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
                    <h3>Контакты B2B-менеджера</h3>
                    <div class="contacts-map__item">
                        <span>Для оперативной связи вы&nbsp;можете обратиться к&nbsp;нашему B2B-менеджеру.</span>
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
                        <span>Звоните или пишите в&nbsp;рабочее время&nbsp;&mdash; мы&nbsp;всегда готовы обсудить ваши задачи.</span>
                    </div>
                </div>
            </section>

            <?php echo $information_faq_html; ?>
        </main>
<?php echo $footer; ?>
