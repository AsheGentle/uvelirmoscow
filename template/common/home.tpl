<?php echo $header; ?>
        <main>
            <section class="showcase">
                <div class="showcase__description">
                    <h1>Ювелирная мастерская <br>дизайн-студия</h1>
                    <div class="showcase__text">Изготовление ювелирных украшений на&nbsp;заказ</div>
                    <div class="showcase__blocks">
                        <div class="showcase__block">
                            <img class="showcase__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-necklaces.svg" alt="" width="48" height="48">
                            <span>Эксклюзивный дизайн</span>
                        </div>
                        <div class="showcase__block">
                            <img class="showcase__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-pen.svg" alt="" width="48" height="48">
                            <span>Воплощение любых идей</span>
                        </div>
                        <div class="showcase__block">
                            <img class="showcase__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-shield.svg" alt="" width="48" height="48">
                            <span>Пожизненная гарантия</span>
                        </div>
                    </div>
                    <div class="showcase__buttons">
                        <button type="button" class="btn btn--medium" data-modal="#modal-1" data-modal-title="Заказать украшение">Заказать украшение</button>
                    </div>
                </div>
                <picture class="showcase__image">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-img-main-mobile.webp, 
                            catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-img-main-mobile@2x.webp 2x" media="(max-width: 599px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-img-main-tab.webp,
                            catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-img-main-tab@2x.webp 2x" media="(max-width: 836px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-img-main.webp,
                            catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-img-main@2x.webp 2x">
                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-img-main.webp" alt="" width="620" height="620" fetchpriority="high">
                </picture>
                <picture class="showcase__bg">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-bg-main-mobile.webp" media="(max-width: 599px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-bg-main-tab.webp" media="(max-width: 836px)">
                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-bg-main.webp" alt="">
                </picture>
            </section>

            <section class="about-section">
                <h2>Философия качества и&nbsp;индивидуальности</h2>
                <div class="about swiper">
                    <div class="swiper-wrapper">
                        <div class="about__block swiper-slide">
                            <div class="about__description">
                                <h3>Создаём украшения с&nbsp;нуля</h3>
                                <p>Мы&nbsp;не&nbsp;перепродаём готовые изделия, а&nbsp;создаём их&nbsp;от&nbsp;первой линии эскиза до&nbsp;финишной полировки. В&nbsp;нашей мастерской работают мастера с&nbsp;опытом от&nbsp;10&nbsp;лет, а&nbsp;каждый этап производства прозрачен для заказчика.</p>
                            </div>
                            <picture class="about__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/about-img-1.webp" alt="" width="160" height="160" loading="lazy">
                            </picture>
                        </div>
                        <div class="about__block swiper-slide">
                            <div class="about__description">
                                <h3>Ваше доверие&nbsp;&mdash; наша главная ценность</h3>
                                <p>Поэтому мы&nbsp;используем только сертифицированные материалы, официально регистрируем каждое изделие в&nbsp;Пробирной палате и&nbsp;даём пожизненную гарантию на&nbsp;все работы.</p>
                            </div>
                            <picture class="about__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/about-img-2.webp" alt="" width="160" height="160" loading="lazy">
                            </picture>
                        </div>
                    </div>
                    <div class="swiper-buttons">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
                <?php if ($site_home_shorts) { ?>
                <div class="about-videos__block">
                    <h2>Шортсы</h2>
                    <div class="about-videos swiper">
                        <div class="swiper-wrapper">
                            <?php foreach ($site_home_shorts as $short) { ?>
                            <div class="about-video swiper-slide">
                                <a href="<?php echo htmlspecialchars($short['video'], ENT_QUOTES, 'UTF-8'); ?>" class="about-video__inner" data-fancybox="about-videos" data-type="iframe" data-width="450" data-height="800" data-autosize="true">
                                    <img src="<?php echo htmlspecialchars($short['preview_url'], ENT_QUOTES, 'UTF-8'); ?>" alt="Видео." width="282" height="505" loading="lazy">
                                </a>
                            </div>
                            <?php } ?>
                        </div>

                        <div class="swiper-buttons">
                            <a href="/o-studii/obzory" class="btn btn--big btn--border btn--dark">Все шортсы</a>
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-pagination"></div>
                            <div class="swiper-button-next"></div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </section>

            <section class="services-section">
                <h2>Услуги ювелирной дизайн-студии</h2>
                <div class="services swiper">
                    <div class="swiper-wrapper">
                        <div class="service swiper-slide">
                            <div class="service__inner">
                                <div class="h3">Изготовление <br>ювелирных изделий</div>
                                <picture class="service__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/service-1.webp" alt="" width="275" height="275" loading="lazy">
                                </picture>
                                <div class="service__text">Создаем украшения по&nbsp;вашему эскизу или с&nbsp;нуля. Работаем с&nbsp;вашими материалами.</div>
                                <a href="/uslugi/izgotovlenie" class="btn btn--more">
                                    <svg role="img" aria-label="Подробнее"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#arrow-long" /></svg>
                                </a>
                            </div>
                        </div>
                        <div class="service swiper-slide">
                            <div class="service__inner">
                                <div class="h3">Ремонт <br>ювелирных изделий</div>
                                <picture class="service__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/service-2.webp" alt="" width="275" height="275" loading="lazy">
                                </picture>
                                <div class="service__text">Восстановим любимые украшения: пайка, полировка, замена замков, ремонт оправы.</div>
                                <a href="/uslugi/remont-yuvelirnyh-izdeliy" class="btn btn--more">
                                    <svg role="img" aria-label="Подробнее"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#arrow-long" /></svg>
                                </a>
                            </div>
                        </div>
                        <div class="service swiper-slide">
                            <div class="service__inner">
                                <div class="h3">Проверка <br>бриллиантов</div>
                                <picture class="service__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/service-3.webp" alt="" width="275" height="275" loading="lazy">
                                </picture>
                                <div class="service__text">Профессиональная диагностика, оценка качества огранки, чистоты и&nbsp;подлинности с&nbsp;помощью геммологического оборудования.</div>
                                <a href="/uslugi/proverka-brilliantov-i-kamnej" class="btn btn--more">
                                    <svg role="img" aria-label="Подробнее"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#arrow-long" /></svg>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-buttons beige">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
                <div class="buttons">
                    <a href="/uslugi" class="btn btn--big">Смотреть все услуги</a>
                </div>
            </section>

            <section class="categories-section">
                <h2>Изготовим любое изделие из&nbsp;каталога</h2>
                <div class="categories">
                    <div class="category">
                        <h3>Кольца</h3>
                        <picture class="category__image">
                            <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-1-mobile.webp" media="(max-width: 599px)">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-1.webp" alt="" width="587" height="587" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/kolca-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/kolca" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Серьги</h3>
                        <picture class="category__image">
                            <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-2-mobile.webp" media="(max-width: 599px)">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-2.webp" alt="" width="184" height="184" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/sergi-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/sergi" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Браслеты</h3>
                        <picture class="category__image">
                            <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-3-mobile.webp" media="(max-width: 599px)">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-3.webp" alt="" width="184" height="184" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/braslety-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/braslety" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Цепочки</h3>
                        <picture class="category__image">
                            <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-4-mobile.webp" media="(max-width: 599px)">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-4.webp" alt="" width="328" height="328" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/cepochki-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/cepochki" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Кулоны <br>и&nbsp;Подвески</h3>
                        <picture class="category__image">
                            <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-5-mobile.webp" media="(max-width: 599px)">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-5.webp" alt="" width="328" height="328" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/podveski-i-kulony-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/podveski-i-kulony" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Колье</h3>
                        <picture class="category__image">
                            <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-6-mobile.webp" media="(max-width: 599px)">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-6.webp" alt="" width="184" height="184" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/kolie-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/kole" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Запонки</h3>
                        <picture class="category__image">
                            <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-7-mobile.webp" media="(max-width: 599px)">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-7.webp" alt="" width="184" height="184" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/zaponok" class="btn">Изготовление</a>
                            <a href="/katalog/zaponki" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Броши</h3>
                        <picture class="category__image">
                            <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-8-mobile.webp" media="(max-width: 599px)">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-8.webp" alt="" width="184" height="184" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/broshi-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/broshi" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Бодичейны</h3>
                        <picture class="category__image">
                            <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-9-mobile.webp" media="(max-width: 599px)">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-9.webp" alt="" width="184" height="184" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/bodichejny-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/bodichejny" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Диадемы <br>и&nbsp;тиары</h3>
                        <picture class="category__image">
                            <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-10-mobile.webp" media="(max-width: 599px)">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-10.webp" alt="" width="328" height="328" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/diademy-i-tiary-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/diademy-i-tiary" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Талисманы <br>и&nbsp;амулеты</h3>
                        <picture class="category__image">
                            <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-11-mobile.webp" media="(max-width: 599px)">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-11.webp" alt="" width="328" height="328" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/talismany-i-amulety-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/talismany-i-amulety" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Сувениры</h3>
                        <picture class="category__image">
                            <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-12-mobile.webp" media="(max-width: 599px)">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-12.webp" alt="" width="184" height="184" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/yuvelirnye-suveniry-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/yuvelirnye-suveniry" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Брелоки</h3>
                        <picture class="category__image">
                            <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-13-mobile.webp" media="(max-width: 599px)">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/category-13.webp" alt="" width="184" height="184" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/breloki-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/breloki" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                </div>
            </section>

            <section class="ideas-section">
                <h2>Воплотим идею украшения мечты в&nbsp;реальность</h2>
                <div class="ideas swiper">
                    <div class="swiper-wrapper">
                        <div class="idea swiper-slide">
                            <h3>Создадим эксклюзивный дизайн</h3>
                            <picture class="idea__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/idea-1.webp" alt="" width="275" height="275" loading="lazy">
                            </picture>
                            <div class="idea__info">
                                <div class="idea__title">
                                    <img class="idea__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-idea.svg" alt="" width="40" height="40" loading="lazy">
                                    <h4>По&nbsp;вашей авторской идее</h4>
                                </div>
                                <p class="idea__text">Наш дизайнер внимательно отнесётся ко&nbsp;всем вашим пожеланиям, учтёт нюансы и&nbsp;разработает уникальный эскиз украшения, полностью соответствующий вашему вкусу.</p>
                            </div>
                            <div class="idea__info">
                                <div class="idea__title">
                                    <img class="idea__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-picture-star.svg" alt="" width="40" height="40" loading="lazy">
                                    <h4>На&nbsp;основе фото или рисунка</h4>
                                </div>
                                <p class="idea__text">Воссоздадим изделие по&nbsp;вашему референсу&nbsp;&mdash; начиная от&nbsp;простого наброска и&nbsp;заканчивая сложным изображением&nbsp;&mdash; с&nbsp;учётом всех необходимых доработок, которые вы&nbsp;только пожелаете.</p>
                            </div>
                            <div class="idea__info">
                                <div class="idea__title">
                                    <img class="idea__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-schedule.svg" alt="" width="40" height="40" loading="lazy">
                                    <h4>По&nbsp;образцу из&nbsp;нашего каталога</h4>
                                </div>
                                <p class="idea__text">Любую модель из&nbsp;нашей коллекции можно персонализировать: изменить форму, выбрать другой металл или добавить камни.</p>
                            </div>
                        </div>
                        <div class="idea swiper-slide">
                            <h3>Реализуем вашу задумку в&nbsp;жизнь</h3>
                            <picture class="idea__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/idea-2.webp" alt="" width="275" height="275" loading="lazy">
                            </picture>
                            <div class="idea__info">
                                <div class="idea__title">
                                    <img class="idea__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-materials.svg" alt="" width="40" height="40" loading="lazy">
                                    <h4>Выбирайте металл</h4>
                                </div>
                                <p class="idea__text">Любое изделие может быть выполнено в&nbsp;золоте 585 или 750&nbsp;пробы, серебре 925 пробы или платине 950&nbsp;пробы. Выбирайте оттенок и&nbsp;состав металла под ваши предпочтения.</p>
                            </div>
                            <div class="idea__info">
                                <div class="idea__title">
                                    <img class="idea__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-diamond.svg" alt="" width="40" height="40" loading="lazy">
                                    <h4>Выбирайте камни</h4>
                                </div>
                                <p class="idea__text">Украшение можно дополнить бриллиантами с&nbsp;сертификатами GIA, а&nbsp;также сапфирами, рубинами, изумрудами, жемчугом и&nbsp;другими драгоценными камнями&nbsp;&mdash; на&nbsp;ваш выбор и&nbsp;под любой бюджет.</p>
                            </div>
                            <div class="idea__info">
                                <div class="idea__title">
                                    <img class="idea__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-necklaces.svg" alt="" width="40" height="40" loading="lazy">
                                    <h4>Подарите украшениям новую жизнь</h4>
                                </div>
                                <p class="idea__text">Изготовим новое изделие из&nbsp;вашего металла и&nbsp;с&nbsp;вашими камнями. Вы&nbsp;платите только за&nbsp;работу мастера&nbsp;&mdash; честно, прозрачно и&nbsp;без скрытых наценок.</p>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-buttons beige">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-3" data-modal-title="Воплотить свою идею">Воплотить свою идею</button>
                </div>
            </section>

            <section class="moments-section">
                <h2>Счастливые моменты</h2>
                <div class="text">Украшения для самых важных событий в&nbsp;жизни. Каждое изделие создаётся с&nbsp;душой и&nbsp;бережно хранит ваши воспоминания.</div>
                <div class="moments swiper">
                    <div class="swiper-wrapper">
                        <div class="moment swiper-slide">
                            <div class="moment__inner">
                                <div class="moment__description">
                                    <h3>Обручальные кольца</h3>
                                    <p>Символ вашей любви, который останется с&nbsp;вами на&nbsp;всю жизнь. Создадим идеальную пару&nbsp;&mdash; из&nbsp;вашего металла, с&nbsp;гравировкой или без, в&nbsp;классическом или современном стиле.</p>
                                </div>
                                <picture class="moment__image">
                                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/moment-1-mobile.webp" media="(max-width: 599px)">
                                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/moment-1-tab.webp" media="(max-width: 836px)">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/moment-1.webp" alt="" width="718" height="400" loading="lazy">
                                </picture>
                                <div class="moment__button">
                                    <a href="/katalog/obruchalnye-kolca" class="btn btn--more btn--fill">
                                        <svg role="img" aria-label="Подробнее"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#arrow-long" /></svg>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="moment swiper-slide">
                            <div class="moment__inner">
                                <div class="moment__description">
                                    <h3>На&nbsp;рождение ребенка</h3>
                                    <p>Нежный подарок, который будет согревать малыша с&nbsp;первых дней. Подвески с&nbsp;инициалами, браслеты с&nbsp;именем или украшения с&nbsp;датой рождения&nbsp;&mdash; сохраним самый важный момент в&nbsp;металле.</p>
                                </div>
                                <picture class="moment__image">
                                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/moment-2-mobile.webp" media="(max-width: 599px)">
                                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/moment-2-tab.webp" media="(max-width: 836px)">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/moment-2.webp" alt="" width="718" height="400" loading="lazy">
                                </picture>
                                <div class="moment__button">
                                    <a href="/katalog/podarki-na-rozhdenie-rebenka" class="btn btn--more btn--fill">
                                        <svg role="img" aria-label="Подробнее"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#arrow-long" /></svg>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="moment swiper-slide">
                            <div class="moment__inner">
                                <div class="moment__description">
                                    <h3>Помолвочные кольца</h3>
                                    <p>Кольцо, с&nbsp;которого начинается ваша история. Выберите бриллиант, дизайн и&nbsp;оправу&nbsp;&mdash; мы&nbsp;воплотим ваше признание в&nbsp;единственном экземпляре.</p>
                                </div>
                                <picture class="moment__image">
                                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/moment-3-mobile.webp" media="(max-width: 599px)">
                                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/moment-3-tab.webp" media="(max-width: 836px)">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/moment-3.webp" alt="" width="718" height="400" loading="lazy">
                                </picture>
                                <div class="moment__button">
                                    <a href="/katalog/pomolvochnye-kolca" class="btn btn--more btn--fill">
                                        <svg role="img" aria-label="Подробнее"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#arrow-long" /></svg>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="moment swiper-slide">
                            <div class="moment__inner">
                                <div class="moment__description">
                                    <h3>Сувениры и&nbsp;подарки</h3>
                                    <p>Знак внимания, который запомнится надолго. Милые украшения для близких, стильные аксессуары для коллег или памятные сувениры для родных&nbsp;&mdash; подберём идею под любой повод.</p>
                                </div>
                                <picture class="moment__image">
                                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/moment-4-mobile.webp" media="(max-width: 599px)">
                                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/moment-4-tab.webp" media="(max-width: 836px)">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/moment-4.webp" alt="" width="718" height="400" loading="lazy">
                                </picture>
                                <div class="moment__button">
                                    <a href="/katalog/yuvelirnye-suveniry" class="btn btn--more btn--fill">
                                        <svg role="img" aria-label="Подробнее"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#arrow-long" /></svg>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="moment swiper-slide">
                            <div class="moment__inner">
                                <div class="moment__description">
                                    <h3>Для него</h3>
                                    <p>Сдержанно, стильно, со&nbsp;смыслом. Брутальные браслеты, минималистичные кольца или подвески с&nbsp;гравировкой&nbsp;&mdash; то, что он&nbsp;будет носить каждый день. Отличный вариант для мужчины, который не&nbsp;любит пафос, но&nbsp;ценит качество и&nbsp;детали.</p>
                                </div>
                                <picture class="moment__image">
                                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/moment-5-mobile.webp" media="(max-width: 599px)">
                                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/moment-5-tab.webp" media="(max-width: 836px)">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/moment-5.webp" alt="" width="718" height="400" loading="lazy">
                                </picture>
                                <div class="moment__button">
                                    <a href="/katalog/muzhskie-ukrasheniya" class="btn btn--more btn--fill">
                                        <svg role="img" aria-label="Подробнее"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#arrow-long" /></svg>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="moment swiper-slide">
                            <div class="moment__inner">
                                <div class="moment__description">
                                    <h3>Для неё</h3>
                                    <p>Украшение, которое подчеркнёт её&nbsp;индивидуальность. Нежные серьги, изящные подвески или кольца с&nbsp;характером&nbsp;&mdash; создадим дизайн, от&nbsp;которого она не&nbsp;сможет оторвать взгляд. Идеально на&nbsp;день рождения, годовщину или без повода.</p>
                                </div>
                                <picture class="moment__image">
                                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/moment-6-mobile.webp" media="(max-width: 599px)">
                                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/moment-6-tab.webp" media="(max-width: 836px)">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/moment-6.webp" alt="" width="718" height="400" loading="lazy">
                                </picture>
                                <div class="moment__button">
                                    <a href="/katalog/zhenskie-ukrasheniya" class="btn btn--more btn--fill">
                                        <svg role="img" aria-label="Подробнее"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#arrow-long" /></svg>
                                    </a>
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
            </section>

            <section class="company-section">
                <h2>Уже более 20&nbsp;лет &laquo;Ювелиры Москвы&raquo; воплощают в&nbsp;реальность самые смелые идеи своих клиентов</h2>
                <div class="company swiper">
                    <div class="swiper-wrapper">
                        <div class="company-item swiper-slide">
                            <div class="company-item__inner">
                                <h3>Создаём эксклюзивные <br>изделия</h3>
                                <picture class="company-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/company-1.webp" alt="" width="275" height="275" loading="lazy">
                                </picture>
                                <div class="company-item__text">Применяем оригинальные конструктивные решения, выполняем сложные работы и&nbsp;остаёмся одной из&nbsp;немногих мастерских в&nbsp;Москве, которые профессионально работают с&nbsp;платиной.</div>
                            </div>
                        </div>
                        <div class="company-item swiper-slide">
                            <div class="company-item__inner">
                                <h3>Работаем официально <br>по&nbsp;договору</h3>
                                <picture class="company-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/company-2.webp" alt="" width="275" height="275" loading="lazy">
                                </picture>
                                <div class="company-item__text">Предоставляем прозрачную смету: вы&nbsp;точно знаете стоимость материалов (металл, вставки) и&nbsp;работы. Строго соблюдаем оговорённые сроки и&nbsp;несём полную юридическую ответственность.</div>
                            </div>
                        </div>
                        <div class="company-item swiper-slide">
                            <div class="company-item__inner">
                                <h3>Предоставляем пожизненную <br>гарантию</h3>
                                <picture class="company-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/company-3.webp" alt="" width="275" height="275" loading="lazy">
                                </picture>
                                <div class="company-item__text">Мы&nbsp;уверены в&nbsp;качестве каждого изделия, поэтому даём пожизненную гарантию на&nbsp;все украшения. Если потребуется ремонт или полировка&nbsp;&mdash; обращайтесь бесплатно в&nbsp;любое время.</div>
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

            <?php if ($site_home_reviews) { ?>
            <section class="reviews-section">
                <h2>Истории и&nbsp;отзывы наших клиентов</h2>
                <div class="text">Реальные истории людей, которые доверили нам создание своих украшений.</div>
                <div class="reviews swiper">
                    <div class="swiper-wrapper">
                        <?php foreach ($site_home_reviews as $review) { ?>
                        <div class="review swiper-slide">
                            <a href="<?php echo htmlspecialchars($review['video'], ENT_QUOTES, 'UTF-8'); ?>" class="review__inner" data-fancybox="review-videos" data-type="iframe" data-width="853" data-height="480" data-autosize="true">
                                <picture class="review__image">
                                    <img src="<?php echo htmlspecialchars($review['preview_url'], ENT_QUOTES, 'UTF-8'); ?>" alt="" width="698" height="300" loading="lazy">
                                </picture>
                                <div class="review__description">
                                    <div class="review__title">
                                        <span>Отзыв от</span>
                                        <span><?php echo $review['text']; ?></span>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <?php } ?>
                    </div>
                    <div class="swiper-buttons">
                        <a href="/o-studii/otzyvy" class="btn btn--big btn--border btn--dark">Все отзывы</a>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
            </section>
            <?php } ?>

            <section class="consultation-section">
                <h2>Приглашаем в&nbsp;нашу дизайн-студию <br>в&nbsp;центре Москвы!</h2>
                <div class="text">Совместно со&nbsp;всеми специалистами&nbsp;Вы сможете обсудить Ваше будущее украшение.</div>
                <div class="consultation__buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Заказать консультацию">Заказать консультацию</button>
                    <button type="button" class="btn btn--big btn--border" data-modal="#modal-2">Рассчитать стоимость</button>
                </div>
            </section>

            <section class="guarantees-section">
                <h2>Гарантируем качество используемых материалов</h2>
                <div class="guarantees swiper">
                    <div class="swiper-wrapper">
                        <div class="guarantee swiper-slide">
                            <div class="guarantee__inner">
                                <img class="guarantee__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-gai.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="guarantee__description">
                                    <h3>Сертификаты GIA</h3>
                                    <p>Бриллианты от&nbsp;0,4 карат сопровождаются международными сертификатами GIA (Gemological Institute of&nbsp;America). Это гарантия подлинности, чистоты, цвета, огранки и&nbsp;происхождения камня. Все характеристики подтверждены независимой экспертизой.</p>
                                </div>
                                <a href="https://www.gia.edu/report-check-landing" target="_blank" class="btn btn--more btn--fill">
                                    <svg role="img" aria-label="Подробнее"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#arrow-long" /></svg>
                                </a>
                            </div>
                        </div>
                        <div class="guarantee swiper-slide">
                            <div class="guarantee__inner">
                                <img class="guarantee__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-expertise.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="guarantee__description">
                                    <h3>Геммологическая экспертиза</h3>
                                    <p>Каждый драгоценный камень, используемый в&nbsp;наших украшениях, проходит проверку в&nbsp;геммологической лаборатории. По&nbsp;запросу предоставляется заключение о&nbsp;происхождении и&nbsp;характеристиках камня&nbsp;&mdash; будь&nbsp;то изумруд, рубин, сапфир или редкий турмалин.</p>
                                </div>
                            </div>
                        </div>
                        <div class="guarantee swiper-slide">
                            <div class="guarantee__inner">
                                <img class="guarantee__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-document.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="guarantee__description">
                                    <h3>Сертифицированные металлы</h3>
                                    <p>Золото, серебро и&nbsp;платину мы&nbsp;закупаем напрямую у&nbsp;крупных промышленных заводов и&nbsp;в&nbsp;Сбербанке России. Это исключает посредников и&nbsp;гарантирует чистоту сплава, соответствие заявленной пробе и&nbsp;стабильность качества.</p>
                                </div>
                            </div>
                        </div>
                        <div class="guarantee swiper-slide">
                            <div class="guarantee__inner">
                                <img class="guarantee__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-tag.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="guarantee__description">
                                    <h3>Апробирование в&nbsp;Пробирной палате</h3>
                                    <p>Каждое готовое изделие проходит обязательный контроль в&nbsp;Государственной пробирной палате. После проверки на&nbsp;него ставится официальное клеймо пробы и&nbsp;именник производителя. Вы&nbsp;получаете украшение с&nbsp;полным юридическим подтверждением качества.</p>
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
            </section>

            <section class="process-section">
                <h2>Как мы&nbsp;изготавливаем ювелирные изделия</h2>
                <div class="text">От&nbsp;эскиза до&nbsp;финишной полировки&nbsp;&mdash; полный цикл производства в&nbsp;нашей студии.</div>
                <div class="process swiper">
                    <div class="swiper-wrapper">
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/process-1.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Разработка эскиза и&nbsp;3D-модели</h3>
                                    <p>Художник создает эскиз вашей идеи, а&nbsp;затем 3D-дизайнер превращает его в&nbsp;объемную модель, где видны все детали и&nbsp;пропорции.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/process-2.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Выращивание восковки (3D-печать)</h3>
                                    <p>Восковая модель будущего украшения выращивается на высокоточном 3D-принтере — точная копия для дальнейшего литья.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/process-3.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Литье металла</h3>
                                    <p>Воск выжигается, а&nbsp;в&nbsp;пустоту заливается расплавленное золото, платина или серебро, создавая металлическую отливку.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/process-4.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Ручная работа и&nbsp;шлифовка</h3>
                                    <p>Ювелир вручную обрабатывает отливку: удаляет литники, подгоняет детали и&nbsp;полирует поверхность.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/process-5.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Пробирование и&nbsp;клеймение</h3>
                                    <p>Каждое изделие проходит контроль в&nbsp;Пробирной палате, где на&nbsp;него ставят государственное клеймо пробы.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/process-6.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Закрепка камней под микроскопом</h3>
                                    <p>Самый тонкий этап: мастер закрепляет каждый камень в&nbsp;оправе, работая с&nbsp;микроскопом, чтобы крепление было надежным и&nbsp;красивым.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/process-7.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Финишная обработка и&nbsp;полировка</h3>
                                    <p>Финальная доводка изделия: придание блеска, матирование или нанесение покрытия. Украшение готово!</p>
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

            <?php if ($site_home_project_slides) { ?>
            <section class="examples-section">
                <h2>Примеры созданных украшений в&nbsp;нашей студии</h2>
                <div class="examples swiper">
                    <div class="swiper-wrapper">
                        <?php foreach ($site_home_project_slides as $slide) { ?>
                        <div class="example swiper-slide">
                            <?php foreach ($slide as $project) { ?>
                            <a href="<?php echo htmlspecialchars($project['href'], ENT_QUOTES, 'UTF-8'); ?>" class="example__item">
                                <picture class="example__image">
                                    <img src="<?php echo htmlspecialchars($project['image'], ENT_QUOTES, 'UTF-8'); ?>" alt="<?php echo htmlspecialchars($project['name'], ENT_QUOTES, 'UTF-8'); ?>" width="490" height="490" loading="lazy">
                                </picture>
                                <div class="example__text"><span><?php echo htmlspecialchars($project['name'], ENT_QUOTES, 'UTF-8'); ?></span></div>
                            </a>
                            <?php } ?>
                        </div>
                        <?php } ?>
                    </div>
                    <div class="swiper-buttons">
                        <a href="/o-studii/nashi-raboty" class="btn btn--big btn--border btn--dark">Смотреть все работы</a>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
            </section>
            <?php } ?>

            <section class="stones-section">
                <h2>Как выбрать камень для украшения</h2>
                <div class="stones swiper">
                    <div class="swiper-wrapper">
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Бриллиант</h3>
                                <p>Чистота, сила&nbsp;&mdash; cамый твёрдый, подходит для повседневной носки</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-1.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Изумруд</h3>
                                <p>Мудрость, рост&nbsp;&mdash; требует бережного обращения, идеален для особых событий</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-2.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Рубин</h3>
                                <p>Страсть, энергия&nbsp;&mdash; ценится за&nbsp;насыщенный красный цвет</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-3.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Сапфир</h3>
                                <p>Верность, гармония&nbsp;&mdash; богатая палитра от&nbsp;синего до&nbsp;розового</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-4.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Цитрин</h3>
                                <p>Уют, тепло&nbsp;&mdash; доступный и&nbsp;тёплый камень</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-5.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Хризолит</h3>
                                <p>Защита, спокойствие&nbsp;&mdash; Светло-зелёный оттенок, подходит для подарков</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-6.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-buttons beige show-on-mob">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Получить консультацию">Получить консультацию</button>
                </div>
            </section>

            <section class="history-section">
                <h2>История одного украшения</h2>
                <div class="history-wrap">
                    <div class="history">
                        <div class="history__text">
                            <p>К&nbsp;нам пришёл клиент с&nbsp;фамильной реликвией&nbsp;&mdash; изумрудом, который хранился в&nbsp;семье больше 50&nbsp;лет. Камень был в&nbsp;старой, потускневшей оправе, которую невозможно было носить: конструкция не&nbsp;держалась, металл местами истончился.</p>
                            <p>Для клиента это был не&nbsp;просто камень. Это память о&nbsp;бабушке, история рода, которую хотелось сохранить, но&nbsp;в&nbsp;новом, современном виде.</p>
                        </div>
                        <div class="history__list swiper">
                            <div class="swiper-wrapper">
                                <div class="history__item swiper-slide">
                                    <img class="history__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-user-tick.svg" alt="" width="48" height="48" loading="lazy">
                                    <div class="history__description">
                                        <h3>Индивидуальная консультация</h3>
                                        <p>Мы&nbsp;встретились, чтобы услышать историю и&nbsp;понять, как клиент видит будущее украшение. Главные пожелания: изумруд должен оставаться центральным элементом, а&nbsp;само кольцо&nbsp;&mdash; быть удобным для повседневной носки.</p>
                                    </div>
                                </div>
                                <div class="history__item swiper-slide">
                                    <img class="history__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-pen.svg" alt="" width="48" height="48" loading="lazy">
                                    <div class="history__description">
                                        <h3>Разработка дизайна</h3>
                                        <p>Дизайнер предложил три варианта эскизов&nbsp;&mdash; от&nbsp;классической солитерной оправы до&nbsp;более сложного дизайна с&nbsp;дополнительными акцентами. Клиент выбрал лаконичное кольцо, где изумруд стал единственным, но&nbsp;главным акцентом.</p>
                                    </div>
                                </div>
                                <div class="history__item swiper-slide">
                                    <img class="history__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-box-circle.svg" alt="" width="48" height="48" loading="lazy">
                                    <div class="history__description">
                                        <h3>3D-моделирование и&nbsp;утверждение</h3>
                                        <p>Мы&nbsp;создали точную 3D-модель, чтобы клиент мог увидеть кольцо со&nbsp;всех сторон, оценить пропорции и&nbsp;убедиться, что оправа надёжно фиксирует камень. После утверждения запустили производство.</p>
                                    </div>
                                </div>
                                <div class="history__item swiper-slide">
                                    <img class="history__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-making.svg" alt="" width="48" height="48" loading="lazy">
                                    <div class="history__description">
                                        <h3>Изготовление в&nbsp;платине</h3>
                                        <p>Изумруд требовал особой надёжности, поэтому для оправы выбрали платину&nbsp;&mdash; самый прочный и&nbsp;благородный металл. Мастера вручную закрепили камень, сохранив его целостность и&nbsp;природный блеск.</p>
                                    </div>
                                </div>
                                <div class="history__item swiper-slide">
                                    <img class="history__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-ring.svg" alt="" width="48" height="48" loading="lazy">
                                    <div class="history__description">
                                        <h3>Результат</h3>
                                        <p>Через 14&nbsp;дней клиент получил кольцо, которое теперь носит каждый день. Изумруд больше не&nbsp;лежит в&nbsp;шкатулке&nbsp;&mdash; он&nbsp;живёт, радует и&nbsp;продолжает семейную историю.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="history__buttons">
                            <button type="button" class="btn btn--big btn--arrow" data-modal="#modal-3" data-modal-title="Начать свою историю">
                                <span>Начать свою историю</span>
                                <svg aria-hidden="true"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#arrow" /></svg>
                            </button>
                        </div>
                    </div>
                    <div class="history-image">
                        <picture class="history-image__picture">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/history-image.webp" alt="" width="491" height="491" loading="lazy">
                        </picture>
                    </div>
                </div>
            </section>

            <?php echo $employees; ?>

            <?php if ($site_home_faq) { ?>
            <section class="faq-section">
                <h2>Часто задаваемые вопросы</h2>
                <div class="faq-list">
                    <?php foreach ($site_home_faq as $faq) { ?>
                    <div class="faq-item">
                        <div class="faq-item__question">
                            <h3><?php echo htmlspecialchars($faq['question'], ENT_QUOTES, 'UTF-8'); ?></h3>
                        </div>
                        <div class="faq-item__answer"><?php echo $faq['answer']; ?></div>
                    </div>
                    <?php } ?>
                </div>
            </section>
            <?php } ?>

            <?php if (trim($site_home_text) !== '') { ?>
            <section class="text-section">
                <?php echo $site_home_text; ?>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-3" data-modal-title="Обсудить идею">Обсудить идею</button>
                </div>
            </section>
            <?php } ?>
        </main>
<?php echo $footer; ?>
