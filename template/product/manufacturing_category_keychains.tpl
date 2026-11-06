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
                    <h1>Изготовление золотого, серебряного или платинового брелока</h1>
                    <div class="showcase__text">
                        Ювелирные брелоки для ключей из&nbsp;драгоценных металлов. Золотой слиток, монета, подкова, ключик, рыбка, сердце, калаш, керамбит, автомобильный брелок.
                    </div>
                    <div class="showcase__buttons">
                        <button type="button" class="btn btn--medium" data-modal="#modal-1" data-modal-title="Бесплатная консультация">Бесплатная консультация</button>
                        <button type="button" class="btn btn--border btn--medium" data-modal="#modal-2">Рассчитать стоимость</button>
                    </div>
                </div>
                <picture class="showcase__image">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/showcase-img-keychains-mobile.webp" media="(max-width: 599px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/showcase-img-keychains-tab.webp" media="(max-width: 836px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/showcase-img-keychains.webp">
                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/showcase-img-keychains.webp" alt="" width="620" height="620">
                </picture>
                <picture class="showcase__bg">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/showcase-bg-keychains-mobile.webp" media="(max-width: 599px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/showcase-bg-keychains-tab.webp" media="(max-width: 836px)">
                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/showcase-bg-keychains.webp" alt="">
                </picture>
            </section>

<?php if ($category_wall) { ?>
            <section class="types-section">
                <h2>Виды золотых, серебряных и&nbsp;платиновых брелоков, которые мы&nbsp;изготавливаем на&nbsp;заказ</h2>
                <div class="text">Изготавливаем брелоки из&nbsp;золота и&nbsp;серебра&nbsp;&mdash; от&nbsp;минималистичных колец до&nbsp;фигурных подвесок с&nbsp;гравировкой. В&nbsp;каталоге вы&nbsp;увидите примеры для ключей, сумок, рюкзаков. Это поможет определиться с&nbsp;формой и&nbsp;весом. Консультант по&nbsp;аксессуарам подскажет, какой вариант будет наиболее удобным в&nbsp;повседневном использовании и&nbsp;долговечным.</div>
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
                <h2>Почему выгоднее заказать изготовление брелока, чем купить готовый?</h2>
                <div class="why__title">Готовые брелоки из&nbsp;магазина&nbsp;&mdash; это всегда компромисс между желанием и&nbsp;реальностью...</div>
                <div class="why__text">Часто брелоки не&nbsp;подходят по&nbsp;смыслу, имеют некачественное исполнение или быстро ломаются. Индивидуальное изготовление решает эти проблемы: вы&nbsp;получаете брелок с&nbsp;уникальным дизайном, именной гравировкой и&nbsp;надёжным креплением, который станет не&nbsp;просто аксессуаром для ключей, а&nbsp;памятным подарком для близкого человека.</div>
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
                <h2>Изготовление брелоков из&nbsp;драгоценных металлов</h2>
                <div class="text">Выбор металла определяет не&nbsp;только внешний вид, но&nbsp;и&nbsp;долговечность вашему брелоку. Мы&nbsp;работаем со&nbsp;всеми ювелирными сплавами, представленными на&nbsp;рынке. Каждый материал имеет свои особенности, о&nbsp;которых мы&nbsp;вам подробно расскажем перед изготовлением.</div>
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
                        <h3>Оттенки брелоков из&nbsp;разных материалов</h3>
                        <p>Для брелока, который ежедневно носится с&nbsp;ключами или сумкой, лучше выбрать износостойкое красное или белое золото&nbsp;&mdash; они сохранят безупречный вид на&nbsp;долгие годы и&nbsp;не&nbsp;поцарапаются. Для памятного или подарочного брелока, который будет храниться как украшение, идеально подойдет утончённое розовое золото или благородная платина, подчёркивающие особую ценность момента. Наши мастера всегда проконсультируют вас, какой металл лучше раскроет ваш замысел и&nbsp;обеспечит брелоку долгую жизнь.</p>
                    </div>
                    <picture class="materials-colors__image">
                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/material-colors.webp" alt="" width="486" height="175" loading="lazy">
                    </picture>
                </div>
            </section>

            <section class="own-materials-section">
                <h2>Изготовим брелок из&nbsp;вашего металла</h2>
                <div class="text">Ваши семейные реликвии могут засиять по-новому. Мы&nbsp;принимаем золото, платину и&nbsp;серебро любой пробы&nbsp;&mdash; от&nbsp;старых украшений до&nbsp;слитков. Переплавляем ваш металл и&nbsp;создаём из&nbsp;него эксклюзивный брелок, который станет стильным аксессуаром для ключей или памятным подарком. Вы&nbsp;оплачиваете только работу мастера.</div>
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
                <h2>Какие золотые брелоки мы&nbsp;делаем чаще всего</h2>
                <div class="text">Одни заказывают слиток для бизнес-партнера, другие&nbsp;&mdash; калаш для фаната CS2, третьи&nbsp;&mdash; две половинки сердца для любимой. Мы&nbsp;собрали самые популярные формы, чтобы вам было проще выбрать. А&nbsp;если не&nbsp;нашли свою&nbsp;&mdash; сделаем под заказ.</div>
                <div class="variants swiper">
                    <div class="swiper-wrapper">
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Золотой слиток</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-1.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Размер:</strong> 15&times;8&times;3&nbsp;мм&nbsp;&mdash; 30&times;15&times;5&nbsp;мм</p>
                                    <p><strong>Вес:</strong> 1-10&nbsp;г</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Золотая рыбка</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-2.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Размер:</strong> 15-25&nbsp;мм</p>
                                    <p><strong>Вес:</strong> 1-3&nbsp;г</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Золотой ключик</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-3.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Размер:</strong> 15-30&nbsp;мм</p>
                                    <p><strong>Вес:</strong> 1-4&nbsp;г</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Золотая подкова</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-4.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Размер:</strong> 10-20&nbsp;мм</p>
                                    <p><strong>Вес:</strong> 1-3&nbsp;г</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Две половинки сердца</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-5.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Размер:</strong> 10-15&nbsp;мм каждая</p>
                                    <p><strong>Вес:</strong> 0.5-2&nbsp;г каждая</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Золотой калаш (AK)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-6.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Размер:</strong> 20-40&nbsp;мм</p>
                                    <p><strong>Вес:</strong> 3-8&nbsp;г</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Золотой керамбит</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-7.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Размер:</strong> 20-35&nbsp;мм</p>
                                    <p><strong>Вес:</strong> 2-6&nbsp;г</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Логотип BMW&nbsp;/ Mercedes</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-8.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Размер:</strong> 15-25&nbsp;мм</p>
                                    <p><strong>Вес:</strong> 1-4&nbsp;г</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Именной кулон-брелок</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-9.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Размер:</strong> 15-20&nbsp;мм</p>
                                    <p><strong>Вес:</strong> 1-3&nbsp;г</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Дракон&nbsp;/ животное</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-10.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Размер:</strong> 15-30&nbsp;мм</p>
                                    <p><strong>Вес:</strong> 2-8&nbsp;г</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Desert Eagle</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-11.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Размер:</strong> 25-40&nbsp;мм</p>
                                    <p><strong>Вес:</strong> 4-10&nbsp;г</p>
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
                <div class="text">Нет вашей формы? Пришлите картинку, фото, эскиз&nbsp;&mdash; сделаем под заказ.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-4">Прислать фото</button>
                </div>
            </section>

            <section class="variants-section variants-section--bg">
                <h2>Какие крепления для брелоков мы&nbsp;делаем&nbsp;&mdash; для ключей, сумки или коллекции</h2>
                <div class="text">Брелок&nbsp;&mdash; украшение, которое постоянно испытывает нагрузки: ключи падают, сумка ударяется о&nbsp;край стола, телефон скользит в&nbsp;кармане. Поэтому крепление должно быть максимально прочным. Подберем вариант под&nbsp;то, как вы&nbsp;планируете носить брелок.</div>
                <div class="variants swiper">
                    <div class="swiper-wrapper">
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Паяное кольцо (неразъемное)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-12.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Кольцо намертво припаяно к&nbsp;брелоку. Не&nbsp;открывается.</p>
                                    <p>
                                        <strong>Надежность:</strong> Абсолютная
                                        <svg xmlns="http://www.w3.org/2000/svg" width="150" height="22" fill="none" viewBox="0 0 150 22"><path fill="#e4cda4" d="m7.555 6.728-5.848.848-.104.02A.917.917 0 0 0 1.2 9.14l4.237 4.124-1 5.826-.011.1a.917.917 0 0 0 1.342.866l5.23-2.75 5.219 2.75.091.042a.917.917 0 0 0 1.24-1.008l-1-5.825 4.238-4.125.072-.078a.916.916 0 0 0-.58-1.485l-5.849-.85-2.614-5.298a.916.916 0 0 0-1.644 0zM39.555 6.728l-5.848.848-.104.02A.917.917 0 0 0 33.2 9.14l4.237 4.124-1 5.826-.011.1a.917.917 0 0 0 1.342.866l5.23-2.75 5.219 2.75.092.042a.917.917 0 0 0 1.239-1.008l-1-5.825 4.238-4.125.072-.078a.916.916 0 0 0-.58-1.485l-5.849-.85-2.614-5.298a.916.916 0 0 0-1.645 0zM71.555 6.728l-5.848.848-.104.02A.917.917 0 0 0 65.2 9.14l4.237 4.124-1 5.826-.011.1a.917.917 0 0 0 1.342.866l5.23-2.75 5.219 2.75.091.042a.917.917 0 0 0 1.24-1.008l-1-5.825 4.238-4.125.072-.078a.916.916 0 0 0-.58-1.485l-5.849-.85-2.614-5.298a.916.916 0 0 0-1.644 0zM103.555 6.728l-5.848.848-.104.02A.917.917 0 0 0 97.2 9.14l4.237 4.124-.999 5.826-.012.1a.917.917 0 0 0 1.342.866l5.23-2.75 5.219 2.75.092.042a.915.915 0 0 0 1.194-.53.9.9 0 0 0 .045-.478l-1-5.825 4.238-4.125.072-.078a.918.918 0 0 0-.58-1.485l-5.849-.85-2.614-5.298a.92.92 0 0 0-.822-.511.92.92 0 0 0-.822.511zM135.555 6.728l-5.848.848-.104.02a.92.92 0 0 0-.651.655.91.91 0 0 0 .248.89l4.237 4.124-.999 5.825-.012.1a.917.917 0 0 0 1.342.866l5.23-2.75 5.219 2.75.092.042a.915.915 0 0 0 1.194-.53.9.9 0 0 0 .045-.478l-1-5.825 4.238-4.125.072-.078a.918.918 0 0 0-.58-1.485l-5.849-.85-2.614-5.298a.92.92 0 0 0-.822-.511.92.92 0 0 0-.822.511z"/></svg>
                                    </p>
                                    <p><strong>Для каких брелоков:</strong> На&nbsp;ключи&nbsp;&mdash; наш стандарт</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Карабин (разъемный)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-13.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Мини-карабин из&nbsp;золота/серебра. Можно снимать.</p>
                                    <p>
                                        <strong>Надежность:</strong> Хорошая
                                        <svg xmlns="http://www.w3.org/2000/svg" width="118" height="22" fill="none" viewBox="0 0 118 22"><path fill="#e4cda4" d="m7.555 6.728-5.848.848-.104.02A.917.917 0 0 0 1.2 9.14l4.237 4.124-1 5.826-.011.1a.917.917 0 0 0 1.342.866l5.23-2.75 5.219 2.75.091.042a.917.917 0 0 0 1.24-1.008l-1-5.825 4.238-4.125.072-.078a.916.916 0 0 0-.58-1.485l-5.849-.85-2.614-5.298a.916.916 0 0 0-1.644 0zM39.555 6.728l-5.848.848-.104.02A.917.917 0 0 0 33.2 9.14l4.237 4.124-1 5.826-.011.1a.917.917 0 0 0 1.342.866l5.23-2.75 5.219 2.75.092.042a.917.917 0 0 0 1.239-1.008l-1-5.825 4.238-4.125.072-.078a.916.916 0 0 0-.58-1.485l-5.849-.85-2.614-5.298a.916.916 0 0 0-1.645 0zM71.555 6.728l-5.848.848-.104.02A.917.917 0 0 0 65.2 9.14l4.237 4.124-1 5.826-.011.1a.917.917 0 0 0 1.342.866l5.23-2.75 5.219 2.75.091.042a.917.917 0 0 0 1.24-1.008l-1-5.825 4.238-4.125.072-.078a.916.916 0 0 0-.58-1.485l-5.849-.85-2.614-5.298a.916.916 0 0 0-1.644 0zM103.555 6.728l-5.848.848-.104.02A.917.917 0 0 0 97.2 9.14l4.237 4.124-.999 5.826-.012.1a.917.917 0 0 0 1.342.866l5.23-2.75 5.219 2.75.092.042a.915.915 0 0 0 1.194-.53.9.9 0 0 0 .045-.478l-1-5.825 4.238-4.125.072-.078a.918.918 0 0 0-.58-1.485l-5.849-.85-2.614-5.298a.92.92 0 0 0-.822-.511.92.92 0 0 0-.822.511z"/></svg>
                                    </p>
                                    <p><strong>Для каких брелоков:</strong> На&nbsp;сумку, рюкзак, как подвеску</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Вертушка (шарнирное кольцо)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-14.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Кольцо вращается на&nbsp;360&deg; вокруг ушка. Не&nbsp;закручивается.</p>
                                    <p>
                                        <strong>Надежность:</strong> Очень высокая
                                        <svg xmlns="http://www.w3.org/2000/svg" width="118" height="22" fill="none" viewBox="0 0 118 22"><path fill="#e4cda4" d="m7.555 6.728-5.848.848-.104.02A.917.917 0 0 0 1.2 9.14l4.237 4.124-1 5.826-.011.1a.917.917 0 0 0 1.342.866l5.23-2.75 5.219 2.75.091.042a.917.917 0 0 0 1.24-1.008l-1-5.825 4.238-4.125.072-.078a.916.916 0 0 0-.58-1.485l-5.849-.85-2.614-5.298a.916.916 0 0 0-1.644 0zM39.555 6.728l-5.848.848-.104.02A.917.917 0 0 0 33.2 9.14l4.237 4.124-1 5.826-.011.1a.917.917 0 0 0 1.342.866l5.23-2.75 5.219 2.75.092.042a.917.917 0 0 0 1.239-1.008l-1-5.825 4.238-4.125.072-.078a.916.916 0 0 0-.58-1.485l-5.849-.85-2.614-5.298a.916.916 0 0 0-1.645 0zM71.555 6.728l-5.848.848-.104.02A.917.917 0 0 0 65.2 9.14l4.237 4.124-1 5.826-.011.1a.917.917 0 0 0 1.342.866l5.23-2.75 5.219 2.75.091.042a.917.917 0 0 0 1.24-1.008l-1-5.825 4.238-4.125.072-.078a.916.916 0 0 0-.58-1.485l-5.849-.85-2.614-5.298a.916.916 0 0 0-1.644 0zM103.555 6.728l-5.848.848-.104.02A.917.917 0 0 0 97.2 9.14l4.237 4.124-.999 5.826-.012.1a.917.917 0 0 0 1.342.866l5.23-2.75 5.219 2.75.092.042a.915.915 0 0 0 1.194-.53.9.9 0 0 0 .045-.478l-1-5.825 4.238-4.125.072-.078a.918.918 0 0 0-.58-1.485l-5.849-.85-2.614-5.298a.92.92 0 0 0-.822-.511.92.92 0 0 0-.822.511z"/></svg>
                                    </p>
                                    <p><strong>Для каких брелоков:</strong> Тяжелые брелоки (от&nbsp;10&nbsp;г)</p>
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
                <div class="text">Не&nbsp;уверены, какое крепление подойдет под ваш образ жизни? Уточните, где планируете носить брелок&nbsp;&mdash; на&nbsp;ключах, на&nbsp;сумке или в&nbsp;коллекции. Подберем оптимальный вариант.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Подобрать крепление">Подобрать крепление</button>
                </div>
            </section>

            <section class="variants-section">
                <h2>Именная и&nbsp;логотипная гравировка на&nbsp;золотых брелоках</h2>
                <div class="text">Именная гравировка превращает брелок из&nbsp;украшения в&nbsp;персональный амулет. Мы&nbsp;наносим надписи двумя способами: лазером (быстро, точно, подходит для мелких шрифтов) и&nbsp;вручную штихелем (глубже, &laquo;живее&raquo;, ценится коллекционерами). Гравировка выполняется на&nbsp;лицевой стороне или на&nbsp;обороте&nbsp;&mdash; по&nbsp;вашему выбору. Можно указать имя, дату, номер телефона, госномер авто, логотип компании, фразу-девиз или QR-код. Шрифт, размер и&nbsp;глубину подбираем вместе с&nbsp;вами на&nbsp;бесплатной консультации: учитываем толщину металла и&nbsp;особенности обработки, чтобы гравировка читалась чётко и&nbsp;не&nbsp;теряла глубину со&nbsp;временем.</div>
                <div class="variants swiper">
                    <div class="swiper-wrapper">
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Имя&nbsp;/ фамилия&nbsp;/ псевдоним</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-15.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>&laquo;Алексей&raquo;, &laquo;Дмитрий 1985&raquo;</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Дата</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-16.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>&laquo;10.05.2025&raquo;, &laquo;15&nbsp;лет вместе&raquo;</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Номер телефона</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-17.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Для брелока-потеряшки</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Госномер автомобиля</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-18.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>&laquo;А777МР 47&raquo;</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Логотип компании</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-19.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Для корпоративных подарков</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>QR-код</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-20.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Для контакта (если потеряют ключи)</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Фраза&nbsp;/ девиз</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-21.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>&laquo;Не&nbsp;забудь ключи&raquo;, &laquo;Мой дом&raquo;</p>
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
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Заказать гравировку">Заказать гравировку</button>
                </div>
            </section>

            <section class="tables-section bg-section">
                <h2>Компактные размеры&nbsp;&mdash; не&nbsp;отягощают связку ключей</h2>
                <div class="table table--light">
                    <table>
                        <thead>
                            <tr>
                                <th>Группа</th>
                                <th>Размер</th>
                                <th>Вес (золото 585)</th>
                                <th>Вес (серебро 925)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Мини-брелок</td>
                                <td>8-12&nbsp;мм</td>
                                <td>0.5-1&nbsp;г</td>
                                <td>0.3-0.7&nbsp;г</td>
                            </tr>
                            <tr>
                                <td>Маленький</td>
                                <td>12-18&nbsp;мм</td>
                                <td>1-2&nbsp;г</td>
                                <td>0.8-1.5&nbsp;г</td>
                            </tr>
                            <tr>
                                <td>Классический</td>
                                <td>18-25&nbsp;мм</td>
                                <td>2-4&nbsp;г</td>
                                <td>1.5-3&nbsp;г</td>
                            </tr>
                            <tr>
                                <td>Крупный (оружие)</td>
                                <td>25-40&nbsp;мм</td>
                                <td>4-10&nbsp;г</td>
                                <td>3-8&nbsp;г</td>
                            </tr>
                            <tr>
                                <td>Сувенирный (на&nbsp;полку)</td>
                                <td>40-60&nbsp;мм</td>
                                <td>10-20&nbsp;г</td>
                                <td>8-15&nbsp;г</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="text">Для ежедневного ношения на&nbsp;ключах рекомендуем вес до&nbsp;5&nbsp;граммов для золота, до&nbsp;3&nbsp;граммов для серебра. Более тяжелые брелоки&nbsp;&mdash; для подарка или коллекции.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Подобрать размер">Подобрать свой размер</button>
                </div>
            </section>

            <section class="surfaces-section">
                <h2>Финишная обработка золотых и&nbsp;серебряных брелоков</h2>
                <div class="text">Для золотых и&nbsp;серебряных брелоков важна не&nbsp;только эстетика, но&nbsp;и&nbsp;износостойкость&nbsp;&mdash; украшение постоянно контактирует с&nbsp;ключами, руками и&nbsp;поверхностями, поэтому покрытие должно быть приятным на&nbsp;ощупь и&nbsp;устойчивым к&nbsp;царапинам.</div>
                <div class="surfaces swiper">
                    <div class="swiper-wrapper">
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Полированная</div>
                                    <div class="surface__text">
                                        <p>Зеркальный блеск</p>
                                        <p><strong>Для каких брелоков:</strong> Слитки, монеты, сердечки</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/surface-1.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Матовая</div>
                                    <div class="surface__text">
                                        <p>Бархатистая, без бликов</p>
                                        <p><strong>Для каких брелоков:</strong> Оружейная тематика, современный стиль</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/surface-2.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Чернение (серебро)</div>
                                    <div class="surface__text">
                                        <p>Затемненные углубления</p>
                                        <p><strong>Для каких брелоков:</strong> Калибр, мушки на&nbsp;калаше, надписи</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/surface-3.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Горячая эмаль</div>
                                    <div class="surface__text">
                                        <p>Цветные вставки</p>
                                        <p><strong>Для каких брелоков:</strong> Логотипы (синий BMW, красный Ferrari)</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/surface-4.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Родированная</div>
                                    <div class="surface__text">
                                        <p>Белое покрытие</p>
                                        <p><strong>Для каких брелоков:</strong> Серебряные брелоки (не&nbsp;темнеют)</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/surface-5.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Комбинированная</div>
                                    <div class="surface__text">
                                        <p>Мат + полированные детали</p>
                                        <p><strong>Для каких брелоков:</strong> Керамбит, грани клинка</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/surface-6.webp" alt="" width="185" height="185" loading="lazy">
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
                <div class="text">Не&nbsp;знаете, какая обработка подойдёт вашему брелоку? Мы&nbsp;изготовим образцы на&nbsp;вашем металле&nbsp;&mdash; вы&nbsp;сможете сравнить их&nbsp;вживую, оценить блеск и&nbsp;текстуру и&nbsp;выбрать идеальный вариант.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Заказать образец">Заказать образец</button>
                </div>
            </section>

            <section class="variants-section variants-section--bg">
                <h2>Корпоративные золотые и&nbsp;серебряные брелоки с&nbsp;логотипом</h2>
                <div class="text">Корпоративный брелок из&nbsp;драгоценного металла&nbsp;&mdash; это подарок, который работает на&nbsp;репутацию компании годами. Мы&nbsp;изготавливаем партии от&nbsp;5&nbsp;штук: с&nbsp;логотипом на&nbsp;лицевой стороне, именем сотрудника или датой события. Работаем с&nbsp;золотом 585 и&nbsp;750&nbsp;пробы, серебром 925 и&nbsp;платиной 950. Для крупных тиражей (от&nbsp;20&nbsp;штук) действует прогрессивная скидка на&nbsp;работу мастера. По&nbsp;желанию упакуем каждый брелок в&nbsp;индивидуальную подарочную коробку и&nbsp;приложим сертификат. Изготовим образец до&nbsp;запуска серии&nbsp;&mdash; вы&nbsp;увидите точную копию будущего тиража. Подходит для юбилеев компании, годовых премий, подарков ключевым партнёрам и&nbsp;новогодних корпоративов.</div>
                <div class="variants-4 swiper">
                    <div class="swiper-wrapper">
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <div class="variant__title">Брелок с&nbsp;логотипом компании</div>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-22.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Литье из&nbsp;серебра или золота. От&nbsp;5&nbsp;штук.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <div class="variant__title">Именные брелоки для сотрудников</div>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-23.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Имя + логотип. Вручить на&nbsp;юбилей компании или годовщину работы.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <div class="variant__title">Брелоки для партнеров</div>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-24.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Премиум, платина, золото, с&nbsp;гравировкой даты партнерства.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <div class="variant__title">Брелоки на&nbsp;новогодний корпоратив</div>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-25.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Массовый заказ (от&nbsp;20&nbsp;шт) со&nbsp;скидкой.</p>
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
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Получить коммерческое предложение">Получить коммерческое предложение</button>
                </div>
            </section>

            <section class="variants-section">
                <h2>Золотые и&nbsp;серебряные автомобильные брелоки для ключей</h2>
                <div class="text">Автомобильный брелок из&nbsp;драгоценного металла&nbsp;&mdash; это персональный талисман водителя и&nbsp;статусный аксессуар. Мы&nbsp;отливаем миниатюрные копии марок BMW, Mercedes, Lexus, Toyota, Audi, Porsche, Dodge Ram, а&nbsp;также точные модели вашего авто по&nbsp;фото&nbsp;&mdash; от&nbsp;15&nbsp;до&nbsp;40&nbsp;мм в&nbsp;длину. Отдельное направление&nbsp;&mdash; брелоки с&nbsp;госномером: цифры и&nbsp;буквы вашего номерного знака повторяются в&nbsp;металле с&nbsp;точностью до&nbsp;0,1&nbsp;мм. Для владельцев, которые часто паркуются в&nbsp;незнакомых местах, делаем брелок с&nbsp;QR-кодом: случайный прохожий отсканирует его и&nbsp;сможет связаться с&nbsp;вами, если ключи потеряются. Все автомобильные брелоки комплектуются усиленным паяным кольцом&nbsp;&mdash; оно выдерживает нагрузку до&nbsp;5&nbsp;кг и&nbsp;не&nbsp;расстегнётся в&nbsp;дороге.</div>
                <div class="variants swiper">
                    <div class="swiper-wrapper">
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <div class="variant__title">Логотипы марок</div>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-26.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>BMW, Mercedes, Lexus, Toyota, Dodge Ram, Audi, Volkswagen, Porsche, Ferrari, Lamborghini.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <div class="variant__title">Модели авто</div>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-27.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Уменьшенная копия вашего автомобиля (по&nbsp;фото) из&nbsp;золота или серебра. Длина от&nbsp;15&nbsp;до&nbsp;40&nbsp;мм.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <div class="variant__title">Госномер на&nbsp;брелоке</div>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-28.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Повторяем ваш номерной знак (цифры и&nbsp;буквы) в&nbsp;миниатюре. Из&nbsp;золота или серебра.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <div class="variant__title">Брелок-руль</div>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-29.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Мини-руль из&nbsp;золота.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <div class="variant__title">Брелок-шина&nbsp;/ колесо</div>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-30.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Для фанатов дрифта.</p>
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
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Заказать брелок для авто">Заказать брелок для авто</button>
                </div>
            </section>

            <section class="variants-section variants-section--bg">
                <h2>Золотые брелоки для фанатов CS2 и&nbsp;оружейной тематики</h2>
                <div class="text">Оружейная тематика&nbsp;&mdash; один из&nbsp;самых востребованных запросов в&nbsp;нашей студии. Мы&nbsp;делаем миниатюрные золотые копии AK-47, керамбита, Desert Eagle, M4A4 и&nbsp;других моделей из&nbsp;Counter-Strike 2&nbsp;с детализацией, которую оценит даже опытный геймер: прорабатываем приклад, ствол, магазин, мушку и&nbsp;спусковую скобу. Для реалистичности можем добавить чернение&nbsp;&mdash; оно подчёркивает грани и&nbsp;делает оружие визуально &laquo;рабочим&raquo;. Отдельная гордость&nbsp;&mdash; брелоки-перчатки (Sport Gloves, Specialist Gloves) с&nbsp;фактурой ткани, которую мы&nbsp;воспроизводим в&nbsp;металле. Каждый брелок отливается из&nbsp;золота 585 или серебра 925, проходит пробирную палату и&nbsp;комплектуется прочным креплением. Вес&nbsp;&mdash; от&nbsp;3&nbsp;до&nbsp;8&nbsp;грамм, оптимально для ежедневного ношения на&nbsp;ключах.</div>
                <div class="variants-4 swiper">
                    <div class="swiper-wrapper">
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <div class="variant__title">Золотой калаш (AK-47&nbsp;/ AK-74)</div>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-31.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Максимально детализированный. Как в&nbsp;игре.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <div class="variant__title">Золотой керамбит</div>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-32.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Нож-керамбит из&nbsp;золота. Можно с&nbsp;&laquo;патиной&raquo; как в&nbsp;CS2.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <div class="variant__title">Золотой Desert Eagle</div>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-33.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Пистолет Desert Eagle.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <div class="variant__title">Золотой M4A4&nbsp;/ M4A1-S</div>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-34.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>На&nbsp;заказ.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <div class="variant__title">Золотые перчатки (Grine Hill)</div>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-35.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Для особых фанатов.</p>
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
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Заказать брелок из CS2">Заказать брелок из&nbsp;CS2</button>
                </div>
            </section>

            <section class="variants-section">
                <h2>Парные золотые брелоки для влюбленных и&nbsp;друзей</h2>
                <div class="text">Парные брелоки&nbsp;&mdash; это не&nbsp;просто аксессуар, а&nbsp;материальное подтверждение связи между двумя людьми. Мы&nbsp;делаем четыре классических формата: две половинки одного сердца (на&nbsp;одной гравировка &laquo;Ты&raquo;, на&nbsp;другой&nbsp;&mdash; &laquo;Я&raquo;), брелоки-пазлы с&nbsp;единым рисунком, брелоки с&nbsp;инициалами, которые читаются как одна пара (&laquo;А+В&raquo;), и&nbsp;композицию &laquo;Ключ и&nbsp;замок&raquo;. Каждый брелок изготавливается из&nbsp;одного сплава и&nbsp;обрабатывается в&nbsp;один день&nbsp;&mdash; так вы&nbsp;получаете идеально совпадающие оттенки металла. Гравировку наносим на&nbsp;обе половинки: имена, даты знакомства, свадьбы или общий девиз пары. Парные брелоки&nbsp;&mdash; популярный подарок на&nbsp;годовщину, свадьбу, День святого Валентина или просто как знак внимания без повода. Упаковываем в&nbsp;одну коробку с&nbsp;двумя отделениями.</div>
                <div class="variants swiper">
                    <div class="swiper-wrapper">
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <div class="variant__title">Две половинки сердца</div>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-36.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>На&nbsp;одном брелоке половинка с&nbsp;именем &laquo;Ты&raquo;, на&nbsp;другой &laquo;Я&raquo;. Вместе складываются в&nbsp;сердце.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <div class="variant__title">Брелоки-пазлы</div>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-37.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Две части, которые соединяются. На&nbsp;каждой&nbsp;&mdash; часть рисунка или фразы.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <div class="variant__title">Брелоки с&nbsp;инициалами</div>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-38.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Например, &laquo;А&raquo; и&nbsp;&laquo;В&raquo;, которые рядом&nbsp;&mdash; &laquo;А+В&raquo;.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <div class="variant__title">Брелок &laquo;Ключ и&nbsp;замок&raquo; </div>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/variant-39.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Один брелок-ключик, второй брелок-замочек.</p>
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
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Заказать парный брелок">Заказать парный брелок</button>
                </div>
            </section>

<?php
            $visible_cost_segments = array_filter($cost_segments);
            $first_cost_segment = $visible_cost_segments ? key($visible_cost_segments) : '';
            ?>
            <section class="prices-section">
                <h2>Стоимость изготовления золотых, серебряных и&nbsp;платиновых брелоков на&nbsp;заказ</h2>
                <div class="text">Мы&nbsp;за&nbsp;прозрачность. Конечная цена складывается из&nbsp;трех простых составляющих. Вы&nbsp;можете легко прикинуть бюджет заранее, а&nbsp;наш мастер просчитает точную стоимость на&nbsp;бесплатной консультации.</div>
                <?php $prices_examples_title = 'Примеры цен изготавливаемых брелоков'; require(DIR_TEMPLATE . 'uvelirmoscow_new/template/product/manufacturing_category_prices_intro.tpl'); ?>
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
                <h2>Примеры изготовленных брелоков на&nbsp;заказ</h2>
                <div class="text">Ниже представлены реальные работы нашей студии. Каждый брелок создан с&nbsp;нуля по&nbsp;индивидуальному эскизу&nbsp;&mdash; от&nbsp;классических слитков до&nbsp;эксклюзивных моделей с&nbsp;редкими камнями. Нажмите на&nbsp;фото, чтобы увидеть детали и&nbsp;узнать историю создания.</div>
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
                <h2>Как мы&nbsp;создаём ювелирные брелоки на&nbsp;заказ</h2>
                <div class="text">Весь путь от&nbsp;идеи до&nbsp;готового брелока прозрачен и&nbsp;понятен. Вы&nbsp;можете участвовать в&nbsp;процессе лично или удалённо&nbsp;&mdash; мы&nbsp;снимаем каждый этап на&nbsp;фото и&nbsp;видео. От&nbsp;эскиза до&nbsp;финишной полировки&nbsp;&mdash; ваш брелок проходит все стадии под контролем мастеров.</div>
                <div class="process swiper">
                    <div class="swiper-wrapper">
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/process-1.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Идея и&nbsp;консультация</h3>
                                    <p>Вы&nbsp;говорите форму (калаш, керамбит, кроссовок, логотип автомобиля, сердечко, медведь, флаг), металл, вес. Присылаете референс (фото, картинка из&nbsp;игры, макет).</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/process-2.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>3D-моделирование </h3>
                                    <p>Создаём 3D-модель с&nbsp;учётом прочности (ушка для ключей, толщина металла в&nbsp;нагрузочных местах).</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/process-3.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>3D-печать полимерной модели</h3>
                                    <p>3D-печать полимерной копии. Вы&nbsp;держите в&nbsp;руках будущий брелок.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/process-4.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Литье металла</h3>
                                    <p>Заливка расплавленного золота/серебра в&nbsp;форму (ваш металл или наш).</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/process-5.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Обработка и&nbsp;шлифовка</h3>
                                    <p>Обработка, шлифовка, полировка, матирование, чернение.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/process-6.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Крепление кольца</h3>
                                    <p>Припаиваем прочное соединительное кольцо (диаметр 10-15&nbsp;мм). Проверяем на&nbsp;разрыв (рывок 5&nbsp;кг).</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/process-7.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Закрепка камней</h3>
                                    <p>По&nbsp;желанию: бриллианты, рубины, сапфиры, эмаль, фианиты.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/process-8.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Гравировка</h3>
                                    <p>Имя, дата, номер авто, логотип, фраза.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/keychains/process-9.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Пробирование и&nbsp;выдача</h3>
                                    <p>Клеймо, паспорт, гарантия 12&nbsp;месяцев на&nbsp;пайку кольца.</p>
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
                        <div class="text">Все драгоценные металлы имеют сертификаты соответствия, а&nbsp;камни&nbsp;&mdash; геммологические заключения. Мы&nbsp;работаем с&nbsp;Государственной Пробирной палатой, поэтому на&nbsp;каждом изделии стоит официальное клеймо. По&nbsp;запросу мы&nbsp;предоставим сертификаты на&nbsp;камни весом от&nbsp;0,4&nbsp;карат.</div>
                    </div>
                </div>
            </section>

            <section class="consultation-section">
                <h2>Закажите изготовление <br>золотого, серебряного или платинового брелока прямо сейчас</h2>
                <div class="text">Совместно со&nbsp;всеми специалистами&nbsp;Вы сможете обсудить Ваш будущий брелок.</div>
                <div class="consultation__buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Заказать консультацию">Заказать консультацию</button>
                    <button type="button" class="btn btn--big btn--border" data-modal="#modal-2">Рассчитать стоимость</button>
                </div>
            </section>

<?php if ($faq) { ?>
            <section class="faq-section">
                <h2>Часто задаваемые вопросы об&nbsp;изготовлении ювелирных брелоков</h2>
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
                <h2>Изготавливаем брелоки в&nbsp;Москве&nbsp;&mdash; доставляем в&nbsp;любой город России, СНГ и&nbsp;мира</h2>
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
