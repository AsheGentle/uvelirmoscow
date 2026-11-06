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
                    <h1>Изготовление цепочек на&nbsp;заказ</h1>
                    <div class="showcase__text">
                        Изготовление цепочек на&nbsp;заказ из&nbsp;золота, серебра, платины. Плетения: бисмарк, якорное, панцирное, фигаро, сингапур, ролло. Индивидуальная длина и&nbsp;толщина.
                    </div>
                    <div class="showcase__buttons">
                        <button type="button" class="btn btn--medium" data-modal="#modal-1" data-modal-title="Бесплатная консультация">Бесплатная консультация</button>
                        <button type="button" class="btn btn--border btn--medium" data-modal="#modal-2">Рассчитать стоимость</button>
                    </div>
                </div>
                <picture class="showcase__image">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/showcase-img-chains-mobile.webp" media="(max-width: 599px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/showcase-img-chains-tab.webp" media="(max-width: 836px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/showcase-img-chains.webp">
                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/showcase-img-chains.webp" alt="" width="620" height="620">
                </picture>
                <picture class="showcase__bg">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/showcase-bg-chains-mobile.webp" media="(max-width: 599px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/showcase-bg-chains-tab.webp" media="(max-width: 836px)">
                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/showcase-bg-chains.webp" alt="">
                </picture>
            </section>

<?php if ($category_wall) { ?>
            <section class="types-section">
                <h2>Виды цепочек, которые мы&nbsp;изготавливаем на&nbsp;заказ</h2>
                <div class="text">Изготавливаем цепочки для кулонов и&nbsp;самостоятельной носки&nbsp;&mdash; от&nbsp;классических якорных до&nbsp;сложных панцирных и&nbsp;филигранных переплетений. В&nbsp;разделах ниже собраны примеры разной толщины и&nbsp;фактуры. Изучите&nbsp;их, чтобы выбрать основу для вашего украшения. Отдельный мастер поможет подобрать оптимальную длину и&nbsp;замок.</div>
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
                <h2>Почему выгоднее заказать изготовление цепочки, чем купить готовую?</h2>
                <div class="why__title">Готовые цепочки из&nbsp;магазина&nbsp;&mdash; это всегда компромисс между желанием и&nbsp;реальностью...</div>
                <div class="why__text">Часто цепочки не&nbsp;подходят по&nbsp;длине, имеют непрочные звенья или слабый замок, который быстро выходит из&nbsp;строя. Индивидуальное изготовление решает эти проблемы: вы&nbsp;получаете цепочку идеальной длины, с&nbsp;надёжным плетением и&nbsp;замком, который выдержит ежедневную носку и&nbsp;вес вашего кулона.</div>
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
                <h2>Изготовление цепочек из&nbsp;разных металлов</h2>
                <div class="text">Выбор металла определяет не&nbsp;только внешний вид, но&nbsp;и&nbsp;долговечность вашей цепочки. Мы&nbsp;работаем со&nbsp;всеми ювелирными сплавами, представленными на&nbsp;рынке. Каждый материал имеет свои особенности, о&nbsp;которых мы&nbsp;вам подробно расскажем перед изготовлением.</div>
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
                        <h3>Оттенки цепочек из&nbsp;разных материалов</h3>
                        <p>Для цепочки, которую вы&nbsp;планируете носить ежедневно, не&nbsp;снимая, лучше подойдет прочное красное золото или износостойкая платина. Для тонкой, изящной цепочки, которую вы&nbsp;надеваете по&nbsp;особым случаям,&nbsp;&mdash; элегантное белое или розовое золото, которое подчеркнет нежность дизайна. Наши мастера всегда проконсультируют вас, какой металл лучше подчеркнет красоту вашего украшения и&nbsp;обеспечит цепочке максимальный срок службы.</p>
                    </div>
                    <picture class="materials-colors__image">
                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/material-colors.webp" alt="" width="486" height="175" loading="lazy">
                    </picture>
                </div>
            </section>

            <section class="own-materials-section">
                <h2>Изготовим цепочку из&nbsp;вашего металла</h2>
                <div class="text">Ваши семейные реликвии могут засиять по-новому. Мы&nbsp;принимаем золото, платину и&nbsp;серебро любой пробы&nbsp;&mdash; от&nbsp;старых украшений до&nbsp;слитков. Переплавляем ваш металл и&nbsp;создаём из&nbsp;него современную цепочку, которую вы&nbsp;будете носить с&nbsp;гордостью. Вы&nbsp;оплачиваете только работу мастера.</div>
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

            <section class="variants-section">
                <h2>Типы плетения цепочек изготавливаемых на&nbsp;заказ</h2>
                <div class="text">Плетение цепочки определяет не&nbsp;только её&nbsp;внешний вид, но&nbsp;и&nbsp;то, как украшение будет сидеть на&nbsp;шее, вести себя в&nbsp;носке и&nbsp;сочетаться с&nbsp;подвесками. Мы&nbsp;изготавливаем цепочки на&nbsp;заказ вручную под ваш стиль, бюджет и&nbsp;привычный образ жизни. Ниже основные типы плетения, которые вы&nbsp;можете заказать.</div>
                <div class="variants swiper">
                    <div class="swiper-wrapper">
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Бисмарк</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/variant-1.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Крупное, массивное плетение из&nbsp;2-4 рядов закрученных звеньев</p>
                                    <p><strong>Внешний вид:</strong> Объемный, богатый, с&nbsp;игрой света</p>
                                    <p><strong>Для кого:</strong> Мужские, статусные, подвески до&nbsp;20&nbsp;г</p>
                                    <p><strong>Особенности:</strong> Классика мужских цепей и&nbsp;браслетов. Не&nbsp;путается</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Якорное</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/variant-2.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Классическое плетение: круглые звенья входят друг в&nbsp;друга, как у&nbsp;якорной цепи</p>
                                    <p><strong>Внешний вид:</strong> Лаконичное, морской стиль, надёжное.</p>
                                    <p><strong>Для кого:</strong> Унисекс, от&nbsp;тонких до&nbsp;массивных</p>
                                    <p><strong>Особенности:</strong> Универсальное, недорогое в&nbsp;изготовлении</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Панцирное (анаконда)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/variant-3.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Звенья лежат в&nbsp;одной плоскости, гладкие, без просветов</p>
                                    <p><strong>Внешний вид:</strong> Гладкое, блестящее, &laquo;жидкое серебро&raquo;.</p>
                                    <p><strong>Для кого:</strong> Женские, тонкие, с&nbsp;подвесками</p>
                                    <p><strong>Особенности:</strong> Не&nbsp;царапает кожу, не&nbsp;цепляет волосы, идеально под рубашку</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Фигаро</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/variant-4.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Ритмичное чередование: 1-3 коротких звена + 1&nbsp;длинное</p>
                                    <p><strong>Внешний вид:</strong> Динамичное, итальянский стиль, узнаваемое</p>
                                    <p><strong>Для кого:</strong> Унисекс, от&nbsp;тонких до&nbsp;массивных</p>
                                    <p><strong>Особенности:</strong> Популярно в&nbsp;ювелирке, не&nbsp;путается, хорошо с&nbsp;подвесками</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Сингапурское</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/variant-5.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Звенья в&nbsp;форме восьмёрки или спирали, витые</p>
                                    <p><strong>Внешний вид:</strong> Мерцающее, &laquo;живое&raquo;, очень женственное</p>
                                    <p><strong>Для кого:</strong> Женские, тонкие, лёгкие кулоны</p>
                                    <p><strong>Особенности:</strong> Красиво играет на&nbsp;свету, но&nbsp;может путаться при носке</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Ролло (шопард)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/variant-6.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Звенья в&nbsp;виде круглых &laquo;колесиков&raquo;, плотно соединённых</p>
                                    <p><strong>Внешний вид:</strong> Элегантное, с&nbsp;характерным блеском каждого звена</p>
                                    <p><strong>Для кого:</strong> Унисекс, особенно женские</p>
                                    <p><strong>Особенности:</strong> Не&nbsp;путается, хорошо с&nbsp;подвесками, дорогой вид</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Кордовое (витое, крученое)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/variant-7.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Плетение из&nbsp;скрученной проволоки, напоминающее верёвку</p>
                                    <p><strong>Внешний вид:</strong> Плотное, текстурное, как канатик</p>
                                    <p><strong>Для кого:</strong> Мужские, крепкие цепи, тяжёлые кулоны</p>
                                    <p><strong>Особенности:</strong> Прочное, не&nbsp;путается, держит форму</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Глидерные (литые)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/variant-8.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Цепочка из&nbsp;литых звеньев, соединённых шарнирно или пружинящим способом.</p>
                                    <p><strong>Внешний вид:</strong> Гладкие, объёмные звенья правильной формы, часто с&nbsp;рельефом.</p>
                                    <p><strong>Для кого:</strong> Мужские, крепкие цепи, тяжёлые кулоны</p>
                                    <p><strong>Особенности:</strong> Объёмные, рельефные звенья правильной формы</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-buttons">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
                <div class="text">Выбрать плетение&nbsp;&mdash; только первый шаг. Дальше мы&nbsp;подбираем металл (золото, серебро, платину или их&nbsp;сочетание), толщину, длину, тип замка и&nbsp;при необходимости добавляем гравировку. Если сомневаетесь, какое плетение лучше подойдёт под ваш образ жизни или подвеску, напишите&nbsp;&mdash; мы&nbsp;поможем с&nbsp;выбором. Изготовим цепочку под ключ: от&nbsp;эскиза до&nbsp;готового украшения.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-4">Выбрать плетение</button>
                </div>
            </section>

            <section class="variants-section variants-section--bg">
                <h2>Какие замки для цепочек мы&nbsp;используем&nbsp;&mdash; безопасность и&nbsp;комфорт</h2>
                <div class="text">Цепочка носится постоянно, часто под одеждой, поэтому застежка должна быть незаметной, но&nbsp;надежной. И&nbsp;не&nbsp;цеплять волосы.</div>
                <div class="variants swiper">
                    <div class="swiper-wrapper">
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Карабин (&laquo;лобстер&raquo;)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/variant-9.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Самый популярный и&nbsp;универсальный замок для ювелирных цепей.</p>
                                    <p><strong>Для каких цепочек:</strong> Женские и&nbsp;мужские цепочки (от&nbsp;2&nbsp;до&nbsp;50&nbsp;г)</p>
                                    <p><strong>Особенности:</strong> Не&nbsp;цепляет волосы. Самый популярный замок в&nbsp;мире. Идеальный баланс цены и&nbsp;качества.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Шпрингель (пружинный крюк)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/variant-10.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Простой пружинный крюк без язычка. Работает за&nbsp;счёт внутренней пружины. Компактный и&nbsp;лёгкий.</p>
                                    <p><strong>Для каких цепочек:</strong> Женские цепочки (до&nbsp;15г)</p>
                                    <p><strong>Особенности:</strong> Может цепляться за&nbsp;тонкие ткани. Дешевле лобстера</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Бокс-замок (коробочный)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/variant-11.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Замок в&nbsp;виде ровной коробочки с&nbsp;пружинным язычком. Одна часть вставляется в&nbsp;другую до&nbsp;щелчка.</p>
                                    <p><strong>Для каких цепочек:</strong> Цепочки-невидимки, бусы, колье, массивные мужские цепи</p>
                                    <p><strong>Особенности:</strong> Эстетичный и&nbsp;незаметный. Не&nbsp;цепляет волосы и&nbsp;одежду. Универсален&nbsp;&mdash; ставится как на&nbsp;тонкие, так и&nbsp;на&nbsp;тяжёлые изделия.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Замок-спринг (с&nbsp;карабином)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/variant-12.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Пружинный механизм, встроенный непосредственно в&nbsp;звено цепи.</p>
                                    <p><strong>Для каких цепочек:</strong> Тонкие и&nbsp;толстые цепочки</p>
                                    <p><strong>Особенности:</strong> Простой и&nbsp;недорогой вариант. Для ценных украшений используем редко.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Магнитный замок</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/variant-13.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Две половинки замка соединяются за&nbsp;счёт встроенных магнитов. Застёгивается мгновенно, без усилий.</p>
                                    <p><strong>Для каких цепочек:</strong> Для детей, пожилых, временное ношение.</p>
                                    <p><strong>Особенности:</strong> Легко расстёгивается от&nbsp;рывка или зацепа. Не&nbsp;рекомендуется для ценных изделий.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Винтовой (баррель)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/variant-14.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Цилиндрический замок с&nbsp;резьбой. Две половинки плотно вкручиваются друг в&nbsp;друга.</p>
                                    <p><strong>Для каких цепочек:</strong> В&nbsp;основном для бус и&nbsp;ниток жемчуга. На&nbsp;цепочки и&nbsp;колье ставится редко.</p>
                                    <p><strong>Особенности:</strong> Исключает случайное расстёгивание. Требует времени на&nbsp;закручивание.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Костыль (тогл)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/variant-15.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Состоит из&nbsp;кольца и&nbsp;Т-образного штифта, который продевается в&nbsp;кольцо и&nbsp;фиксируется поперечно.</p>
                                    <p><strong>Для каких цепочек:</strong> Цепочки и&nbsp;колье средней тяжести, этно-стиль, винтажные модели.</p>
                                    <p><strong>Особенности:</strong> Стильный и&nbsp;простой замок. Часто является декоративным элементом.</p>
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
                <div class="text">Для цепочки, которую носите не&nbsp;снимая, лучший выбор&nbsp;&mdash; небольшой лобстер (8-10&nbsp;мм) или бокс-замок. Цвет и&nbsp;форму подбираем под плетение цепи, чтобы застежка не&nbsp;выбивалась.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-4">Прислать фото</button>
                </div>
            </section>

            <section class="surfaces-section">
                <h2>Какая обработка подойдет вашей цепочке&nbsp;&mdash; выбираем финиш под стиль и&nbsp;комфорт</h2>
                <div class="text">Финишная обработка определяет, как браслет будет выглядеть на&nbsp;руке и&nbsp;ощущаться при носке. От&nbsp;зеркального блеска до&nbsp;бархатистой матовости.</div>
                <div class="surfaces swiper">
                    <div class="swiper-wrapper">
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Гладкая полированная</div>
                                    <div class="surface__text">
                                        <p>Зеркальный блеск. Классика.</p>
                                        <p><strong>Особенности носки:</strong> Не&nbsp;цепляет волосы. Хорошо скользит.</p>
                                        <p><strong>Для каких цепочек:</strong> Все типы, особенно тонкие</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/surface-1.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Матовая</div>
                                    <div class="surface__text">
                                        <p>Бархатистая, без бликов.</p>
                                        <p><strong>Особенности носки:</strong> Тоже не&nbsp;цепляет, но&nbsp;менее скользкая. Может &laquo;тормозить&raquo; на&nbsp;вороте.</p>
                                        <p><strong>Для каких цепочек:</strong> Мужские, брутальные</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/surface-2.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">С&nbsp;алмазной огранкой</div>
                                    <div class="surface__text">
                                        <p>Мерцающая поверхность.</p>
                                        <p><strong>Особенности носки:</strong> Не&nbsp;цепляет. Очень красиво играет на&nbsp;свету.</p>
                                        <p><strong>Для каких цепочек:</strong> Вечерние, подвески</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/surface-3.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Родированная</div>
                                    <div class="surface__text">
                                        <p>Белое покрытие. Защищает от&nbsp;потускнения и&nbsp;царапин.</p>
                                        <p><strong>Особенности носки:</strong> Не&nbsp;влияет на&nbsp;тактильность. Продлевает жизнь украшениям</p>
                                        <p><strong>Для каких цепочек:</strong> Цепочки из&nbsp;белого золота</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/surface-4.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Чернение</div>
                                    <div class="surface__text">
                                        <p>Темные углубления&nbsp;&mdash; только подчеркивает звенья.</p>
                                        <p><strong>Особенности носки:</strong> Не&nbsp;страшно, если чернение внутри звеньев.</p>
                                        <p><strong>Для каких цепочек:</strong> Цепочки с&nbsp;выраженным рисунком</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/surface-5.webp" alt="" width="185" height="185" loading="lazy">
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
                <div class="text">У&nbsp;Вас длинные волосы? Посоветуем обработку, которая не&nbsp;будет их&nbsp;цеплять. Не&nbsp;знаете, что выбрать? Пришлите фото плетения&nbsp;&mdash; подберем идеальный финиш.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-4">Прислать фото</button>
                </div>
            </section>

            <section class="stones-section">
                <h2>Изготовление цепочек с&nbsp;камнями</h2>
                <div class="text">Драгоценный камень&nbsp;&mdash; это душа украшения. Он&nbsp;придаёт цепочке цвет, смысл и&nbsp;сияние. Мы&nbsp;поможем вам выбрать камень, идеально подходящий под ваш эскиз и&nbsp;бюджет. В&nbsp;нашей базе&nbsp;&mdash; тысячи сертифицированных камней, а&nbsp;также мы&nbsp;работаем с&nbsp;камнями заказчика.</div>
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
                <div class="text">Мы&nbsp;работаем с&nbsp;полным спектром камней&nbsp;&mdash; от&nbsp;популярных бриллиантов и&nbsp;сапфиров до&nbsp;редких демантоидов и&nbsp;параиба. Каждый камень в&nbsp;нашей мастерской проходит геммологическую экспертизу, поэтому вы&nbsp;получаете не&nbsp;только красивые, но&nbsp;и&nbsp;юридически подтверждённые серьги. По&nbsp;вашему желанию мы&nbsp;подберём камень под любой бюджет и&nbsp;предоставим все сертификаты соответствия. Если у&nbsp;вас есть семейный камень, мы&nbsp;готовы создать для него новую, достойную оправу, чтобы он&nbsp;засиял в&nbsp;ваших серьгах по-новому.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Получить консультацию">Получить консультацию</button>
                </div>
            </section>

            <section class="tables-section">
                <h2>Изготавливаем цепочки с&nbsp;камнями разной каратности</h2>
                <div class="text">Карат&nbsp;&mdash; это единица веса драгоценного камня.&nbsp;1&nbsp;карат = 0.2&nbsp;грамма. От&nbsp;веса камня зависит его размер, блеск&nbsp;и, конечно, цена. Мы&nbsp;подберем камень под ваш бюджет и&nbsp;задачи.</div>
                <h3>Какой вес камня выбрать для цепочки?</h3>
                <div class="table">
                    <table>
                        <thead>
                            <tr>
                                <th>Вес камня (карат)</th>
                                <th>Визуальный размер</th>
                                <th>Для какой цепочки подходит</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><span class="table__carat">до&nbsp;0.03&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-1.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Меле</td>
                                <td>Цепочки с&nbsp;бриллиантовой дорожкой</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">0.03&nbsp;- 0.1&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-2.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Маленький</td>
                                <td>Тонкие женские цепочки с&nbsp;подвеской</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">0.1&nbsp;- 0.3&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-3.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Небольшой</td>
                                <td>Цепочки с&nbsp;кулоном-солитером&nbsp;&mdash; популярный вес</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">0.31&nbsp;- 0.5&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-4.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Средний</td>
                                <td>Премиальные цепочки, мужские модели с&nbsp;камнем</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">0.51&nbsp;- 1.0&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-5.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Стандартный</td>
                                <td>Эксклюзивные цепочки с&nbsp;крупной подвеской</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">от&nbsp;1.0&nbsp;- 11.0&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-6.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Крупный</td>
                                <td>Уникальные дизайнерские комплекты</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="text">Не&nbsp;уверены, какой карат выбрать? Мы&nbsp;покажем вам камни разного веса вживую или на&nbsp;фото. Также вы&nbsp;можете принести свой камень&nbsp;&mdash; мы&nbsp;сделаем цепочку под него.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Подобрать камень">Подобрать камень под бюджет</button>
                </div>
            </section>

            <section class="tables-section bg-section">
                <h2>Точная длина цепочки&nbsp;&mdash; под вашу шею, декольте и&nbsp;одежду</h2>
                <div class="text">Вам не&nbsp;нужно выбирать между &laquo;чуть коротковато&raquo; и&nbsp;&laquo;чуть длинновато&raquo;. Мы&nbsp;делаем цепочку ровно той длины, которая будет удобна именно вам.</div>
                <div class="table table--light">
                    <table>
                        <thead>
                            <tr>
                                <th>Длина</th>
                                <th>Название</th>
                                <th>Как сидит</th>
                                <th>Вам может подойти, если...</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>40&ndash;45&nbsp;см</td>
                                <td>Чокер (плотно)</td>
                                <td>Вокруг шеи, почти как ожерелье</td>
                                <td>Хотите акцент на&nbsp;шее, носите с&nbsp;открытым декольте</td>
                            </tr>
                            <tr>
                                <td>45&ndash;50&nbsp;см</td>
                                <td>Классическая</td>
                                <td>Чуть ниже ключиц</td>
                                <td>Стандартная длина</td>
                            </tr>
                            <tr>
                                <td>50&ndash;55&nbsp;см</td>
                                <td>Принцесса</td>
                                <td>На&nbsp;уровне декольте</td>
                                <td>Для подвески средней тяжести</td>
                            </tr>
                            <tr>
                                <td>55&ndash;60&nbsp;см</td>
                                <td>Матинэ</td>
                                <td>Ниже декольте, выше груди</td>
                                <td>Для крупной подвески</td>
                            </tr>
                            <tr>
                                <td>0&ndash;70&nbsp;см</td>
                                <td>Опера</td>
                                <td>До&nbsp;середины груди</td>
                                <td>Под платье с&nbsp;высоким воротом</td>
                            </tr>
                            <tr>
                                <td>70&ndash;90&nbsp;см</td>
                                <td>Длинная</td>
                                <td>Ниже линии груди</td>
                                <td>Многослойная укладка, поверх одежды</td>
                            </tr>
                            <tr>
                                <td>90&ndash;120&nbsp;см</td>
                                <td>Лариат</td>
                                <td>До&nbsp;пояса, можно обернуть</td>
                                <td>Как аксессуар-трансформер</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Подобрать размер">Подобрать свой размер</button>
                </div>
            </section>

            <section class="brands-section">
                <h2>Изготовим цепочки в&nbsp;стиле популярных ювелирных брендов</h2>
                <div class="text">Мечтаете о&nbsp;цепочке как у&nbsp;Tiffany, Cartier или Bvlgari, но&nbsp;хотите уникальную деталь или бюджетный вариант? Мы&nbsp;сделаем браслет в&nbsp;узнаваемом стиле бренда, но&nbsp;с&nbsp;вашими пожеланиями: другим металлом, размером камня или гравировкой.</div>
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
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/carrera.svg" alt="" width="426" height="59" loading="lazy">
                            </picture>
                            <div class="brand__text">Скульптурный, испанский</div>
                        </div>
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/buccellati.svg" alt="" width="426" height="59" loading="lazy">
                            </picture>
                            <div class="brand__text">Винтажный, кружевной</div>
                        </div>
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/chopard.svg" alt="" width="426" height="59" loading="lazy">
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
                <div class="text">Мы&nbsp;не&nbsp;делаем подделку с&nbsp;логотипом. Мы&nbsp;создаем уникальную цепочку по&nbsp;мотивам дизайна, который будет соответствовать вашему бюджету и&nbsp;предпочтениям. Вы&nbsp;сохраняете узнаваемый стиль, но&nbsp;получаете полностью оригинальное украшение.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Выбрать стиль бренда">Выбрать стиль бренда</button>
                </div>
            </section>

<?php
            $visible_cost_segments = array_filter($cost_segments);
            $first_cost_segment = $visible_cost_segments ? key($visible_cost_segments) : '';
            ?>
            <section class="prices-section">
                <h2>Стоимость изготовления цепочки</h2>
                <div class="text">Мы&nbsp;за&nbsp;прозрачность. Конечная цена складывается из&nbsp;трех простых составляющих. Вы&nbsp;можете легко прикинуть бюджет заранее, а&nbsp;наш мастер просчитает точную стоимость на&nbsp;бесплатной консультации.</div>
                <?php $prices_examples_title = 'Примеры цен изготавливаемых цепочек'; require(DIR_TEMPLATE . 'uvelirmoscow_new/template/product/manufacturing_category_prices_intro.tpl'); ?>
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
                <h2>Примеры изготовленных цепочек на&nbsp;заказ</h2>
                <div class="text">Ниже представлены реальные работы нашей студии. Каждая цепочка создана с&nbsp;нуля по&nbsp;индивидуальному эскизу&nbsp;&mdash; от&nbsp;тонких нательных до&nbsp;массивных мужских цепей с&nbsp;эксклюзивным плетением. Нажмите на&nbsp;фото, чтобы увидеть детали и&nbsp;узнать историю создания.</div>
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
                <h2>Как мы&nbsp;создаём цепочки на&nbsp;заказ</h2>
                <div class="text">Весь путь от&nbsp;идеи до&nbsp;готовой цепочки прозрачен и&nbsp;понятен. Вы&nbsp;можете участвовать в&nbsp;процессе лично или удалённо&nbsp;&mdash; мы&nbsp;снимаем каждый этап на&nbsp;фото и&nbsp;видео. От&nbsp;эскиза до&nbsp;финишной полировки&nbsp;&mdash; ваша цепочка проходит все стадии под контролем мастеров.</div>
                <div class="process swiper">
                    <div class="swiper-wrapper">
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/process-1.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Идея и&nbsp;консультация</h3>
                                    <p>Обсуждаем тип плетения (бисмарк, якорное, панцирное, фигаро, сингапур, ролло, кордовое, косичка), длину, толщину, металл, пробу, тип замка (карабин, лобстер, винтовой, магнитный). Показываем образцы плетений.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/process-2.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Выбор плетения</h3>
                                    <p>По&nbsp;вашему запросу подбираем оптимальное плетение под вес кулона и&nbsp;стиль носки: для тяжёлых подвесок&nbsp;&mdash; бисмарк или панцирное, для лёгких&nbsp;&mdash; сингапур или косичка.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/process-3.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Формирование звеньев</h3>
                                    <p>Мастер изготавливает звенья из&nbsp;проволоки нужного сечения (круглой, плоской, фасонной). Для каждого плетения&nbsp;&mdash; своя технология пайки и&nbsp;сборки.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/process-4.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Плетение</h3>
                                    <p>Вручную или на&nbsp;станке сплетаем цепочку. Контролируем равномерность звеньев, отсутствие зазоров и&nbsp;перекосов.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/process-5.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Пайка и&nbsp;рихтовка</h3>
                                    <p>Каждое звено пропаиваем (для надёжности) и&nbsp;выравниваем. Цепочка становится гибкой и&nbsp;пластичной.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/process-6.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Установка замка и&nbsp;колец</h3>
                                    <p>Припаиваем концевое кольцо, поворотный карабин или лобстер, дополнительное стопорное кольцо для подвески.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/process-7.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Полировка и&nbsp;финишная обработка</h3>
                                    <p>Глянцевая, матовая, сатинированная или галтованная поверхность. По&nbsp;желанию&nbsp;&mdash; родирование (для белого золота) или чернение.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/chains/process-8.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Пробирование и&nbsp;выдача</h3>
                                    <p>Клеймение, паспорт, гарантия на&nbsp;пайку звеньев 12&nbsp;месяцев.</p>
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
                <h2>Видеоотзывы наших клиентов</h2>
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
                            <div class="swiper-buttons show-on-tab show-on-tab">
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
                <h2>Закажите изготовление <br>цепочки своей мечты прямо сейчас</h2>
                <div class="text">Совместно со&nbsp;всеми специалистами&nbsp;Вы сможете обсудить Вашу будущую цепочку.</div>
                <div class="consultation__buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Заказать консультацию">Заказать консультацию</button>
                    <button type="button" class="btn btn--big btn--border" data-modal="#modal-2">Рассчитать стоимость</button>
                </div>
            </section>

<?php if ($faq) { ?>
            <section class="faq-section">
                <h2>Часто задаваемые вопросы об&nbsp;изготовлении цепочек</h2>
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
                <h2>Изготавливаем цепочки в&nbsp;Москве&nbsp;&mdash; доставляем в&nbsp;любой город России, СНГ и&nbsp;мира</h2>
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
