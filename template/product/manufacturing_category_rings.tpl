<?php echo $header; ?>
<main>
            <section class="showcase showcase--breadcrumbs">
                <ul class="breadcrumbs" itemscope itemtype="https://schema.org/BreadcrumbList">
                    <?php $breadcrumb_count = count($breadcrumbs); ?>
                    <?php foreach ($breadcrumbs as $position => $breadcrumb) { ?>
                    <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                        <?php if ($position + 1 === $breadcrumb_count) { ?>
                        <span class="breadcrumbs__link"><span itemprop="name"><?php echo htmlspecialchars($breadcrumb['text'], ENT_QUOTES, 'UTF-8'); ?></span><meta itemprop="position" content="<?php echo $position + 1; ?>"></span>
                        <?php } else { ?>
                        <a href="<?php echo htmlspecialchars($breadcrumb['href'], ENT_QUOTES, 'UTF-8'); ?>" class="breadcrumbs__link" itemprop="item"><span itemprop="name"><?php echo htmlspecialchars($breadcrumb['text'], ENT_QUOTES, 'UTF-8'); ?></span><meta itemprop="position" content="<?php echo $position + 1; ?>"></a>
                        <?php } ?>
                    </li>
                    <?php } ?>
                </ul>
                <div class="showcase__description">
                    <h1>Изготовление колец  на&nbsp;заказ в&nbsp;Москве</h1>
                    <div class="showcase__text">
                        Уникальное кольцо, созданное специально для Вас. От&nbsp;классических обручальных до&nbsp;эксклюзивных дизайнерских моделей. Работаем с&nbsp;золотом, серебром, платиной, бриллиантами и&nbsp;драгоценными камнями. Вы&nbsp;получите именно&nbsp;то, о&nbsp;чём мечтали!
                    </div>
                    <div class="showcase__buttons">
                        <button type="button" class="btn btn--medium" data-modal="#modal-1" data-modal-title="Бесплатная консультация">Бесплатная консультация</button>
                        <button type="button" class="btn btn--border btn--medium" data-modal="#modal-2">Рассчитать стоимость</button>
                    </div>
                </div>
                <picture class="showcase__image">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/showcase-img-rings-mobile.webp" media="(max-width: 599px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/showcase-img-rings-tab.webp" media="(max-width: 836px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/showcase-img-rings.webp">
                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/showcase-img-rings.webp" alt="" width="620" height="620">
                </picture>
                <picture class="showcase__bg">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/showcase-bg-rings-mobile.webp" media="(max-width: 599px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/showcase-bg-rings-tab.webp" media="(max-width: 836px)">
                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/showcase-bg-rings.webp" alt="">
                </picture>
            </section>

<?php if ($category_wall) { ?>
            <section class="types-section">
                <h2>Виды колец, которые мы изготавливаем на заказ</h2>
                <div class="text">Изготавливаем кольца любой сложности&nbsp;&mdash; от&nbsp;лаконичных обручальных до&nbsp;массивных перстней с&nbsp;редкими камнями. Чтобы упростить выбор, мы&nbsp;структурировали каталог по&nbsp;ключевым типам. Перейдя в&nbsp;интересующий вас раздел, вы&nbsp;оцените наши готовые работы и&nbsp;сможете определиться с&nbsp;будущим дизайном. У&nbsp;каждого направления&nbsp;&mdash; свой мастер-специалист, который ответит на&nbsp;все вопросы.</div>
                <div class="types">
                    <?php foreach ($category_wall as $group) { ?>
                    <?php if ($group['name'] !== '') { ?><div class="types__title"><?php echo htmlspecialchars($group['name'], ENT_QUOTES, 'UTF-8'); ?></div><?php } ?>
                    <div class="types__list">
                        <?php foreach ($group['items'] as $item) { ?>
                        <?php if (!empty($item['link'])) { ?><a href="<?php echo htmlspecialchars(html_entity_decode($item['link'], ENT_QUOTES, 'UTF-8'), ENT_QUOTES, 'UTF-8'); ?>" class="types__item"><?php } else { ?><div class="types__item"><?php } ?>
                            <div class="types__description<?php echo empty($item['link']) ? ' no_link_description' : ''; ?>">
                                <h3><?php echo htmlspecialchars(isset($item['title']) ? $item['title'] : '', ENT_QUOTES, 'UTF-8'); ?></h3>
                                <?php echo isset($item['text']) ? $item['text'] : ''; ?>
                            </div>
                            <picture class="types__image"><img src="<?php echo htmlspecialchars($item['image_url'], ENT_QUOTES, 'UTF-8'); ?>" alt="<?php echo htmlspecialchars(isset($item['title']) ? $item['title'] : '', ENT_QUOTES, 'UTF-8'); ?>" width="198" height="198" loading="lazy"></picture>
                        <?php if (!empty($item['link'])) { ?></a><?php } else { ?></div><?php } ?>
                        <?php } ?>
                    </div>
                    <?php } ?>
                    <button type="button" class="btn btn--big btn--dark types-more">Показать еще</button>
                </div>
            </section>
            <?php } ?>
            <section class="why-section">
                <h2>Почему выгоднее заказать изготовление кольца, чем купить готовое?</h2>
                <div class="why__title">Готовые кольца из&nbsp;магазина&nbsp;&mdash; это всегда компромисс между желанием и&nbsp;реальностью...</div>
                <div class="why__text">Часто они не&nbsp;подходят по&nbsp;размеру, имеют усредненный дизайн или стоят неоправданно дорого из-за бренда и&nbsp;массового производства. Индивидуальное изготовление решает все эти проблемы: вы&nbsp;получаете кольцо, идеально сидящее на&nbsp;пальце, выполненное по&nbsp;вашему уникальному эскизу, с&nbsp;тем металлом и&nbsp;камнями, которые выбрали именно&nbsp;вы.</div>
                <div class="why swiper">
                    <div class="swiper-wrapper">
                        <div class="why__item swiper-slide">
                            <img class="why__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-magicpen.svg" alt="" width="48" height="48" loading="lazy">
                            <h3>Уникальность и&nbsp;эксклюзивность</h3>
                            <p>Вы&nbsp;становитесь обладателем украшения, которого больше нет ни&nbsp;у&nbsp;кого. Это может быть точная копия семейной реликвии или воплощение смелой дизайнерской идеи.</p>
                        </div>
                        <div class="why__item swiper-slide">
                            <img class="why__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-savings.svg" alt="" width="48" height="48" loading="lazy">
                            <h3>Экономия <br>на&nbsp;материале</h3>
                            <p>Изготовление ювелирных изделий из&nbsp;своего золота или серебра позволяет существенно сэкономить. Вы&nbsp;приносите лом или старые украшения, и&nbsp;мы&nbsp;используем их&nbsp;как сырье.</p>
                        </div>
                        <div class="why__item swiper-slide">
                            <img class="why__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-ringstar.svg" alt="" width="48" height="48" loading="lazy">
                            <h3>Идеальная посадка и&nbsp;комфорт</h3>
                            <p>Украшение создается по&nbsp;вашим размерам. Это особенно важно для колец и&nbsp;браслетов, которые должны сидеть идеально, не&nbsp;слетая и&nbsp;не&nbsp;сдавливая.</p>
                        </div>
                        <div class="why__item swiper-slide">
                            <img class="why__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-clipboard.svg" alt="" width="48" height="48" loading="lazy">
                            <h3>Прозрачность <br>бюджета</h3>
                            <p>Вы&nbsp;заранее знаете, из&nbsp;чего складывается цена: работа мастера, стоимость металла (если используем наш) и&nbsp;камней. Нет скрытых наценок за&nbsp;&laquo;раскрученный бренд&raquo;.</p>
                        </div>
                    </div>
                    <div class="swiper-buttons beige show-on-tab">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
            </section>

            <section class="materials-section">
                <h2>Изготовление колец из&nbsp;разных металлов</h2>
                <div class="text">Выбор металла определяет не&nbsp;только внешний вид кольца, но&nbsp;и&nbsp;его долговечность, износ и&nbsp;совместимость с&nbsp;камнями. Мы&nbsp;работаем со&nbsp;всеми ювелирными сплавами&nbsp;&mdash; от&nbsp;классического красного золота до&nbsp;премиальной платины. Каждый материал имеет свои особенности, о&nbsp;которых мы&nbsp;вам расскажем.</div>
                <div class="materials swiper">
                    <div class="swiper-wrapper">
                        <div class="material swiper-slide">
                            <div class="material__inner">
                                <h3>Желтое золото (585, 750)</h3>
                                <div class="material__description">
                                    <picture class="material__image">
                                        <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/material-1-mobile.webp" media="(max-width: 599px)">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/material-1.webp" alt="" width="120" height="120" loading="lazy">
                                    </picture>
                                    <p>Классика, которая никогда не&nbsp;выйдет из&nbsp;моды. Теплый, солнечный оттенок подходит к&nbsp;любому тону кожи.</p>
                                </div>
                            </div>
                        </div>
                        <div class="material swiper-slide">
                            <div class="material__inner">
                                <h3>Белое золото (585, 750)</h3>
                                <div class="material__description">
                                    <picture class="material__image">
                                        <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/material-2-mobile.webp" media="(max-width: 599px)">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/material-2.webp" alt="" width="120" height="120" loading="lazy">
                                    </picture>
                                    <p>Элегантный и&nbsp;современный выбор. Имеет благородный серебристый блеск, часто покрывается родием для дополнительной прочности.</p>
                                </div>
                            </div>
                        </div>
                        <div class="material swiper-slide">
                            <div class="material__inner">
                                <h3>Красное золото (585, 750)</h3>
                                <div class="material__description">
                                    <picture class="material__image">
                                        <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/material-3-mobile.webp" media="(max-width: 599px)">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/material-3.webp" alt="" width="120" height="120" loading="lazy">
                                    </picture>
                                    <p>Традиционный русский сплав с&nbsp;характерным насыщенным оттенком. Ценится за&nbsp;свою прочность и&nbsp;&laquo;теплоту&raquo;.</p>
                                </div>
                            </div>
                        </div>
                        <div class="material swiper-slide">
                            <div class="material__inner">
                                <h3>Платина (950)</h3>
                                <div class="material__description">
                                    <picture class="material__image">
                                        <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/material-4-mobile.webp" media="(max-width: 599px)">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/material-4.webp" alt="" width="120" height="120" loading="lazy">
                                    </picture>
                                    <p>Металл премиум-класса. Гипоаллергенна, невероятно прочна и&nbsp;долговечна, идеально подходит для бриллиантовых оправ.</p>
                                </div>
                            </div>
                        </div>
                        <div class="material swiper-slide">
                            <div class="material__inner">
                                <h3>Серебро (925)</h3>
                                <div class="material__description">
                                    <picture class="material__image">
                                        <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/material-5-mobile.webp" media="(max-width: 599px)">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/material-5.webp" alt="" width="120" height="120" loading="lazy">
                                    </picture>
                                    <p>Благородный и&nbsp;доступный металл. Отлично подходит для повседневных украшений и&nbsp;дизайнерских экспериментов.</p>
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
                <div class="materials-colors">
                    <div class="materials-colors__description">
                        <h3>Оттенки колец из&nbsp;разных материалов</h3>
                        <p>Для обручального кольца, которое носится каждый день, лучше подойдет износостойкое красное золото или платина. Для изящного кольца с&nbsp;крупным камнем&nbsp;&mdash; легкое белое золото, которое эффектно подчеркнёт блеск бриллианта. Наши мастера всегда проконсультируют вас, какой металл лучше раскроет красоту вашего дизайна и&nbsp;обеспечит кольцу максимальный срок службы.</p>
                    </div>
                    <picture class="materials-colors__image">
                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/material-colors.webp" alt="" width="486" height="175" loading="lazy">
                    </picture>
                </div>
            </section>

            <section class="own-materials-section">
                <h2>Изготовим кольцо из&nbsp;вашего материала</h2>
                <div class="text">Ваши семейные реликвии могут засиять по-новому. Мы&nbsp;принимаем золото, платину и&nbsp;серебро любой пробы&nbsp;&mdash; от&nbsp;старых украшений до&nbsp;слитков. Переплавляем ваш металл и&nbsp;создаём из&nbsp;него современное кольцо, которое вы&nbsp;будете носить с&nbsp;гордостью. Вы&nbsp;оплачиваете только работу мастера.</div>
                <div class="own-materials swiper">
                    <div class="swiper-wrapper">
                        <div class="own-material swiper-slide">
                            <div class="own-material__inner">
                                <picture class="own-material__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/own-material-1.webp" alt="" width="275" height="275" loading="lazy">
                                </picture>
                                <div class="own-material__text">Вы&nbsp;приносите металл. Это могут быть слитки, монеты, лом или старые украшения. Наш мастер оценивает пробу и&nbsp;вес прямо при вас.</div>
                            </div>
                        </div>
                        <div class="own-material swiper-slide">
                            <div class="own-material__inner">
                                <picture class="own-material__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/own-material-2.webp" alt="" width="275" height="275" loading="lazy">
                                </picture>
                                <div class="own-material__text">Составляется акт. Мы&nbsp;фиксируем точный вес принятого материала, чтобы вы&nbsp;были уверены в&nbsp;прозрачности сделки.</div>
                            </div>
                        </div>
                        <div class="own-material swiper-slide">
                            <div class="own-material__inner">
                                <picture class="own-material__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/own-material-3.webp" alt="" width="275" height="275" loading="lazy">
                                </picture>
                                <div class="own-material__text">Материал уходит в&nbsp;переплавку. Из&nbsp;вашего золота или серебра создается сплав, из&nbsp;которого родится новое изделие. Вы&nbsp;платите только за&nbsp;работу мастера.</div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-buttons beige">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
                <div class="text">Это не&nbsp;просто способ сэкономить, но&nbsp;и&nbsp;возможность придать новую жизнь вещам с&nbsp;историей, которые дороги вам как память. Процесс полностью прозрачен и&nbsp;юридически чист. Мы&nbsp;работаем по&nbsp;официальному договору, где фиксируется вес и&nbsp;проба принятого от&nbsp;вас металла&nbsp;&mdash; это исключает любые спорные ситуации. Вы&nbsp;не&nbsp;переплачиваете за&nbsp;добычу и&nbsp;аффинаж нового металла, а&nbsp;только за&nbsp;творческую работу мастера. Так вы&nbsp;получаете современное стильное кольцо, сохранив при этом ценный ресурс и&nbsp;память, которая в&nbsp;него вплавлена.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-2">Рассчитать стоимость</button>
                </div>
            </section>

            <section class="constructions-section">
                <h2>Выберите конструкцию кольца под свой стиль</h2>
                <div class="text">От&nbsp;солитера с&nbsp;одним крупным камнем до&nbsp;кольца-трансформера с&nbsp;подвижными элементами. Показываем 5&nbsp;основных типов, чтобы вы&nbsp;точно знали, что ищете.</div>
                <div class="constructions swiper">
                    <div class="swiper-wrapper">
                        <div class="construction swiper-slide">
                            <div class="construction__inner">
                                <div class="construction__description">
                                    <h3>Солитеры</h3>
                                    <p>Кольца с&nbsp;одним крупным центральным камнем в&nbsp;эффектной закрепке. Лаконичный дизайн, где всё внимание приковано к&nbsp;бриллианту, сапфиру или изумруду. Классический выбор для помолвочных колец и&nbsp;повседневной элегантности.</p>
                                </div>
                                <picture class="construction__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/construction-1.webp" alt="" width="198" height="198" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="construction swiper-slide">
                            <div class="construction__inner">
                                <div class="construction__description">
                                    <h3>Кольца-дорожки (Pave)</h3>
                                    <p>Ряд мелких камней, закреплённых по&nbsp;окружности или части шинки. Плотная посадка создаёт эффект мерцающей дорожки, которая сияет при любом движении руки. Идеальны как свадебные кольца или компаньоны к&nbsp;солитеру.</p>
                                </div>
                                <picture class="construction__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/construction-2.webp" alt="" width="198" height="198" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="construction swiper-slide">
                            <div class="construction__inner">
                                <div class="construction__description">
                                    <h3>Кольца &laquo;Вечности&raquo; (Eternity)</h3>
                                    <p>Камни закреплены по&nbsp;всему периметру шинки без единого перерыва. Символ бесконечной любви, одинаково красивый с&nbsp;любой стороны руки. Традиционный подарок на&nbsp;юбилей, годовщину или рождение ребёнка.</p>
                                </div>
                                <picture class="construction__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/construction-3.webp" alt="" width="198" height="198" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="construction swiper-slide">
                            <div class="construction__inner">
                                <div class="construction__description">
                                    <h3>Разъемные (разомкнутые)</h3>
                                    <p>Шинка не&nbsp;смыкается полностью&nbsp;&mdash; между концами остаётся зазор с&nbsp;декоративными наконечниками. Такая конструкция создаёт нестандартный силуэт и&nbsp;визуально удлиняет палец. Популярны как фаланговые кольца и&nbsp;акцентные украшения.</p>
                                </div>
                                <picture class="construction__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/construction-4.webp" alt="" width="198" height="198" loading="lazy">
                                </picture>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-buttons show-on-tab">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
                <div class="text">Не&nbsp;уверены, какой вариант ваш? Пришлите фото руки&nbsp;&mdash; подберём 3&nbsp;модели под вашу анатомию и&nbsp;образ.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-4">Прислать фото</button>
                </div>
            </section>

            <section class="variants-section variants-section--bg">
                <h2>Сделаем парные кольца&nbsp;&mdash; для помолвки, свадьбы, годовщины или просто для двоих любящих сердец</h2>
                <div class="text">Парные кольца&nbsp;&mdash; это общий символ, который понятен без слов. Мы&nbsp;делаем кольца для пар, которые хотят подчеркнуть свою связь&nbsp;&mdash; романтическую, семейную или просто тёплую человеческую.</div>
                <div class="variants swiper">
                    <div class="swiper-wrapper">
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Обручальные</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/ring-variant-1.webp" alt="" width="296" height="296" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Гладкие, матовые, рифленые, с&nbsp;гравировкой. Могут быть одинаковыми или разными</p>
                                    <p><strong>Для кого:</strong> Муж + жена</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>С&nbsp;именами&nbsp;/ инициалами</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/ring-variant-2.webp" alt="" width="296" height="296" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>На&nbsp;каждом кольце&nbsp;&mdash; имя партнера, дата встречи, общая фраза</p>
                                    <p><strong>Для кого:</strong> Романтичный подарок</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>На&nbsp;годовщину&nbsp;/ семейные</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/ring-variant-3.webp" alt="" width="296" height="296" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>С&nbsp;датой свадьбы, именами, отпечатками пальцев, семейным гербом</p>
                                    <p><strong>Для кого:</strong> Супруги, родители + Дети</p>
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
                <div class="text">Чаще всего заказывают в&nbsp;одном стиле, но&nbsp;под каждого: ей&nbsp;&mdash; тонкое кольцо с&nbsp;бриллиантом, ему&nbsp;&mdash; широкое матовое. Так комплект выглядит гармонично, а&nbsp;по&nbsp;отдельности каждое кольцо остается самодостаточным.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Получить консультацию">Получить консультацию</button>
                </div>
            </section>

            <section class="surfaces-section">
                <h2>При изготовлении делаем обработку поверхности для вашего кольца</h2>
                <div class="text">Финишная обработка определяет, как кольцо будет выглядеть и&nbsp;ощущаться на&nbsp;пальце. От&nbsp;зеркального блеска до&nbsp;бархатистой матовости&nbsp;&mdash; выберите тот вариант, который подчеркнет ваш стиль.</div>
                <div class="surfaces swiper">
                    <div class="swiper-wrapper">
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Гладкая</div>
                                    <div class="surface__text">Зеркальный блеск. Классика.</div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/surface-1.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Матовая</div>
                                    <div class="surface__text">Бархатистая, без бликов. Современный стиль.</div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/surface-2.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Рифленая</div>
                                    <div class="surface__text">Фактурная, устойчивая к&nbsp;царапинам.</div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/surface-3.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Плетеная</div>
                                    <div class="surface__text">Эффект переплетения. Уникальный дизайн.</div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/surface-4.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">С&nbsp;алмазной огранкой</div>
                                    <div class="surface__text">Мерцающая поверхность. Игра света.</div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/surface-5.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Родированная</div>
                                    <div class="surface__text">Белое покрытие. Защита от&nbsp;царапин.</div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/surface-6.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Чернение</div>
                                    <div class="surface__text">Темный рисунок. Винтажный стиль.</div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/surface-7.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Эмаль</div>
                                    <div class="surface__text">Цветное покрытие. Яркие акценты.</div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/surface-8.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Комбинированная</div>
                                    <div class="surface__text">Матовая + полированная. Эффектно.</div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/surface-9.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-buttons show-on-mob">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
                <div class="text">Не&nbsp;знаете, какая обработка подойдет вашему кольцу? Мы&nbsp;сделаем образцы на&nbsp;вашем металле&nbsp;&mdash; вы&nbsp;сможете сравнить вживую.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Заказать образец">Заказать образец</button>
                </div>
            </section>

            <section class="stones-section">
                <h2>Изготовление колец с&nbsp;камнями</h2>
                <div class="text">Драгоценный камень&nbsp;&mdash; это душа украшения. Он&nbsp;придает кольцу цвет, смысл и&nbsp;сияние. Мы&nbsp;поможем вам выбрать камень, идеально подходящий под ваш эскиз и&nbsp;бюджет. В&nbsp;нашей базе&nbsp;&mdash; тысячи сертифицированных камней, а&nbsp;также мы&nbsp;работаем с&nbsp;камнями заказчика.</div>
                <div class="stones stones--seven swiper">
                    <div class="swiper-wrapper">
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Красные:</h3>
                                <p>Рубин, Гранат, Шпинель</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-3.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Зеленые:</h3>
                                <p>Изумруд, Хризолит, Нефрит, Демантоид</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-6.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Синие:</h3>
                                <p>Сапфир, Танзанит, Аквамарин, Топаз</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-4.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Розовые:</h3>
                                <p>Розовый бриллиант, Кунцит, Розовый сапфир</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-7.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Желтые:</h3>
                                <p>Цитрин, Желтый бриллиант</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-5.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Белые и&nbsp;черные:</h3>
                                <p>Бриллиант, Черный бриллиант, Хрусталь, Оникс, Гематит</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-1.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Органика:</h3>
                                <p>Жемчуг, Перламутр, Коралл</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-8.webp" alt="" width="300" height="200" loading="lazy">
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
                <div class="text">Мы&nbsp;работаем с&nbsp;полным спектром камней&nbsp;&mdash; от&nbsp;популярных бриллиантов и&nbsp;сапфиров до&nbsp;редких демантоидов и&nbsp;параиба. Каждый камень в&nbsp;нашей мастерской проходит геммологическую экспертизу, поэтому вы&nbsp;получаете не&nbsp;только красивое, но&nbsp;и&nbsp;юридически подтверждённое кольцо. По&nbsp;вашему желанию мы&nbsp;подберём камень под любой бюджет и&nbsp;предоставим все сертификаты соответствия. Если у&nbsp;вас есть семейный камень, мы&nbsp;готовы создать для него новую, достойную оправу, чтобы он&nbsp;засиял в&nbsp;вашем кольце по-новому.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Получить консультацию">Получить консультацию</button>
                </div>
            </section>

            <section class="tables-section">
                <h2>Изготавливаем кольца с&nbsp;камнями разной каратности</h2>
                <div class="text">Карат&nbsp;&mdash; это единица веса драгоценного камня.&nbsp;1&nbsp;карат = 0.2&nbsp;грамма. От&nbsp;веса камня зависит его размер, блеск&nbsp;и, конечно, цена. Мы&nbsp;подберем камень под ваш бюджет и&nbsp;задачи.</div>
                <h3>Какой вес камня выбрать для кольца?</h3>
                <div class="table">
                    <table>
                        <thead>
                            <tr>
                                <th>Вес камня (карат)</th>
                                <th>Визуальный размер</th>
                                <th>Для какого кольца подходит</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><span class="table__carat">до&nbsp;0.03&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-1.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Меле</td>
                                <td>Дорожка на&nbsp;обручальных кольцах</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">0.03&nbsp;- 0.1&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-2.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Маленький</td>
                                <td>Тонкие женские кольца, обручальные кольца с&nbsp;солитером</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">0.1&nbsp;- 0.3&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-3.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Небольшой</td>
                                <td>Помолвочные кольца&nbsp;&mdash; самый популярный вес</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">0.31&nbsp;- 0.5&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-4.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Средний</td>
                                <td>Премиальные помолвочные кольца, мужские кольца с&nbsp;бриллиантом</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">0.51&nbsp;- 1.0&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-5.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Стандартный</td>
                                <td>Кольцо принцессы Дианы, инвестиционные кольца</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">от&nbsp;1.0&nbsp;- 11.0&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-6.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Крупный</td>
                                <td>Эксклюзивные дизайнерские кольца</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="text">Не&nbsp;уверены, какой карат выбрать? Мы&nbsp;покажем вам камни разного веса вживую или на&nbsp;фото. Также вы&nbsp;можете принести свой камень&nbsp;&mdash;  мы&nbsp;сделаем кольцо под него.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Подобрать камень">Подобрать камень под бюджет</button>
                </div>
            </section>

            <section class="tables-section bg-section">
                <h2>Изготовим кольцо под Ваш размер</h2>
                <div class="text">Заказать кольцо&nbsp;&mdash; это не&nbsp;только про дизайн, но&nbsp;и&nbsp;про идеальную посадку на&nbsp;пальце. Кольцо не&nbsp;должно сдавливать или висеть свободно. Мы&nbsp;сделаем точный размер, даже если у&nbsp;вас нестандартная ширина фаланги или косточка шире самого пальца.</div>
                <h3>Какие размеры мы&nbsp;изготавливаем?</h3>
                <div class="text">Мы&nbsp;работаем со&nbsp;всеми размерами: от&nbsp;детских 15&nbsp;до&nbsp;мужских 30+. Если вашего размера нет в&nbsp;таблице&nbsp;&mdash; просто укажите его при заказе.</div>
                <div class="table table--light">
                    <table>
                        <thead>
                            <tr>
                                <th>Размер (RU)</th>
                                <th>Размер (EU)</th>
                                <th>Кому подходит</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>15-16</td>
                                <td>47-50</td>
                                <td>Детские, тонкие женские пальцы</td>
                            </tr>
                            <tr>
                                <td>16.5-17.5</td>
                                <td>51-55</td>
                                <td>Стандартный женский размер</td>
                            </tr>
                            <tr>
                                <td>18-19</td>
                                <td>56-59</td>
                                <td>Крупный женский, мальчики</td>
                            </tr>
                            <tr>
                                <td>19.5-21</td>
                                <td>61-66</td>
                                <td>Мужской стандарт</td>
                            </tr>
                            <tr>
                                <td>21.5-23</td>
                                <td>67-72</td>
                                <td>Крупный мужской</td>
                            </tr>
                            <tr>
                                <td>23.5-30</td>
                                <td>74-94</td>
                                <td>Очень широкие пальцы, печатки</td>
                            </tr>

                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <a data-modal="#modal-table" class="btn btn--big btn--border">Полная таблица размеров</a>
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Подобрать размер">Подобрать свой размер</button>
                </div>
            </section>

            <section class="brands-section">
                <h2>Изготовим кольцо в&nbsp;стиле популярных ювелирных брендов</h2>
                <div class="text">Мечтаете о&nbsp;кольце как у&nbsp;Tiffany, Cartier или Bvlgari, но&nbsp;хотите уникальную деталь или бюджетный вариант? Мы&nbsp;сделаем кольцо в&nbsp;узнаваемом стиле бренда, но&nbsp;с&nbsp;вашими пожеланиями: другим металлом, размером камня или гравировкой.</div>
                <div class="brands-information">
                    <p>Мы&nbsp;создаём украшения в&nbsp;узнаваемой эстетике мировых ювелирных домов, вдохновляясь их&nbsp;стилистическими решениями&nbsp;&mdash; геометрией, огранкой, фактурой или композицией. Каждое изделие разрабатывается и&nbsp;изготавливается нашей студией как оригинальное, не&nbsp;является копией, репликой или подделкой, не&nbsp;использует запатентованные технологии и&nbsp;товарные знаки и&nbsp;не&nbsp;нарушает права интеллектуальной собственности третьих лиц.</p>
                    <p class="big">Вы&nbsp;получаете уникальное украшение, созданное для вас...</p>
                </div>
                <div class="brands swiper">
                    <div class="swiper-wrapper">
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/cartier.svg" alt="" width="426" height="59" loading="lazy">
                            </picture>
                            <div class="brand__text">Аристократичный, классический</div>
                        </div>
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/tiffany.svg" alt="" width="426" height="59" loading="lazy">
                            </picture>
                            <div class="brand__text">Романтичный, американский</div>
                        </div>
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/bvlgary.svg" alt="" width="426" height="59" loading="lazy">
                            </picture>
                            <div class="brand__text">Смелый, римский</div>
                        </div>
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/van-cleef.svg" alt="" width="426" height="59" loading="lazy">
                            </picture>
                            <div class="brand__text">Утонченный, французский</div>
                        </div>
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/buccellati.svg" alt="" width="426" height="59" loading="lazy">
                            </picture>
                            <div class="brand__text">Винтажный, кружевной</div>
                        </div>
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/graff.svg" alt="" width="426" height="59" loading="lazy">
                            </picture>
                            <div class="brand__text">Элитный, бриллиантовый</div>
                        </div>
                    </div>
                    <div class="swiper-buttons show-on-mob">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
                <div class="text">Мы&nbsp;не&nbsp;делаем подделку с&nbsp;логотипом. Мы&nbsp;создаем уникальное кольцо по&nbsp;мотивам дизайна, которое будет соответствовать вашему бюджету и&nbsp;предпочтениям. Вы&nbsp;сохраняете узнаваемый стиль, но&nbsp;получаете полностью оригинальное украшение.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Выбрать стиль бренда">Выбрать стиль бренда</button>
                </div>
            </section>

<?php
            $visible_cost_segments = array_filter($cost_segments);
            $first_cost_segment = $visible_cost_segments ? key($visible_cost_segments) : '';
            ?>
            <section class="prices-section">
                <h2>Стоимость изготовления кольца</h2>
                <div class="text">Мы&nbsp;за&nbsp;прозрачность. Конечная цена складывается из&nbsp;металла, камней и&nbsp;работы мастера. Ниже&nbsp;&mdash; ориентировочная стоимость изготовления. Точный расчёт сделаем на&nbsp;бесплатной консультации после утверждения эскиза.</div>
                <?php $prices_examples_title = 'Примеры цен изготавливаемых колец'; require(DIR_TEMPLATE . 'uvelirmoscow_new/template/product/manufacturing_category_prices_intro.tpl'); ?>
                <?php if ($visible_cost_segments) { ?>
                <div class="prices-block js-tabs">
                    <?php if (count($visible_cost_segments) > 1) { ?>
                    <div class="tabs tabs--beige">
                        <?php foreach ($visible_cost_segments as $segment => $items) { ?>
                        <div class="tabs__item js-tabs__btn<?php echo $segment === $first_cost_segment ? ' active' : ''; ?>" data-tab="cost-<?php echo $segment; ?>"><?php echo htmlspecialchars($cost_labels[$segment], ENT_QUOTES, 'UTF-8'); ?></div>
                        <?php } ?>
                    </div>
                    <?php } ?>
                    <?php foreach ($visible_cost_segments as $segment => $items) { ?>
                    <div class="tabs__pane js-tabs__pane<?php echo $segment === $first_cost_segment ? ' active' : ''; ?>" data-tab="cost-<?php echo $segment; ?>">
                        <div class="prices-items swiper">
                            <div class="swiper-wrapper">
                                <?php foreach ($items as $item) { ?>
                                <div class="prices-item swiper-slide">
                                    <?php if ($item['href']) { ?><a href="<?php echo htmlspecialchars($item['href'], ENT_QUOTES, 'UTF-8'); ?>" class="prices-item__inner"><?php } else { ?><div class="prices-item__inner"><?php } ?>
                                        <div class="prices-item__title"><?php echo htmlspecialchars($item['title'], ENT_QUOTES, 'UTF-8'); ?></div>
                                        <?php if ($item['image']) { ?><picture class="prices-item__image"><img src="<?php echo htmlspecialchars($item['image'], ENT_QUOTES, 'UTF-8'); ?>" alt="<?php echo htmlspecialchars($item['title'], ENT_QUOTES, 'UTF-8'); ?>" width="296" height="296" loading="lazy"></picture><?php } ?>
                                        <?php if ($item['product_price'] !== '') { ?><div class="prices-item__value"><?php echo htmlspecialchars($item['product_price'], ENT_QUOTES, 'UTF-8'); ?></div><?php } ?>
                                        <?php if ($item['work_price'] !== '') { ?><div class="prices-item__text"><?php echo htmlspecialchars($item['work_price'], ENT_QUOTES, 'UTF-8'); ?></div><?php } ?>
                                    <?php if ($item['href']) { ?></a><?php } else { ?></div><?php } ?>
                                </div>
                                <?php } ?>
                            </div>
                            <div class="swiper-buttons beige"><a href="/katalog" class="btn btn--big btn--border">Все изделия</a><div class="swiper-button-prev"></div><div class="swiper-pagination"></div><div class="swiper-button-next"></div></div>
                        </div>
                    </div>
                    <?php } ?>
                </div>
                <?php } ?>
                <?php require(DIR_TEMPLATE . 'uvelirmoscow_new/template/product/manufacturing_category_prices_outro.tpl'); ?>
            </section>
<?php if ($project_slides) { ?>
            <section class="examples-section">
                <h2>Примеры изготовленных колец на&nbsp;заказ</h2>
                <div class="text">Ниже представлены реальные работы нашей студии. Каждое кольцо создано с&nbsp;нуля по&nbsp;индивидуальному эскизу&nbsp;&mdash; от&nbsp;классических обручальных до&nbsp;эксклюзивных моделей с&nbsp;редкими камнями. Нажмите на&nbsp;фото, чтобы увидеть детали и&nbsp;узнать историю создания.</div>
                <div class="examples swiper">
                    <div class="swiper-wrapper">
                        <?php foreach ($project_slides as $slide) { ?>
                        <div class="example swiper-slide">
                            <?php foreach ($slide as $project) { ?>
                            <?php if ($project['href']) { ?><a href="<?php echo htmlspecialchars($project['href'], ENT_QUOTES, 'UTF-8'); ?>" class="example__item"><?php } else { ?><div class="example__item"><?php } ?>
                                <picture class="example__image"><img src="<?php echo htmlspecialchars($project['image'], ENT_QUOTES, 'UTF-8'); ?>" alt="<?php echo htmlspecialchars($project['name'], ENT_QUOTES, 'UTF-8'); ?>" width="490" height="490" loading="lazy"></picture>
                                <div class="example__text"><span><?php echo htmlspecialchars($project['name'], ENT_QUOTES, 'UTF-8'); ?></span></div>
                            <?php if ($project['href']) { ?></a><?php } else { ?></div><?php } ?>
                            <?php } ?>
                        </div>
                        <?php } ?>
                    </div>
                    <div class="swiper-buttons"><a href="/o-studii/nashi-raboty" class="btn btn--big btn--border btn--dark">Смотреть все работы</a><div class="swiper-button-prev"></div><div class="swiper-pagination"></div><div class="swiper-button-next"></div></div>
                </div>
            </section>
            <?php } ?>
            <section class="process-section">
                <h2>Как мы&nbsp;создаём кольца на&nbsp;заказ</h2>
                <div class="text">Весь путь от&nbsp;идеи до&nbsp;готового кольца прозрачен и&nbsp;понятен. Вы&nbsp;можете участвовать в&nbsp;процессе лично или удалённо&nbsp;&mdash; мы&nbsp;снимаем каждый этап на&nbsp;фото и&nbsp;видео. От&nbsp;эскиза до&nbsp;финишной полировки&nbsp;&mdash; ваше кольцо проходит все стадии под контролем мастеров.</div>
                <div class="process swiper">
                    <div class="swiper-wrapper">
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/ring-process-1.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Идея и&nbsp;консультация</h3>
                                    <p>Встречаемся в&nbsp;студии или онлайн. Обсуждаем дизайн, металл (золото, серебро, платина), пробу, камни (бриллианты, рубины, изумруды, сапфиры), ширину, профиль и&nbsp;бюджет. Показываем референсы.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/ring-process-2.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Эскиз и&nbsp;3D-моделирование</h3>
                                    <p>Художник переносит идею на&nbsp;бумагу. После утверждения создаём точную 3D-модель, где видна каждая грань, толщина, посадка на&nbsp;пальце.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/ring-process-3.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>3D-печать полимерной модели</h3>
                                    <p>3D-принтер печатает точную копию будущего кольца из&nbsp;высокоточного полимера. В&nbsp;отличие от&nbsp;хрупкой восковки, полимерную модель можно примерить на&nbsp;палец&nbsp;&mdash; вы&nbsp;сможете оценить удобство, посадку и&nbsp;внешний вид ещё до&nbsp;того, как кольцо будет отлито в&nbsp;металле. Это исключает ошибки в&nbsp;размере и&nbsp;дизайне на&nbsp;самом раннем этапе.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/ring-process-4.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Литье металла</h3>
                                    <p>Восковую модель помещаем в&nbsp;гипс, обжигаем и&nbsp;под давлением заливаем расплавленное золото, серебро или платину.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/ring-process-5.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Обработка и&nbsp;шлифовка</h3>
                                    <p>Ювелир удаляет литники, шлифует и&nbsp;полирует поверхность до&nbsp;зеркального блеска (или оставляет матовой, сатинированной, рифлёной).</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/ring-process-6.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Закрепка камней</h3>
                                    <p>Под микроскопом мастер фиксирует каждый камень: крапаны, корнер, безан, канальная закрепка. Для бриллиантов&nbsp;&mdash; отдельный контроль.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/ring-process-7.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Гравировка</h3>
                                    <p>По&nbsp;желанию наносим лазерную или ручную гравировку: имя, дату, инициалы, фразу на&nbsp;внутреннюю или внешнюю сторону кольца.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/ring-process-8.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Финишная обработка и&nbsp;выдача</h3>
                                    <p>Полировка, матирование, чернение, родирование (для белого золота), горячая или холодная эмаль.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/rings/ring-process-9.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Пробирование и&nbsp;выдача</h3>
                                    <p>Изделие проходит обязательный контроль в&nbsp;Государственной пробирной палате. После проверки на&nbsp;него наносятся: государственное клеймо пробы, именник производителя и&nbsp;DM-код с&nbsp;зашифрованным УИНом (уникальным идентификационным номером). Это полный юридический пакет, подтверждающий подлинность, пробу и&nbsp;легальность вашего кольца.</p>
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

<?php if ($shorts) { ?>
            <section class="about-section">
                <div class="about-videos__block">
                    <h2>Шортсы</h2>
                    <div class="about-videos swiper">
                        <div class="swiper-wrapper">
                            <?php foreach ($shorts as $short) { ?>
                            <div class="about-video swiper-slide">
                                <a href="<?php echo htmlspecialchars($short['video'], ENT_QUOTES, 'UTF-8'); ?>" class="about-video__inner" data-fancybox="about-videos" data-type="iframe" data-width="450" data-height="800" data-autosize="true">
                                    <img src="<?php echo htmlspecialchars($short['preview'], ENT_QUOTES, 'UTF-8'); ?>" alt="Видео" width="282" height="505" loading="lazy">
                                </a>
                            </div>
                            <?php } ?>
                        </div>
                        <div class="swiper-buttons beige"><div class="swiper-button-prev"></div><div class="swiper-pagination"></div><div class="swiper-button-next"></div></div>
                    </div>
                </div>
            </section>
            <?php } ?>

            <?php if ($reviews) { ?>
            <section class="reviews-section">
                <h2>Истории и&nbsp;отзывы наших клиентов</h2>
                <div class="text">Реальные истории людей, которые доверили нам создание своих украшений.</div>
                <div class="reviews swiper">
                    <div class="swiper-wrapper">
                        <?php foreach ($reviews as $review) { ?>
                        <div class="review swiper-slide">
                            <a href="<?php echo htmlspecialchars($review['video'], ENT_QUOTES, 'UTF-8'); ?>" class="review__inner" data-fancybox="review-videos" data-type="iframe" data-width="853" data-height="480" data-autosize="true">
                                <picture class="review__image"><img src="<?php echo htmlspecialchars($review['preview'], ENT_QUOTES, 'UTF-8'); ?>" alt="" width="698" height="300" loading="lazy"></picture>
                                <div class="review__description"><div class="review__title"><span>Отзыв от</span><span><?php echo $review['text']; ?></span></div></div>
                            </a>
                        </div>
                        <?php } ?>
                    </div>
                    <div class="swiper-buttons"><a href="/o-studii/otzyvy" class="btn btn--big btn--border btn--dark">Все отзывы</a><div class="swiper-button-prev"></div><div class="swiper-pagination"></div><div class="swiper-button-next"></div></div>
                </div>
            </section>
            <?php } ?>
            <?php echo $employees; ?>

            <section class="documents-section">
                <h2>Документальное подтверждение качества и&nbsp;полная ответственность</h2>
                <div class="text">Истинное качество требует доказательств. Именно поэтому каждое наше изделие имеет юридически закрепленную гарантию, а&nbsp;используемые материалы&nbsp;&mdash; независимую сертификацию. Здесь мы&nbsp;собрали главные аргументы, которые подтверждают нашу ответственность перед вами.</div>
                <div class="documents-wrap js-tabs">
                    <div class="tabs">
                        <div class="tabs__item js-tabs__btn active" data-tab="gar">Гарантии</div>
                        <div class="tabs__item js-tabs__btn" data-tab="doc">Сертификаты</div>
                    </div>
                    <div class="tabs__pane js-tabs__pane active" data-tab="gar">
                        <div class="guarantees guarantees--six swiper">
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
                                            <p>Каждый драгоценный камень, используемый в&nbsp;наших украшениях, проходит проверку в&nbsp;геммологической лаборатории. По&nbsp;запросу предоставляется заключение о&nbsp;происхождении и&nbsp;характеристиках камня&nbsp;— будь&nbsp;то изумруд, рубин, сапфир или редкий турмалин.</p>
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
                                <div class="guarantee swiper-slide">
                                    <div class="guarantee__inner">
                                        <img class="guarantee__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-materials.svg" alt="" width="48" height="48" loading="lazy">
                                        <div class="guarantee__description">
                                            <h3>Работа с&nbsp;вашим материалом</h3>
                                            <p>Принимаем золото любой пробы&nbsp;&mdash; лом, старые украшения, слитки. Взвешиваем, проверяем, используем в&nbsp;вашем заказе. Прозрачно и&nbsp;без скрытых комиссий.</p>
                                        </div>
                                        <a href="/uslugi/izgotovlenie-iz-vashih-materialov" class="btn btn--more btn--fill">
                                            <svg role="img" aria-label="Подробнее"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#arrow-long" /></svg>
                                        </a>
                                    </div>
                                </div>
                                <div class="guarantee swiper-slide">
                                    <div class="guarantee__inner">
                                        <img class="guarantee__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-shield.svg" alt="" width="48" height="48" loading="lazy">
                                        <div class="guarantee__description">
                                            <h3>Пожизненная гарантия</h3>
                                            <p>Если украшение повредится&nbsp;&mdash; отремонтируем бесплатно. Гарантия действует всё время, пока вы&nbsp;владеете изделием.</p>
                                        </div>
                                        <a href="/pokupatelyam/garantii" class="btn btn--more btn--fill">
                                            <svg role="img" aria-label="Подробнее"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#arrow-long" /></svg>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-buttons show-on-tab">
                                <div class="swiper-button-prev"></div>
                                <div class="swiper-pagination"></div>
                                <div class="swiper-button-next"></div>
                            </div>
                        </div>
                        <div class="text">Мы&nbsp;уверены в&nbsp;своей работе настолько, что готовы отвечать за&nbsp;неё годами. Пожизненная гарантия распространяется на&nbsp;все художественные и&nbsp;технические работы. Если камень расшатается или сломается замок&nbsp;&mdash; мы&nbsp;отремонтируем это бесплатно. Ремонт, связанный с&nbsp;износом или механическими повреждениями после ударов, оплачивается отдельно.</div>
                    </div>
                    <div class="tabs__pane js-tabs__pane" data-tab="doc">
                        <?php if ($certificates) { ?>
                        <div class="documents swiper">
                            <div class="swiper-wrapper">
                                <?php foreach ($certificates as $certificate) { ?>
                                <div class="document swiper-slide">
                                    <a href="<?php echo htmlspecialchars($certificate['full'], ENT_QUOTES, 'UTF-8'); ?>" class="document__link" data-fancybox="documents">
                                        <img src="<?php echo htmlspecialchars($certificate['thumb'], ENT_QUOTES, 'UTF-8'); ?>" alt="" width="228" height="323" loading="lazy">
                                    </a>
                                </div>
                                <?php } ?>
                            </div>
                            <div class="swiper-buttons show-on-tab"><div class="swiper-button-prev"></div><div class="swiper-pagination"></div><div class="swiper-button-next"></div></div>
                        </div>
                        <?php } ?>
                        <div class="text">Все драгоценные металлы имеют сертификаты соответствия, а&nbsp;камни&nbsp;&mdash; геммологические заключения. Мы&nbsp;работаем с&nbsp;Государственной Пробирной палатой, поэтому на&nbsp;каждом изделии стоит официальное клеймо. По&nbsp;запросу мы&nbsp;предоставим сертификаты на&nbsp;камни весом от&nbsp;0,4&nbsp;карат.</div>
                    </div>
                </div>
            </section>

            <section class="consultation-section">
                <h2>Приглашаем в&nbsp;нашу дизайн-студию <br>в&nbsp;центре Москвы!</h2>
                <div class="text">Совместно со&nbsp;всеми специалистами&nbsp;Вы сможете обсудить Ваше будущее украшение.</div>
                <div class="consultation__buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Заказать консультацию">Заказать консультацию</button>
                    <button type="button" class="btn btn--big btn--border" data-modal="#modal-2">Рассчитать стоимость</button>
                </div>
            </section>

<?php if ($faq) { ?>
            <section class="faq-section">
                <h2>Часто задаваемые вопросы об&nbsp;изготовлении колец</h2>
                <div class="text">Индивидуальное изготовление может вызвать много вопросов, особенно если вы&nbsp;делаете это в&nbsp;первый раз. Мы&nbsp;постарались охватить самые частые из&nbsp;них, чтобы вы&nbsp;чувствовали себя уверенно на&nbsp;каждом этапе. Если вы&nbsp;не&nbsp;нашли ответа на&nbsp;свой вопрос, просто свяжитесь с&nbsp;нами любым удобным способом.</div>
                <div class="faq-list">
                    <?php foreach ($faq as $item) { ?>
                    <div class="faq-item">
                        <div class="faq-item__question"><h3><?php echo htmlspecialchars(isset($item['question']) ? $item['question'] : '', ENT_QUOTES, 'UTF-8'); ?></h3></div>
                        <div class="faq-item__answer"><?php echo isset($item['answer']) ? $item['answer'] : ''; ?></div>
                    </div>
                    <?php } ?>
                </div>
            </section>
            <?php } ?>
            <section class="map-section">
                <h2>Изготавливаем кольца в&nbsp;Москве&nbsp;&mdash; доставляем в&nbsp;любой город России, СНГ и&nbsp;мира</h2>
                <div class="map">
                    <picture class="map__image">
                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/map.svg" alt="" width="750" height="435" loading="lazy">
                    </picture>
                    <div class="map__description">
                        <h3>Мы&nbsp;уже работали с&nbsp;клиентами из&nbsp;этих городов:</h3>
                        <ul class="map__list">
                            <li>Москва</li>
                            <li>Санкт-Петербург</li>
                            <li>Новосибирск</li>
                            <li>Казань</li>
                            <li>Нижний Новгород</li>
                            <li>Челябинск</li>
                            <li>Омск</li>
                            <li>Ростов-на-Дону</li>
                            <li>Уфа</li>
                            <li>Пермь</li>
                            <li>Воронеж</li>
                            <li>Волгоград</li>
                            <li>Саратов</li>
                            <li>Тюмень</li>
                            <li>Тольятти</li>
                            <li>Барнаул</li>
                            <li>Ульяновск</li>
                            <li>Иркутск</li>
                            <li>Ярославль</li>
                            <li>Владивосток</li>
                            <li>Махачкала</li>
                            <li>Оренбург</li>
                            <li>Кемерово</li>
                            <li>Новокузнецк</li>
                            <li>Астрахань</li>
                            <li>Пенза</li>
                            <li>Липецк</li>
                            <li>Балашиха</li>
                            <li>Курск</li>
                            <li>Сочи</li>
                        </ul>
                    </div>
                </div>
                <div class="h3">А&nbsp;также:</div>
                <p>Беларусь (Минск), Казахстан (Алматы, Астана), Армения (Ереван), Киргизия (Бишкек), Узбекистан (Ташкент), и&nbsp;другие страны мира&nbsp;&mdash; от&nbsp;Европы до&nbsp;Азии и&nbsp;Америки.</p>
                <div class="buttons">
                    <a href="/pokupatelyam/dostavka-i-oplata" class="btn btn--big">Подробнее о&nbsp;доставке и&nbsp;оплате</a>
                </div>
            </section>

<?php if (trim($seo_text) !== '') { ?>
            <section class="text-section">
                <?php echo $seo_text; ?>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-3" data-modal-title="Обсудить идею">Обсудить идею</button>
                </div>
            </section>
            <?php } ?>
        </main>
<?php echo $footer; ?>
