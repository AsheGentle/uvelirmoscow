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
                    <h1>Изготовление подвесок и&nbsp;кулонов на&nbsp;заказ</h1>
                    <div class="showcase__text">
                        Изготовление подвесок и&nbsp;кулонов на&nbsp;заказ из&nbsp;золота, серебра, платины. Кресты, сердечки, именные, с&nbsp;бриллиантами, с&nbsp;камнями. Индивидуальный дизайн.
                    </div>
                    <div class="showcase__buttons">
                        <button type="button" class="btn btn--medium" data-modal="#modal-1" data-modal-title="Бесплатная консультация">Бесплатная консультация</button>
                        <button type="button" class="btn btn--border btn--medium" data-modal="#modal-2">Рассчитать стоимость</button>
                    </div>
                </div>
                <picture class="showcase__image">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/showcase-img-pendants-mobile.webp" media="(max-width: 599px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/showcase-img-pendants-tab.webp" media="(max-width: 836px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/showcase-img-pendants.webp">
                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/showcase-img-pendants.webp" alt="" width="620" height="620">
                </picture>
                <picture class="showcase__bg">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/showcase-bg-pendants-mobile.webp" media="(max-width: 599px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/showcase-bg-pendants-tab.webp" media="(max-width: 836px)">
                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/showcase-bg-pendants.webp" alt="">
                </picture>
            </section>
<?php if ($category_wall) { ?>
            <section class="types-section">
                <h2>Виды подвесок и&nbsp;кулонов, которые мы&nbsp;изготавливаем на&nbsp;заказ</h2>
                <div class="text">Изготавливаем подвески и&nbsp;кулоны&nbsp;&mdash; от&nbsp;маленьких плоских медальонов до&nbsp;объёмных композиций с&nbsp;подвижными элементами. Разделы ниже показывают варианты форм, размеров и&nbsp;типов креплений. Листая примеры, вы&nbsp;сможете выбрать основу для вашего украшения&nbsp;&mdash; будь&nbsp;то строгий геометрический кулон или фигурный талисман. Консультант по&nbsp;дизайну уточнит все детали и&nbsp;поможет с&nbsp;эскизом.</div>
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
                <h2>Почему выгоднее заказать подвеску или кулон, чем купить готовые?</h2>
                <div class="why__title">Готовые подвески из&nbsp;магазина&nbsp;&mdash; это всегда компромисс между желанием и&nbsp;реальностью...</div>
                <div class="why__text">Часто подвески не&nbsp;подходят по&nbsp;размеру, имеют усреднённый дизайн или не&nbsp;сочетаются с&nbsp;вашей цепочкой. Индивидуальное изготовление решает эти проблемы: вы&nbsp;получаете подвеску, идеально дополняющую вашу цепочку, с&nbsp;уникальным дизайном и&nbsp;камнями, которые выбрали именно&nbsp;вы, без компромиссов по&nbsp;качеству.</div>
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
                <h2>Изготовление подвесок и&nbsp;кулонов из&nbsp;разных металлов</h2>
                <div class="text">Выбор металла определяет не&nbsp;только внешний вид, но&nbsp;и&nbsp;долговечность вашей подвески и&nbsp;кулона. Мы&nbsp;работаем со&nbsp;всеми ювелирными сплавами, представленными на&nbsp;рынке. Каждый материал имеет свои особенности, о&nbsp;которых мы&nbsp;вам подробно расскажем перед изготовлением.</div>
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
                        <h3>Оттенки подвесок и&nbsp;кулонов из&nbsp;разных материалов</h3>
                        <p>Для подвески, которую вы&nbsp;носите ежедневно, лучше выбрать износостойкое красное золото или платину&nbsp;&mdash; они сохранят безупречный вид на&nbsp;долгие годы. Для элегантного кулона с&nbsp;крупной вставкой или изящного дизайна, который надевается по&nbsp;особым случаям, идеально подойдет белое или розовое золото, которое подчеркнет блеск камней и&nbsp;добавит образу нежности. Наши мастера всегда проконсультируют вас, какой металл лучше раскроет красоту вашего дизайна и&nbsp;обеспечит украшению максимальный срок службы.</p>
                    </div>
                    <picture class="materials-colors__image">
                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/material-colors.webp" alt="" width="486" height="175" loading="lazy">
                    </picture>
                </div>
            </section>

            <section class="own-materials-section">
                <h2>Изготовим подвеску или кулон из&nbsp;вашего металла</h2>
                <div class="text">Ваши семейные реликвии могут засиять по-новому. Мы&nbsp;принимаем золото, платину и&nbsp;серебро любой пробы&nbsp;&mdash; от&nbsp;старых украшений до&nbsp;слитков. Переплавляем ваш металл и&nbsp;создаём из&nbsp;него современную подвеску или кулон, которую вы&nbsp;будете носить с&nbsp;гордостью. Вы&nbsp;оплачиваете только работу мастера.</div>
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
                <h2>Все виды плетения для цепочек&nbsp;&mdash; выбираем под кулон, вес и&nbsp;стиль</h2>
                <div class="text">Плетение определяет, как цепочка лежит на&nbsp;шее или руке, как ведет себя кулон, насколько прочным будет украшение. От&nbsp;классического якорного до&nbsp;эксклюзивного миланского.</div>
                <div class="variants swiper">
                    <div class="swiper-wrapper">
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Панцирное (анаконда)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-1.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Для каких кулонов&nbsp;/ кому:</strong> Любые: легкие и&nbsp;тяжелые, мужские, женские</p>
                                    <p><strong>Почему выбрать:</strong> Не&nbsp;перекручивается, кулон всегда лицом вперед, не&nbsp;цепляет волосы</p>
                                    <p><strong>Минусы:</strong> Дороже якорного</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Якорное</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-2.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Для каких кулонов&nbsp;/ кому:</strong> Легкие кулоны (до&nbsp;10&nbsp;г), кресты, бюджетные варианты</p>
                                    <p><strong>Почему выбрать:</strong> Классика, недорого, надежно, проверено временем</p>
                                    <p><strong>Минусы:</strong> Кулон может переворачиваться</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Бисмарк (кардинал)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-3.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Для каких кулонов&nbsp;/ кому:</strong> Тяжелые мужские кулоны (от&nbsp;15&nbsp;г), статусные подарки</p>
                                    <p><strong>Почему выбрать:</strong> Очень прочное, объемное, богатый вид</p>
                                    <p><strong>Минусы:</strong> Грубовато для женских подвесок</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Сингапурское</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-4.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Для каких кулонов&nbsp;/ кому:</strong> Легкие женские подвески (до&nbsp;3&nbsp;г), романтичные подарки</p>
                                    <p><strong>Почему выбрать:</strong> Мерцает, красиво, очень женственное, &laquo;живое&raquo;</p>
                                    <p><strong>Минусы:</strong> Легко путается, кулон &laquo;ездит&raquo; по&nbsp;цепочке</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Фигаро</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-5.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Для каких кулонов&nbsp;/ кому:</strong> Средние подвески (5-15&nbsp;г), унисекс</p>
                                    <p><strong>Почему выбрать:</strong> Ритмичное, стильное, итальянский шик</p>
                                    <p><strong>Минусы:</strong> Кулон может застревать в&nbsp;длинных звеньях</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Крученое&nbsp;/ витое (корда)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-6.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Для каких кулонов&nbsp;/ кому:</strong> Мужские, брутальные кулоны (волк, дракон, медведь)</p>
                                    <p><strong>Почему выбрать:</strong> Очень прочное, не&nbsp;путается, массивное</p>
                                    <p><strong>Минусы:</strong> Жестковатое, не&nbsp;для тонких кулонов, не&nbsp;для женщин</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Ромб (змеиное, овальное)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-7.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Для каких кулонов&nbsp;/ кому:</strong> Женские подвески с&nbsp;камнями, именные, изящные</p>
                                    <p><strong>Почему выбрать:</strong> Элегантное, блестящее, хорошо отражает свет</p>
                                    <p><strong>Минусы:</strong> Средняя прочность, не&nbsp;для тяжелых подвесок</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>На&nbsp;леске (невидимка)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-8.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Для каких кулонов&nbsp;/ кому:</strong> Бриллиантовые кулоны, дорогие вставки, &laquo;парящие&raquo; камни</p>
                                    <p><strong>Почему выбрать:</strong> Совсем не&nbsp;видно цепочки, только кулон</p>
                                    <p><strong>Минусы:</strong> Не&nbsp;для ежедневной носки, только для особых выходов</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Миланское</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-9.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Для каких кулонов&nbsp;/ кому:</strong> Премиальные подарки, женские и&nbsp;мужские, под любой кулон</p>
                                    <p><strong>Почему выбрать:</strong> Плотное, похоже на&nbsp;ткань, очень элегантное</p>
                                    <p><strong>Минусы:</strong> Дорогое, долго делать</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Снэйк (змея, гладкий трос)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-10.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Для каких кулонов&nbsp;/ кому:</strong> Современные дизайнерские кулоны, серьги-цепочки</p>
                                    <p><strong>Почему выбрать:</strong> Гладкое, гибкое, без зазоров, &laquo;жидкий металл&raquo;</p>
                                    <p><strong>Минусы:</strong> Сложно чинить, если порвется</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Кольчужное (4-в-1, 6-в-1)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-11.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Для каких кулонов&nbsp;/ кому:</strong> Рок-стиль, брутальные мужские браслеты, косплей</p>
                                    <p><strong>Почему выбрать:</strong> Максимальная прочность, впечатляющий вид, &laquo;рыцарское&raquo;</p>
                                    <p><strong>Минусы:</strong> Очень трудоемкое, тяжелое, дорогое</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Лав-плетение (сердечки)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-12.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Для каких кулонов&nbsp;/ кому:</strong> Романтический подарок девушке, на&nbsp;годовщину</p>
                                    <p><strong>Почему выбрать:</strong> Звенья в&nbsp;виде сердечек или букв&nbsp;L и&nbsp;S&nbsp;&mdash; трогательно</p>
                                    <p><strong>Минусы:</strong> Не&nbsp;для тяжелых кулонов, деликатное</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Цветочное</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-13.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Для каких кулонов&nbsp;/ кому:</strong> Молодым девушкам, весенние/летние образы</p>
                                    <p><strong>Почему выбрать:</strong> Сплетенные звенья-лепестки, очень нежное</p>
                                    <p><strong>Минусы:</strong> Непрочное, не&nbsp;для активной носки</p>
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
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-4">Прислать фото</button>
                </div>
            </section>

            <section class="tables-section bg-section">
                <h2>Как выбрать крепление для кулона&nbsp;&mdash; под вашу цепочку и&nbsp;вес</h2>
                <div class="text">Даже самый красивый кулон будет доставлять неудобства, если ушко подобрано неправильно. Мы&nbsp;подскажем, какой вариант лучше подойдет под вашу цепочку, шнурок и&nbsp;стиль носки.</div>
                <h2>Краткая таблица&nbsp;&mdash; что выбрать под вашу задачу</h2>
                <div class="table table--light">
                    <table>
                        <thead>
                            <tr>
                                <th>Ваша ситуация</th>
                                <th>Рекомендуемый тип ушка/крепления</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Тонкая золотая цепочка (1&nbsp;мм)</td>
                                <td>Вертикальное ушко, диаметр 1.5&nbsp;мм</td>
                            </tr>
                            <tr>
                                <td>Средняя цепочка (2-3&nbsp;мм)</td>
                                <td>Вертикальное или подвижное (шарнирное)</td>
                            </tr>
                            <tr>
                                <td>Кожаный шнурок (2-4&nbsp;мм)</td>
                                <td>Горизонтальное или двойное ушко</td>
                            </tr>
                            <tr>
                                <td>Тяжелый кулон с&nbsp;камнями (15-30&nbsp;г)</td>
                                <td>Шарнирное + двойное ушко обязательно</td>
                            </tr>
                            <tr>
                                <td>Мужской брутальный кулон</td>
                                <td>Широкое плоское ушко или двойное</td>
                            </tr>
                            <tr>
                                <td>Медальон с&nbsp;фото внутри</td>
                                <td>Замок-трубочка или боковая защелка</td>
                            </tr>
                            <tr>
                                <td>Часто меняете кулоны на&nbsp;одной цепи</td>
                                <td>Вертушка (мини-карабин) припаянный к&nbsp;ушку</td>
                            </tr>
                            <tr>
                                <td>Хотите, чтобы кулон не&nbsp;переворачивался</td>
                                <td>Горизонтальное или шарнирное ушко</td>
                            </tr>
                            <tr>
                                <td>Этнический стиль на&nbsp;шнурке</td>
                                <td>Шнурок вшит в&nbsp;кулон + регулируемый узел</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="text">Если сомневаетесь&nbsp;&mdash; выберите классическое вертикальное ушко. Оно подходит к&nbsp;90% цепочек и&nbsp;кулонов. А&nbsp;для тяжелых украшений (от&nbsp;15&nbsp;г) всегда ставьте шарнирное или двойное ушко&nbsp;&mdash; иначе кулон будет переворачиваться и&nbsp;закручивать цепочку.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Получить консультацию">Получить консультацию</button>
                </div>
            </section>

            <section class="variants-section">
                <h2>Какая застежка для медальона надежнее&nbsp;&mdash; выбираем под ваши задачи</h2>
                <div class="text">Медальон&nbsp;&mdash; это не&nbsp;просто украшение, а&nbsp;часто место для фото, секрета или памятной вещи. Выбирайте застежку, которая не&nbsp;подведет в&nbsp;самый неподходящий момент.</div>
                <div class="variants-block">
                    <h3 class="big">Типы застежек для кулонов-медальонов</h3>
                    <div class="variants swiper">
                        <div class="swiper-wrapper">
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Замок-трубочка (петля + штифт)</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-14.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Штифт плотно входит в&nbsp;трубку. Открывается легким нажатием/поддеванием</p>
                                        <p><strong>Для каких подвесок: </strong> Классические медальоны, кулоны с&nbsp;фото</p>
                                        <p><strong>Особенности:</strong> Самый популярный тип. Не&nbsp;открывается сам, но&nbsp;нужно аккуратно закрывать</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Боковой шарнир с&nbsp;защелкой</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-15.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Медальон открывается как книга. Защелка сбоку (как у&nbsp;портсигара)</p>
                                        <p><strong>Для каких подвесок:</strong> Премиальные золотые медальоны</p>
                                        <p><strong>Особенности:</strong> Надежно, но&nbsp;сложнее в&nbsp;изготовлении</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Магнитная застежка (для медальона)</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-16.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Невидимый магнит внутри створок. Не&nbsp;видно снаружи</p>
                                        <p><strong>Для каких подвесок:</strong> Современные минималистичные кулоны</p>
                                        <p><strong>Особенности:</strong> Удобно, но&nbsp;слабые магниты&nbsp;&mdash; риск, что раскроется</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Винтовое закрытие</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-17.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Створки накручиваются на&nbsp;резьбу (как у&nbsp;фляжки)</p>
                                        <p><strong>Для каких подвесок:</strong> Эксклюзив, подвески для хранения праха</p>
                                        <p><strong>Особенности:</strong> Очень надежно, но&nbsp;громоздко</p>
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
                    <div class="text">
                        <p>Для повседневной носки выбирайте замок-трубочку&nbsp;&mdash; он&nbsp;надежен, компактен и&nbsp;проверен временем. Для медальона с&nbsp;особой ценностью (фото ребенка, памятная вещь)&nbsp;&mdash; боковой шарнир или винтовое закрытие. Магнитные застежки ставим только на&nbsp;легкие декоративные модели.</p>
                        <p>Сделаем медальон с&nbsp;любой застежкой из&nbsp;золота, серебра или платины. При заказе присылайте фото того, что будете хранить внутри&nbsp;&mdash; подберем оптимальный размер и&nbsp;тип закрытия.</p>
                    </div>
                </div>
                <div class="variants-block">
                    <h3 class="big">Типы ушек (креплений к&nbsp;цепочке)</h3>
                    <div class="variants swiper">
                        <div class="swiper-wrapper">
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Классическое вертикальное ушко</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-18.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Круглое отверстие на&nbsp;вершине кулона. Цепочка проходит через него. Самый массовый вариант.</p>
                                        <p><strong>Для каких подвесок: </strong> 90% всех подвесок (сердечки, кресты, монеты, знаки зодиака)</p>
                                        <p><strong>Особенности:</strong> Цепочка должна быть не&nbsp;толще 2&nbsp;мм. Подвеска может переворачиваться</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Горизонтальное ушко (фасонное)</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-19.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Ушко расположено не&nbsp;вертикально, а&nbsp;горизонтально (слева направо)</p>
                                        <p><strong>Для каких подвесок:</strong> Длинные подвески (капли, зубы, листья)</p>
                                        <p><strong>Особенности:</strong> Кулон не&nbsp;переворачивается на&nbsp;груди, всегда лежит плоско</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Шарнирное (подвижное) ушко</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-20.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Ушко вращается независимо от&nbsp;тела кулона на&nbsp;360&deg;</p>
                                        <p><strong>Для каких подвесок:</strong> Тяжелые подвески, с&nbsp;крупными камнями, именные</p>
                                        <p><strong>Особенности:</strong> Подвеска всегда становится прямо, не&nbsp;закручивает цепочку</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Двойное ушко (для широких цепей)</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-21.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Два параллельных ушка на&nbsp;расстоянии 8-15&nbsp;мм</p>
                                        <p><strong>Для каких подвесок:</strong> Массивные кулоны, мужские, на&nbsp;кожаном шнурке</p>
                                        <p><strong>Особенности:</strong> Цепь не&nbsp;перекручивается. Эффектно, но&nbsp;дороже</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Скрытое ушко (интегрированное)</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-22.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Ушко спрятано в&nbsp;теле кулона, не&nbsp;видно с&nbsp;лицевой стороны</p>
                                        <p><strong>Для каких подвесок:</strong> Дизайнерские подвески, авангард</p>
                                        <p><strong>Особенности:</strong> Эстетично, но&nbsp;сложно в&nbsp;изготовлении</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Плоское ушко (широкая щель)</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-23.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Прорезь в&nbsp;теле кулона вместо классического ушка</p>
                                        <p><strong>Для каких подвесок:</strong> Плоские подвески (буквы, листья)</p>
                                        <p><strong>Особенности:</strong> Кожанный шнурок проходит отлично, тонкая цепь&nbsp;&mdash; плохо</p>
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
                </div>
                <div class="variants-block">
                    <h3 class="big">Как еще можно закрепить подвеску&nbsp;&mdash; нестандартные способы для нестандартных задач</h3>
                    <div class="text">Классическое ушко подходит не&nbsp;всегда. Если вы&nbsp;планируете носить кулон на&nbsp;шнурке, часто менять его на&nbsp;разных цепочках или крепить к&nbsp;одежде&nbsp;&mdash; присмотритесь к&nbsp;альтернативным вариантам.</div>
                    <div class="variants swiper">
                        <div class="swiper-wrapper">
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Крокодил&nbsp;/ коготь</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-24.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Зажим, который цепляется за&nbsp;любую цепочку или одежду</p>
                                        <p><strong>Для каких подвесок: </strong> Броши-подвески (трансформеры), для временного ношения</p>
                                        <p><strong>Особенности:</strong> Можно вешать на&nbsp;разные цепи. Может повредить звенья</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Магнитное крепление</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-25.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Магнит на&nbsp;задней стороне кулона. Подвеска крепится к&nbsp;металлической подложке на&nbsp;одежде</p>
                                        <p><strong>Для каких подвесок:</strong> Для фотосессий, косплей, демонстрации</p>
                                        <p><strong>Особенности:</strong> Легко сбивается. Не&nbsp;для ежедневной носки</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Кожаный шнурок (вшитый)</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-26.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Готовый шнурок (кожа, вощеный хлопок) вшит в&nbsp;кулон, завязывается узлом</p>
                                        <p><strong>Для каких подвесок:</strong> Этнические, мужские подвески</p>
                                        <p><strong>Особенности:</strong> Уютно, но&nbsp;шнурок со&nbsp;временем протирается</p>
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
                </div>
            </section>

            <section class="variants-section variants-section--bg">
                <h2>Чтобы кулон не&nbsp;потерялся&nbsp;&mdash; дополнительные фиксаторы и&nbsp;страховка</h2>
                <div class="text">Даже самая надежная цепочка и&nbsp;красивое ушко могут подвести. Мы&nbsp;предлагаем установить дополнительные элементы, которые обезопасят вашу подвеску от&nbsp;случайной потери.</div>
                <h3 class="big">Дополнительные элементы безопасности для подвесок</h3>
                <div class="variants-4 swiper">
                    <div class="swiper-wrapper">
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Фиксатор силиконовый</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-27.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Маленькая прозрачная трубочка, которая надевается на&nbsp;цепочку и&nbsp;прижимает ушко</p>
                                    <p><strong>Зачем нужен:</strong> Подвеска не&nbsp;съезжает по&nbsp;цепочке в&nbsp;одно место. Актуально для вертикальных ушек</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Фермуар (замок-карабин) на&nbsp;самой цепочке без подвески</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-28.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Отдельный мини-карабин на&nbsp;звене</p>
                                    <p><strong>Зачем нужен:</strong> Позволяет снимать подвеску, не&nbsp;снимая цепочку с&nbsp;шеи</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Дополнительное стопорное кольцо</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-29.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Маленькое золотое колечко между ушком и&nbsp;застежкой цепочки</p>
                                    <p><strong>Зачем нужен:</strong> Если застежка раскроется, подвеска все равно останется на&nbsp;цепочке</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Вертушка (карабин в&nbsp;ушке)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-30.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Маленький карабин припаян к&nbsp;ушку. Подвеска снимается за&nbsp;секунду</p>
                                    <p><strong>Зачем нужен:</strong> Для людей, которые часто меняют кулоны на&nbsp;одной цепи</p>
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
                <div class="text">
                    <p>Как выбрать тип ушка? Для тонкой цепочки (1-2&nbsp;мм)&nbsp;&mdash; классическое вертикальное или подвижное. Для кожаного шнурка&nbsp;&mdash; широкое или двойное ушко. Для очень тяжелого кулона (от&nbsp;15&nbsp;г)&nbsp;&mdash; шарнирное и&nbsp;двойное ушко, чтобы не&nbsp;закручивало цепочку. Медальоны с&nbsp;фото&nbsp;&mdash; только на&nbsp;замке-трубочке или боковой защелке.</p>
                    <p>Самый популярный выбор: стопорное кольцо&nbsp;&mdash; спасает от&nbsp;потери дорогого кулона. Если у&nbsp;вас тяжелая подвеска (от&nbsp;10&nbsp;г) или вы&nbsp;носите ее&nbsp;постоянно&nbsp;&mdash; настоятельно рекомендуем. Силиконовый фиксатор подойдет для тех, у&nbsp;кого кулон постоянно &laquo;уезжает&raquo; в&nbsp;сторону спины или ключицы.</p>
                </div>
            </section>

            <section class="surfaces-section">
                <h2>При изготовлении делаем финишную обработку для вашего кулона</h2>
                <div class="text">Финишная обработка определяет, как кулон будет выглядеть и&nbsp;играть на&nbsp;свету. Выберите вариант под ваш стиль.</div>
                <div class="surfaces swiper">
                    <div class="swiper-wrapper">
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Гладкая полированная</div>
                                    <div class="surface__text">
                                        <p>Зеркальный блеск. Классика для крестов и&nbsp;сердечек.</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/surface-1.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Матовая</div>
                                    <div class="surface__text">
                                        <p>Бархатистая поверхность, без бликов. Современный стиль.</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/surface-2.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Рифленая</div>
                                    <div class="surface__text">
                                        <p>Легкая шероховатость, не&nbsp;видно отпечатков.</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/surface-3.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">С&nbsp;алмазной огранкой</div>
                                    <div class="surface__text">
                                        <p>Мерцающая поверхность (алмазная грань на&nbsp;самом металле).</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/surface-4.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Родированная</div>
                                    <div class="surface__text">
                                        <p>Белое покрытие для серебра и&nbsp;белого золота. Защита от&nbsp;царапин.</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/surface-5.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Чернение</div>
                                    <div class="surface__text">
                                        <p>Затемненные углубления. Эффектно на&nbsp;крестах и&nbsp;винтажных моделях.</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/surface-6.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Горячая эмаль</div>
                                    <div class="surface__text">
                                        <p>Цветное покрытие (синее, красное, зеленое). Для сердец, клеверов, цветов.</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/surface-7.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Комбинированная</div>
                                    <div class="surface__text">
                                        <p>Матовая основа + полированные края или грани.</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/surface-8.webp" alt="" width="185" height="185" loading="lazy">
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
                <div class="text">Не&nbsp;знаете, какая обработка лучше? Мы&nbsp;сделаем образцы на&nbsp;вашем металле&nbsp;&mdash; вы&nbsp;сможете сравнить вживую.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Заказать образец">Заказать образец</button>
                </div>
            </section>

            <section class="stones-section">
                <h2>Изготовление подвесок и&nbsp;кулонов с&nbsp;камнями</h2>
                <div class="text">Драгоценный камень&nbsp;&mdash; это душа украшения. Он&nbsp;придаёт подвеске цвет, смысл и&nbsp;сияние. Мы&nbsp;поможем вам выбрать камень, идеально подходящий под ваш эскиз и&nbsp;бюджет. В&nbsp;нашей базе&nbsp;&mdash; тысячи сертифицированных камней, а&nbsp;также мы&nbsp;работаем с&nbsp;камнями заказчика.</div>
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
                <div class="text">Мы&nbsp;работаем с&nbsp;полным спектром камней&nbsp;&mdash; от&nbsp;популярных бриллиантов и&nbsp;сапфиров до&nbsp;редких демантоидов и&nbsp;параиба. Каждый камень в&nbsp;нашей мастерской проходит геммологическую экспертизу, поэтому вы&nbsp;получаете не&nbsp;только красивое, но&nbsp;и&nbsp;юридически подтверждённое украшение. По&nbsp;вашему желанию мы&nbsp;подберём камень под любой бюджет и&nbsp;предоставим все сертификаты соответствия. Если у&nbsp;вас есть семейный камень, мы&nbsp;готовы создать для него новую, достойную оправу, чтобы он&nbsp;засиял в&nbsp;вашей подвеске по-новому.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Получить консультацию">Получить консультацию</button>
                </div>
            </section>

            <section class="tables-section">
                <h2>Изготавливаем подвески и&nbsp;кулоны с&nbsp;камнями разной каратности</h2>
                <div class="text">Карат&nbsp;&mdash; это единица веса драгоценного камня.&nbsp;1&nbsp;карат = 0.2&nbsp;грамма. От&nbsp;веса камня зависит его размер, блеск&nbsp;и, конечно, цена. Мы&nbsp;подберем камень под ваш бюджет и&nbsp;задачи.</div>
                <h3>Какой вес камня выбрать для подвески?</h3>
                <div class="table">
                    <table>
                        <thead>
                            <tr>
                                <th>Вес камня (карат)</th>
                                <th>Визуальный размер</th>
                                <th>Для какой подвески подходит</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><span class="table__carat">до&nbsp;0.03&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-1.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Меле</td>
                                <td>Подвески с&nbsp;бриллиантовой дорожкой</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">0.03&nbsp;- 0.1&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-2.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Маленький</td>
                                <td>Тонкие женские подвески-гвоздики</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">0.1&nbsp;- 0.3&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-3.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Небольшой</td>
                                <td>Подвески с&nbsp;солитером&nbsp;&mdash; популярный вес</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">0.31&nbsp;- 0.5&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-4.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Средний</td>
                                <td>Премиальные подвески, мужские кулоны</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">0.51&nbsp;- 1.0&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-5.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Стандартный</td>
                                <td>Эксклюзивные кулоны, инвестиционные модели</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">от&nbsp;1.0&nbsp;- 11.0&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-6.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Крупный</td>
                                <td>Уникальные дизайнерские подвески</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="text">Не&nbsp;уверены, какой карат выбрать? Мы&nbsp;покажем вам камни разного веса вживую или на&nbsp;фото. Также вы&nbsp;можете принести свой камень&nbsp;&mdash;  мы&nbsp;сделаем подвеску или кулон под него.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Подобрать камень">Подобрать камень под бюджет</button>
                </div>
            </section>

            <section class="variants-section variants-section--bg">
                <h2>Изготовим кулоны и&nbsp;подвески любого размера</h2>
                <div class="text">Изготовим кулоны и&nbsp;подвески любого размера</div>
                <div class="variants swiper">
                    <div class="swiper-wrapper">
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Маленькие (шармы на&nbsp;браслет)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-31.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Средние (классика)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-32.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Крупные&nbsp;/ массивные</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/variant-33.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-buttons beige">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
                <div class="text">Точную длину и&nbsp;ширину обсудим на&nbsp;консультации. Любая форма: круглые, квадратные, овальные, капля, сердце, асимметричные (звезда, бабочка, дракон).</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Подобрать размер">Подобрать свой размер</button>
                </div>
            </section>

            <section class="brands-section">
                <h2>Изготовим подвески и&nbsp;кулоны в&nbsp;стиле популярных ювелирных брендов</h2>
                <div class="text">Мечтаете о&nbsp;подвеске или кулоне как у&nbsp;Tiffany, Cartier или Bvlgari, но&nbsp;хотите уникальную деталь или бюджетный вариант? Мы&nbsp;сделаем браслет в&nbsp;узнаваемом стиле бренда, но&nbsp;с&nbsp;вашими пожеланиями: другим металлом, размером камня или гравировкой.</div>
                <div class="brands-information">
                    <p>Мы&nbsp;создаём украшения в&nbsp;узнаваемой эстетике мировых ювелирных домов, вдохновляясь их&nbsp;стилистическими решениями&nbsp;&mdash; геометрией, огранкой, фактурой или композицией. Каждое изделие разрабатывается и&nbsp;изготавливается нашей студией как оригинальное, не&nbsp;является копией, репликой или подделкой, не&nbsp;использует запатентованные технологии и&nbsp;товарные знаки и&nbsp;не&nbsp;нарушает права интеллектуальной собственности третьих лиц.</p>
                    <p class="big">Вы&nbsp;получаете уникальное украшение, созданное для вас...</p>
                </div>
                <div class="brands swiper">
                    <div class="swiper-wrapper">
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/tiffany.svg" alt="" width="426" height="59" loading="lazy">
                            </picture>
                            <div class="brand__text">Tiffany &amp;&nbsp;Co. &mdash;&nbsp;сердечки, ключи, кулоны из&nbsp;белого золота.</div>
                        </div>
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/cartier.svg" alt="" width="426" height="59" loading="lazy">
                            </picture>
                            <div class="brand__text">Cartier&nbsp;&mdash; пантера, любовные амулеты.</div>
                        </div>
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/vivienne.svg" alt="" width="426" height="59" loading="lazy">
                            </picture>
                            <div class="brand__text">Vivienne Westwood&nbsp;&mdash; крест с&nbsp;планетой.</div>
                        </div>
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/pandora.svg" alt="" width="426" height="59" loading="lazy">
                            </picture>
                            <div class="brand__text">Pandora&nbsp;&mdash; шармы на&nbsp;браслет, подвески с&nbsp;камнями и&nbsp;эмалью.</div>
                        </div>
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/bvlgary.svg" alt="" width="426" height="59" loading="lazy">
                            </picture>
                            <div class="brand__text">Bvlgari&nbsp;&mdash; монеты, змея.</div>
                        </div>
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/tous.svg" alt="" width="426" height="59" loading="lazy">
                            </picture>
                            <div class="brand__text">Tous&nbsp;&mdash; мишка.</div>
                        </div>
                    </div>
                    <div class="swiper-buttons show-on-mob">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
                <div class="text">Мы&nbsp;не&nbsp;делаем подделку с&nbsp;логотипом. Мы&nbsp;создаем уникальное подвески и&nbsp;кулоны по&nbsp;мотивам дизайна, которое будет соответствовать вашему бюджету и&nbsp;предпочтениям. Вы&nbsp;сохраняете узнаваемый стиль, но&nbsp;получаете полностью оригинальное украшение.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Выбрать стиль бренда">Выбрать стиль бренда</button>
                </div>
            </section>

<?php
            $visible_cost_segments = array_filter($cost_segments);
            $first_cost_segment = $visible_cost_segments ? key($visible_cost_segments) : '';
            ?>
            <section class="prices-section">
                <h2>Стоимость изготовления подвесок и&nbsp;кулонов на&nbsp;заказ</h2>
                <div class="text">Мы&nbsp;за&nbsp;прозрачность. Конечная цена складывается из&nbsp;трех простых составляющих. Вы&nbsp;можете легко прикинуть бюджет заранее, а&nbsp;наш мастер просчитает точную стоимость на&nbsp;бесплатной консультации.</div>
                <?php $prices_examples_title = 'Примеры цен изготавливаемых подвесок и&nbsp;кулонов'; require(DIR_TEMPLATE . 'uvelirmoscow_new/template/product/manufacturing_category_prices_intro.tpl'); ?>
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
                <h2>Примеры изготовленных подвесок и&nbsp;кулонов на&nbsp;заказ</h2>
                <div class="text">Ниже представлены реальные работы нашей студии. Каждая подвеска создана с&nbsp;нуля по&nbsp;индивидуальному эскизу&nbsp;&mdash; от&nbsp;миниатюрных шармов до&nbsp;эксклюзивных кулонов с&nbsp;редкими камнями. Нажмите на&nbsp;фото, чтобы увидеть детали и&nbsp;узнать историю создания.</div>
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
                <h2>Как мы&nbsp;создаём подвески и&nbsp;кулоны на&nbsp;заказ</h2>
                <div class="text">Весь путь от&nbsp;идеи до&nbsp;готовой подвески прозрачен и&nbsp;понятен. Вы&nbsp;можете участвовать в&nbsp;процессе лично или удалённо&nbsp;&mdash; мы&nbsp;снимаем каждый этап на&nbsp;фото и&nbsp;видео. От&nbsp;эскиза до&nbsp;финишной полировки&nbsp;&mdash; ваша подвеска проходит все стадии под контролем мастеров.</div>
                <div class="process swiper">
                    <div class="swiper-wrapper">
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/process-1.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Идея и&nbsp;консультация</h3>
                                    <p>Обсуждаем дизайн (сердце, крест, имя, знак зодиака, капля, медальон), металл, пробу, камни, тип ушка (вертикальное, горизонтальное, шарнирное, двойное), бюджет. Показываем референсы брендов (Tiffany, Cartier, Chopard и&nbsp;др.).</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/process-2.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Эскиз и&nbsp;3D-моделирование</h3>
                                    <p>Создаём эскиз и&nbsp;точную 3D-модель будущей подвески. Вы&nbsp;видите её&nbsp;со&nbsp;всех сторон.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/process-3.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>3D-печать полимерной модели</h3>
                                    <p>3D-печать полимерной копии. Примерка формы, размера, толщины. Для медальонов&nbsp;&mdash; проверяем, как закрывается крышка.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/process-4.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Литье металла</h3>
                                    <p>Заливка расплавленного золота, серебра или платины в&nbsp;форму.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/process-5.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Обработка и&nbsp;шлифовка</h3>
                                    <p>Удаление литников, первая обработка поверхности (мат или полир).</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/process-6.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Закрепка камней</h3>
                                    <p>Ручная фиксация бриллиантов, рубинов, изумрудов, сапфиров под микроскопом (крапаны, глухая, клеевая для эмали).</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/process-7.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Монтаж ушка</h3>
                                    <p>Припаиваем ушко (вертикальное, горизонтальное, шарнирное, двойное) под вашу цепочку или шнурок.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/process-8.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Гравировка (если нужна)</h3>
                                    <p>Лазерная или ручная гравировка имени, даты, фразы на&nbsp;обратной стороне.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/process-9.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Финишная обработка </h3>
                                    <p>Полировка, матирование, чернение, родирование, эмалирование.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/pendants/process-10.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Пробирование и&nbsp;выдача </h3>
                                    <p>Клеймение, сертификат&nbsp;/ паспорт на&nbsp;камни (по&nbsp;запросу), гарантия 12&nbsp;месяцев.</p>
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
                        <div class="text">Мы&nbsp;уверены в&nbsp;своей работе настолько, что готовы отвечать за&nbsp;неё годами. Пожизненная гарантия распространяется на&nbsp;все художественные и&nbsp;технические работы. Если камень расшатается или сломается замок&nbsp;&mdash; мы&nbsp;отремонтируем это бесплатно. Ремонт, связанный с&nbsp;износом или механическими повреждениями после ударов, оплачивается отдельно.</div>
                    </div>
                </div>
            </section>

            <section class="consultation-section">
                <h2>Закажите изготовление <br>подвески или кулона своей мечты прямо сейчас</h2>
                <div class="text">Совместно со&nbsp;всеми специалистами&nbsp;Вы сможете обсудить Вашу будущую подвеску или кулон.</div>
                <div class="consultation__buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Заказать консультацию">Заказать консультацию</button>
                    <button type="button" class="btn btn--big btn--border" data-modal="#modal-2">Рассчитать стоимость</button>
                </div>
            </section>            

<?php if ($faq) { ?>
            <section class="faq-section">
                <h2>Часто задаваемые вопросы об&nbsp;изготовлении подвесок и&nbsp;кулонов</h2>
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
                <h2>Изготавливаем подвески в&nbsp;Москве&nbsp;&mdash; доставляем в&nbsp;любой город России, СНГ и&nbsp;мира</h2>
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
