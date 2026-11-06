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
                    <h1>Изготовление <br>ювелирных украшений</h1>
                    <div class="showcase__text">
                        Создайте украшение своей мечты! Мы&nbsp;воплощаем в&nbsp;жизнь эксклюзивные идеи любой сложности: от&nbsp;простых колец до&nbsp;фамильных драгоценностей. Работаем с&nbsp;вашим золотом и&nbsp;камнями, гарантируем безупречное качество и&nbsp;полное юридическое сопровождение. Получите предварительный расчет стоимости по&nbsp;телефону или в&nbsp;студии.
                    </div>
                    <div class="showcase__buttons">
                        <button type="button" class="btn btn--medium" data-modal="#modal-1" data-modal-title="Заказать изготовление">Заказать изготовление</button>
                    </div>
                </div>
                <picture class="showcase__image">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-img-making-mobile.webp,
                            catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-img-making-mobile@2x.webp 2x" media="(max-width: 599px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-img-making-tab.webp,
                            catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-img-making-tab@2x.webp 2x" media="(max-width: 836px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-img-making.webp,
                            catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-img-making@2x.webp 2x">
                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-img-making.webp" alt="" width="620" height="620">
                </picture>
                <picture class="showcase__bg">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-bg-making-mobile.webp" media="(max-width: 599px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-bg-making-tab.webp" media="(max-width: 836px)">
                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/showcase/showcase-bg-making.webp" alt="">
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
                <?php if ($shorts) { ?>
                <div class="about-videos__block">
                    <h2>Шортсы</h2>
                    <div class="about-videos swiper">
                        <div class="swiper-wrapper">
                            <?php foreach ($shorts as $short) { ?>
                            <div class="about-video swiper-slide">
                                <a href="<?php echo htmlspecialchars($short['video'], ENT_QUOTES, 'UTF-8'); ?>" class="about-video__inner" data-fancybox="about-videos" data-type="iframe" data-width="450" data-height="800" data-autosize="true">
                                    <img src="<?php echo htmlspecialchars($short['preview'], ENT_QUOTES, 'UTF-8'); ?>" alt="Видео." width="282" height="505" loading="lazy">
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

            <section class="why-section">
                <h2>Почему выгоднее заказать изготовление, чем купить готовое?</h2>
                <div class="why__title">Готовые украшения из&nbsp;магазина&nbsp;&mdash; это всегда компромисс между желанием и&nbsp;реальностью...</div>
                <div class="why__text">Вы&nbsp;получете выбор из&nbsp;того, что есть, Вам приходится подстраиваться под размер, дизайн&nbsp;и, зачастую, переплачивать за&nbsp;&laquo;раскрученное&raquo; имя бренда. При индивидуальном заказе вы&nbsp;не&nbsp;просто покупаете вещь&nbsp;&mdash; вы&nbsp;создаете&nbsp;её. Вы&nbsp;полностью контролируете бюджет, так как он&nbsp;не&nbsp;включает наценку за&nbsp;масс-маркет. Вы&nbsp;получаете не&nbsp;украшение, а&nbsp;реализацию вашей собственной идеи, которая будет радовать вас уникальностью. Именно поэтому даже при одинаковой стоимости готового и&nbsp;заказного кольца, второе всегда выигрывает в&nbsp;ценности для вас.</div>
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
            <?php if ($category_wall) { ?>
            <section class="types-section">
                <h2>Виды ювелирных изделий, которые мы&nbsp;изготавливаем</h2>
                <div class="types__subtitle">Мы&nbsp;не&nbsp;ограничиваем вашу фантазию...</div>
                <div class="types">
                    <div class="types__list">
                        <?php foreach ($category_wall as $item) { ?>
                        <?php if (!empty($item['link'])) { ?><a href="<?php echo htmlspecialchars(html_entity_decode($item['link'], ENT_QUOTES, 'UTF-8'), ENT_QUOTES, 'UTF-8'); ?>" class="types__item"><?php } else { ?><div class="types__item"><?php } ?>
                            <div class="types__description<?php echo empty($item['link']) ? ' no_link_description' : ''; ?>">
                                <h3><?php echo htmlspecialchars($item['title'], ENT_QUOTES, 'UTF-8'); ?></h3>
                                <?php echo $item['text']; ?>
                            </div>
                            <picture class="types__image">
                                <img src="<?php echo htmlspecialchars($item['image_url'], ENT_QUOTES, 'UTF-8'); ?>" alt="<?php echo htmlspecialchars($item['title'], ENT_QUOTES, 'UTF-8'); ?>" width="198" height="198" loading="lazy">
                            </picture>
                        <?php if (!empty($item['link'])) { ?></a><?php } else { ?></div><?php } ?>
                        <?php } ?>
                    </div>
                    <button type="button" class="btn btn--big btn--dark types-more">Показать еще</button>
                </div>
            </section>
            <?php } ?>

            <section class="own-materials-section">
                <h2>Изготавливаем украшения из&nbsp;вашего материала</h2>
                <div class="text">У&nbsp;ваших семейных реликвий есть потенциал засиять по-новому. Мы&nbsp;принимаем золото, платину и&nbsp;серебро любой пробы&nbsp;&mdash; от&nbsp;старых украшений до&nbsp;слитков. Переплавляем ваш металл и&nbsp;создаём из&nbsp;него современное изделие, которое вы&nbsp;будете носить с&nbsp;гордостью. Вы&nbsp;оплачиваете только работу мастера.</div>
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
                <div class="text">Это не&nbsp;просто способ сэкономить, но&nbsp;и&nbsp;возможность придать новую жизнь вещам с&nbsp;историей, которые дороги вам как память. Процесс полностью прозрачен и&nbsp;юридически чист. Мы&nbsp;работаем по&nbsp;официальному договору, где фиксируется вес и&nbsp;проба принятого от&nbsp;вас материала. Это исключает любые спорные ситуации. Вы&nbsp;не&nbsp;переплачиваете за&nbsp;добычу и&nbsp;аффинаж нового металла&nbsp;&mdash; только за&nbsp;творческую работу мастера. Так вы&nbsp;получаете современное стильное украшение, сохранив при этом ценный ресурс.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-2">Рассчитать стоимость</button>
                </div>
            </section>

            <section class="materials-section">
                <h2>Изготовление ювелирных изделий из&nbsp;разных материалов</h2>
                <div class="text">Выбор металла определяет не&nbsp;только внешний вид, но&nbsp;и&nbsp;долговечность украшения. Мы&nbsp;работаем со&nbsp;всеми ювелирными сплавами, представленными на&nbsp;рынке. Каждый материал имеет свои особенности, о&nbsp;которых мы&nbsp;вам расскажем.</div>
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
                        <h3>Оттенки изделий из&nbsp;разных материалов</h3>
                        <p>Долговечность, цвет и&nbsp;стиль вашего украшения напрямую зависят от&nbsp;выбранного сплава. Мы&nbsp;работаем со&nbsp;всеми стандартными и&nbsp;премиальными металлами. Какой выбрать&nbsp;&mdash; зависит от&nbsp;вашего бюджета, предпочтений в&nbsp;цвете и&nbsp;требований к&nbsp;износостойкости. Например, для повседневного кольца лучше подойдет износостойкое красное золото, а&nbsp;для изящных серег с&nbsp;крупным камнем&nbsp;&mdash; легкое белое золото или платина. Наши мастера всегда проконсультируют вас, какой металл лучше раскроет красоту вашего дизайна и&nbsp;прослужит дольше всего.</p>
                    </div>
                    <picture class="materials-colors__image">
                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/material-colors.webp" alt="" width="486" height="175" loading="lazy">
                    </picture>
                </div>
            </section>

            <section class="stones-section">
                <h2>Изготовление ювелирных изделий с&nbsp;драгоценными камнями</h2>
                <div class="text">Драгоценный камень&nbsp;&mdash; это душа украшения. Он&nbsp;придает ему цвет, смысл и&nbsp;сияние. Мы&nbsp;поможем вам выбрать камень, идеально подходящий под ваш эскиз и&nbsp;бюджет. В&nbsp;нашей базе&nbsp;&mdash; тысячи сертифицированных камней, а&nbsp;также мы&nbsp;работаем с&nbsp;камнями заказчика.</div>
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
                <div class="text">Мы&nbsp;работаем с&nbsp;полным спектром камней&nbsp;&mdash; от&nbsp;популярных бриллиантов и&nbsp;сапфиров до&nbsp;редких демантоидов и&nbsp;параиба. Каждый камень в&nbsp;нашей мастерской проходит геммологическую экспертизу. Вы&nbsp;получаете не&nbsp;только красивое, но&nbsp;и&nbsp;юридически подтвержденное украшение. По&nbsp;вашему желанию мы&nbsp;можем подобрать камень под бюджет, а&nbsp;также предоставить все сертификаты соответствия. Если у&nbsp;вас есть семейный камень, мы&nbsp;готовы создать для него новую, достойную оправу.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Получить консультацию">Получить консультацию</button>
                </div>
            </section>

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
                                    <a href="<?php echo htmlspecialchars($certificate['image_full'], ENT_QUOTES, 'UTF-8'); ?>" class="document__link" data-fancybox="documents">
                                        <img src="<?php echo htmlspecialchars($certificate['image_thumb'], ENT_QUOTES, 'UTF-8'); ?>" alt="" width="228" height="323" loading="lazy">
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
                        <?php } ?>
                        <div class="text">Все драгоценные металлы имеют сертификаты соответствия, а&nbsp;камни&nbsp;&mdash; геммологические заключения.</div>
                    </div>
                </div>
            </section>

            <section class="prices-section">
                <div class="prices-block">
                    <h2>Стоимость изготовления ювелирного изделия</h2>
                    <div class="text">Мы&nbsp;за&nbsp;прозрачность. Конечная цена складывается из&nbsp;трех простых составляющих. Вы&nbsp;можете легко прикинуть бюджет заранее, а&nbsp;наш мастер просчитает точную стоимость на&nbsp;бесплатной консультации.</div>
                    <div class="prices swiper">
                        <div class="swiper-wrapper">
                            <div class="prices-item swiper-slide">
                                <div class="prices-item__inner">
                                    <div class="prices-item__title">Материал (ваш)</div>
                                    <picture class="prices-item__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/prices-item-1.webp" alt="" width="200" height="200" loading="lazy">
                                    </picture>
                                    <div class="prices-item__value">От&nbsp;0&nbsp;руб.</div>
                                    <div class="prices-item__text">Вы&nbsp;приносите свой металл</div>
                                </div>
                            </div>
                            <div class="prices-item swiper-slide">
                                <div class="prices-item__inner">
                                    <div class="prices-item__title">Материал (наш)</div>
                                    <picture class="prices-item__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/prices-item-2.webp" alt="" width="200" height="200" loading="lazy">
                                    </picture>
                                    <div class="prices-item__value">Индивидуально</div>
                                    <div class="prices-item__text">(Точная цена зависит от&nbsp;курса биржи и&nbsp;пробы)</div>
                                </div>
                            </div>
                            <div class="prices-item swiper-slide">
                                <div class="prices-item__inner">
                                    <div class="prices-item__title">Работа мастера</div>
                                    <picture class="prices-item__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/prices-item-3.webp" alt="" width="200" height="200" loading="lazy">
                                    </picture>
                                    <div class="prices-item__value">Индивидуально</div>
                                    <div class="prices-item__text">(Зависит от&nbsp;сложности дизайна, наличия филиграни, ажурных элементов)</div>
                                </div>
                            </div>
                            <div class="prices-item swiper-slide">
                                <div class="prices-item__inner">
                                    <div class="prices-item__title">Камень</div>
                                    <picture class="prices-item__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/prices-item-4.webp" alt="" width="200" height="200" loading="lazy">
                                    </picture>
                                    <div class="prices-item__value">Индивидуально</div>
                                    <div class="prices-item__text">(Цена сильно варьируется от&nbsp;типа, размера и&nbsp;качества камня)</div>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-buttons beige show-on-mob">
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-pagination"></div>
                            <div class="swiper-button-next"></div>
                        </div>
                    </div>
                </div>
                <?php
                $visible_cost_segments = array_filter($cost_segments);
                $first_cost_segment = $visible_cost_segments ? key($visible_cost_segments) : '';
                ?>
                <?php if ($visible_cost_segments) { ?>
                <div class="prices-block js-tabs">
                    <h2>Примеры цен изготавливаемых украшений</h2>
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
                            <div class="swiper-buttons beige">
                                <a href="/katalog" class="btn btn--big btn--border">Все изделия</a>
                                <div class="swiper-button-prev"></div>
                                <div class="swiper-pagination"></div>
                                <div class="swiper-button-next"></div>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                    <div class="prices-info">
                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/info-square.svg" alt="" width="48" height="48" loading="lazy">
                        <span>В&nbsp;примерах представлены украшения всех сегментов: Стандарт, Премиум и&nbsp;Эксклюзив. Вы&nbsp;всегда сможете найти изделие под ваш бюджет&nbsp;— мы&nbsp;работаем с&nbsp;любыми пожеланиями.</span>
                    </div>
                </div>
                <?php } ?>
                <div class="text">Понимание того, из&nbsp;чего складывается цена&nbsp;&mdash; основа доверия. Мы&nbsp;не&nbsp;используем сложных формул. Итоговая стоимость вашего украшения&nbsp;&mdash; это сумма всего трех параметров: работа мастера + материалы (наши или ваши) + камни. Вы&nbsp;можете легко прикинуть бюджет, а&nbsp;точный расчет получите на&nbsp;консультации.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-3" data-modal-title="Воплотить свою идею">Воплотить свою идею</button>
                </div>
            </section>

            <section class="steps-section">
                <h2>Как заказать изготовление ювелирного изделия?</h2>
                <div class="text">Весь путь от&nbsp;идеи до&nbsp;готового украшения прост и&nbsp;понятен. Вы&nbsp;можете участвовать в&nbsp;процессе лично или удаленно, из&nbsp;любой точки мира. Мы&nbsp;подготовили пошаговую инструкцию.</div>
                <div class="steps swiper">
                    <div class="swiper-wrapper">
                        <div class="step swiper-slide">
                            <div class="step__inner">
                                <img class="step__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-idea.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="step__num">Шаг&nbsp;1</div>
                                <p>Идея. Вы&nbsp;присылаете фото понравившегося украшения, эскиз от&nbsp;руки или просто описываете желание нашему менеджеру.</p>
                            </div>
                        </div>
                        <div class="step swiper-slide">
                            <div class="step__inner">
                                <img class="step__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-user-screen.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="step__num">Шаг&nbsp;2</div>
                                <p>Встреча/онлайн-звонок. Обсуждаем с&nbsp;мастером детали: металл, камни, бюджет и&nbsp;сроки.</p>
                            </div>
                        </div>
                        <div class="step swiper-slide">
                            <div class="step__inner">
                                <img class="step__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-pen.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="step__num">Шаг&nbsp;3</div>
                                <p>Эскиз и&nbsp;3D-модель. Наш художник создает эскиз, затем&nbsp;&mdash; точную 3D-модель будущего украшения для утверждения.</p>
                            </div>
                        </div>
                        <div class="step swiper-slide">
                            <div class="step__inner">
                                <img class="step__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-checkcard.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="step__num">Шаг&nbsp;4</div>
                                <p>Предоплата. Вы&nbsp;вносите предоплату (от&nbsp;30%). Заключаем официальный договор.</p>
                            </div>
                        </div>
                        <div class="step swiper-slide">
                            <div class="step__inner">
                                <img class="step__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-making.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="step__num">Шаг&nbsp;5</div>
                                <p>Производство. Украшение проходит все этапы: от&nbsp;3D-печати восковки до&nbsp;ручной обработки.</p>
                            </div>
                        </div>
                        <div class="step swiper-slide">
                            <div class="step__inner">
                                <img class="step__icon" src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-ring.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="step__num">Шаг&nbsp;6</div>
                                <p>Примерка и&nbsp;получение. Вы&nbsp;любуетесь результатом, получаете паспорт изделия с&nbsp;пробой и&nbsp;гарантию.</p>
                            </div>
                        </div>
                    </div>

                    <div class="swiper-buttons show-on-tab">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
                <div class="text">Срок изготовления: от&nbsp;идеи до&nbsp;готового украшения&nbsp;&mdash; от&nbsp;5&nbsp;до&nbsp;30&nbsp;дней. Всё зависит от&nbsp;сложности.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Обсудить детали">Обсудить детали</button>
                </div>
            </section>

            <section class="process-section">
                <h2>Процесс изготовления: как рождается украшение</h2>
                <div class="text">Мы&nbsp;объединили вековые традиции ювелирного дела с&nbsp;передовыми технологиями, такими как 3D-моделирование и&nbsp;цифровая печать. Это позволяет добиваться идеальной геометрии и&nbsp;проработки мельчайших деталей, которые невозможно создать вручную. Проследите за&nbsp;основными этапами превращения эскиза в&nbsp;сияющее золотое украшение.</div>
                <div class="process swiper">
                    <div class="swiper-wrapper">
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/process-1.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Разработка эскиза и&nbsp;3D-модели</h3>
                                    <p>Художник переносит вашу идею на&nbsp;бумагу, создавая первые наброски. После утверждения эскиза в&nbsp;дело вступает 3D-дизайнер. Он&nbsp;создает объемную модель, где видна каждая грань и&nbsp;пропорция будущего изделия. Это позволяет увидеть украшение со&nbsp;всех сторон еще до&nbsp;начала производства.</p>
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
                                    <p>3D-модель отправляется на&nbsp;специализированный 3D-принтер, который с&nbsp;ювелирной точностью выращивает точную копию украшения из&nbsp;специального воска. Эта &laquo;восковка&raquo;&nbsp;&mdash; прототип, идеально повторяющий форму будущего кольца или сережек.</p>
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
                                    <p>Восковую модель помещают в&nbsp;огнеупорный гипс и&nbsp;обжигают в&nbsp;печи. Воск выгорает, оставляя идеально пустую форму. В&nbsp;эту форму под давлением заливают расплавленный металл&nbsp;&mdash; золото, платину или серебро. Получается точная металлическая отливка.</p>
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
                                    <p>Отливка попадает в&nbsp;руки ювелира-монтировщика. Он&nbsp;удаляет литники (лишний металл), подгоняет и&nbsp;спаивает детали. Затем начинается кропотливая шлифовка и&nbsp;полировка, которая придает металлу зеркальный блеск.</p>
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
                                    <p>Готовое изделие обязательно проходит контроль в&nbsp;Государственной Пробирной Палате. Специалисты проверяют пробу и&nbsp;ставят государственное клеймо, а&nbsp;также именник производителя. Это официальная гарантия подлинности металла.</p>
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
                                    <p>Самый ответственный этап. Мастер-закрепщик работает с&nbsp;микроскопом и&nbsp;специальными инструментами. Он&nbsp;аккуратно фиксирует каждый камень в&nbsp;оправе, создавая надежное и&nbsp;красивое крепление (крапановое, корнеровое, глухое). От&nbsp;этого этапа зависит, как камень будет играть на&nbsp;свету.</p>
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
                                    <p>Ювелир проводит окончательную чистку, матирует или полирует поверхность, при необходимости наносит гальваническое покрытие (например, родирование белого золота). Украшение готово!</p>
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
            <?php if ($project_slides) { ?>
            <section class="examples-section">
                <h2>Примеры созданных украшений в&nbsp;нашей студии</h2>
                <div class="examples swiper">
                    <div class="swiper-wrapper">
                        <?php foreach ($project_slides as $slide) { ?>
                        <div class="example swiper-slide">
                            <?php foreach ($slide as $project) { ?>
                            <a href="<?php echo htmlspecialchars($project['href'], ENT_QUOTES, 'UTF-8'); ?>" class="example__item">
                                <picture class="example__image"><img src="<?php echo htmlspecialchars($project['image'], ENT_QUOTES, 'UTF-8'); ?>" alt="<?php echo htmlspecialchars($project['name'], ENT_QUOTES, 'UTF-8'); ?>" width="490" height="490" loading="lazy"></picture>
                                <div class="example__text"><span><?php echo htmlspecialchars($project['name'], ENT_QUOTES, 'UTF-8'); ?></span></div>
                            </a>
                            <?php } ?>
                        </div>
                        <?php } ?>
                    </div>
                    <div class="swiper-buttons">
                        <a href="/nasha-rabota" class="btn btn--big btn--border btn--dark">Смотреть все работы</a>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
            </section>
            <?php } ?>

            <?php echo $employees; ?>
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
                    <div class="swiper-buttons">
                        <a href="/o-studii/otzyvy" class="btn btn--big btn--border btn--dark">Все отзывы</a>
                        <div class="swiper-button-prev"></div><div class="swiper-pagination"></div><div class="swiper-button-next"></div>
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
            <?php if ($faq) { ?>
            <section class="faq-section">
                <h2>Часто задаваемые вопросы</h2>
                <div class="faq-list">
                    <?php foreach ($faq as $item) { ?>
                    <div class="faq-item">
                        <div class="faq-item__question"><h3><?php echo htmlspecialchars($item['question'], ENT_QUOTES, 'UTF-8'); ?></h3></div>
                        <div class="faq-item__answer"><?php echo $item['answer']; ?></div>
                    </div>
                    <?php } ?>
                </div>
            </section>
            <?php } ?>

            <section class="map-section">
                <h2>Изготавливаем украшения в&nbsp;Москве&nbsp;&mdash; доставляем в&nbsp;любой город России, СНГ и&nbsp;мира</h2>
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
                <div class="buttons"><button type="button" class="btn btn--big" data-modal="#modal-3" data-modal-title="Обсудить идею">Обсудить идею</button></div>
            </section>
            <?php } ?>
        </main>
<?php echo $footer; ?>

