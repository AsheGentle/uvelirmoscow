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
                    <h1>Изготовление талисмана или амулета</h1>
                    <div class="showcase__text">
                        Индивидуальное изготовление ювелирных талисманов и&nbsp;амулетов на&nbsp;заказ. Золотые монеты, скарабей, клевер, подкова, глаз Фатимы, руны, знаки зодиака, лунные амулеты, золотая рыбка. Работаем с&nbsp;золотом 585/750, серебром 925, платиной 950. Символы защиты, удачи, богатства, любви. Только ювелирное изготовление&nbsp;&mdash; без магии и&nbsp;эзотерики.
                    </div>
                    <div class="showcase__buttons">
                        <button type="button" class="btn btn--medium" data-modal="#modal-1" data-modal-title="Бесплатная консультация">Бесплатная консультация</button>
                        <button type="button" class="btn btn--border btn--medium" data-modal="#modal-2">Рассчитать стоимость</button>
                    </div>
                </div>
                <picture class="showcase__image">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/showcase-img-talismans-mobile.webp" media="(max-width: 599px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/showcase-img-talismans-tab.webp" media="(max-width: 836px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/showcase-img-talismans.webp">
                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/showcase-img-talismans.webp" alt="" width="620" height="620">
                </picture>
                <picture class="showcase__bg">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/showcase-bg-talismans-mobile.webp" media="(max-width: 599px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/showcase-bg-talismans-tab.webp" media="(max-width: 836px)">
                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/showcase-bg-talismans.webp" alt="">
                </picture>
            </section>

<?php if ($category_wall) { ?>
            <section class="types-section">
                <h2>Виды ювелирных талисманов и&nbsp;амулетов, которые мы&nbsp;изготавливаем на&nbsp;заказ</h2>
                <div class="text">Изготавливаем талисманы и&nbsp;амулеты с&nbsp;символикой&nbsp;&mdash; от&nbsp;подвесок со&nbsp;знаками зодиака до&nbsp;каббалистических и&nbsp;славянских оберегов. Каталог структурирован по&nbsp;значениям и&nbsp;формам. Выбирая образец, вы&nbsp;определяетесь с&nbsp;символом и&nbsp;размером. Куратор направления расскажет о&nbsp;свойствах металлов и&nbsp;камней, чтобы ваш амулет был не&nbsp;только красивым, но&nbsp;и&nbsp;значимым.</div>
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
                <h2>Почему выгоднее заказать изготовление талисмана, чем купить готовый?</h2>
                <div class="why__title">Готовые амулеты из&nbsp;магазина&nbsp;&mdash; это всегда компромисс между желанием и&nbsp;реальностью...</div>
                <div class="why__text">Часто талисманы и&nbsp;амулеты не&nbsp;подходят по&nbsp;смыслу, имеют усреднённый дизайн или не&nbsp;вызывают нужных эмоций. Индивидуальное изготовление решает эти проблемы: вы&nbsp;получаете талисман с&nbsp;уникальным символом, идеальным размером и&nbsp;дизайном, который будет нести именно тот смысл, который важен для вас, и&nbsp;станет вашим личным оберегом.</div>
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
                <h2>Изготовление талисманов и&nbsp;амулетов из&nbsp;драгоценных металлов</h2>
                <div class="text">Выбор металла определяет не&nbsp;только внешний вид, но&nbsp;и&nbsp;долговечность вашему талисману и&nbsp;амулету. Мы&nbsp;работаем со&nbsp;всеми ювелирными сплавами, представленными на&nbsp;рынке. Каждый материал имеет свои особенности, о&nbsp;которых мы&nbsp;вам подробно расскажем перед изготовлением.</div>
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
                        <h3>Оттенки талисманов и&nbsp;амулетов из&nbsp;разных материалов</h3>
                        <p>Для ежедневного ношения лучше выбрать износостойкое красное или белое золото&nbsp;&mdash; они сохранят безупречный вид на&nbsp;долгие годы. Для сакрального амулета, который надевается по&nbsp;особым событиям, идеально подойдет платина или серебро&nbsp;&mdash; они традиционно ассоциируются с&nbsp;магическими практиками. Наши мастера всегда проконсультируют вас, какой металл лучше раскроет ваш дизайн и&nbsp;обеспечит талисману долгий срок службы.</p>
                    </div>
                    <picture class="materials-colors__image">
                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/material-colors.webp" alt="" width="486" height="175" loading="lazy">
                    </picture>
                </div>
            </section>

            <section class="own-materials-section">
                <h2>Изготовим талисман из&nbsp;вашего золота или серебра</h2>
                <div class="text">Ваши семейные реликвии могут засиять по-новому. Мы&nbsp;принимаем золото, платину и&nbsp;серебро любой пробы&nbsp;&mdash; от&nbsp;старых украшений до&nbsp;слитков. Переплавляем ваш металл и&nbsp;создаём из&nbsp;него современный талисман, который вы&nbsp;будете носить с&nbsp;гордостью. Вы&nbsp;оплачиваете только работу мастера.</div>
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
                <h2>Значение талисманов и&nbsp;амулетов&nbsp;&mdash; какой выбрать для себя</h2>
                <div class="text">Помогаем выбрать символ под вашу задачу (без магии, на&nbsp;основе традиций):</div>
                <div class="variants swiper">
                    <div class="swiper-wrapper">
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Золотая монета</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-1.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Богатство, финансовый успех, привлечение денег</p>
                                    <p><strong>Формат:</strong> Подвеска, брелок для ключей, вставка в&nbsp;браслет</p>
                                    <p><strong>Кому подходит:</strong> Бизнесмены, инвесторы, продавцы</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Скарабей</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-2.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Возрождение, удача, солнечная энергия (Египет)</p>
                                    <p><strong>Формат:</strong> Кулон крупный, кабошон</p>
                                    <p><strong>Кому подходит:</strong> Путешественники, эзотерики (внешне)</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Золотая рыбка</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-3.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Исполнение желаний, удача</p>
                                    <p><strong>Формат:</strong> Маленькая подвеска, серьги</p>
                                    <p><strong>Кому подходит:</strong> Женщины, девушки, на&nbsp;подарок</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Четырехлистный клевер</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-4.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Удача, везение, редкость</p>
                                    <p><strong>Формат:</strong> Мини-подвеска, вставка</p>
                                    <p><strong>Кому подходит:</strong> Студенты, игроки, оптимисты</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Глаз Фатимы (Назар)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-5.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Защита от&nbsp;сглаза, зависти</p>
                                    <p><strong>Формат:</strong> Плоский кулон с&nbsp;эмалью (синий/белый)</p>
                                    <p><strong>Кому подходит:</strong> Все, особенно публичные люди</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Подкова</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-6.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Счастье, защита дома</p>
                                    <p><strong>Формат:</strong> Подвеска на&nbsp;цепочку, магнит</p>
                                    <p><strong>Кому подходит:</strong> Домохозяйки, автомобилисты</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Лунный амулет</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-7.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Женская энергия, интуиция</p>
                                    <p><strong>Формат:</strong> Полумесяц, с&nbsp;жемчугом или лунным камнем</p>
                                    <p><strong>Кому подходит:</strong> Женщины, творческие люди</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Древо жизни</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-8.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Связь с&nbsp;родом, мудрость</p>
                                    <p><strong>Формат:</strong> Ажурный кулон</p>
                                    <p><strong>Кому подходит:</strong> Семейные люди</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Золотое руно</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-9.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Достаток, целеустремленность</p>
                                    <p><strong>Формат:</strong> Баран&nbsp;/ овен</p>
                                    <p><strong>Кому подходит:</strong> Овны по&nbsp;зодиаку, предприниматели</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Руна (например, Fehu, Algiz)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-10.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Богатство&nbsp;/ защита (скандинавские руны)</p>
                                    <p><strong>Формат:</strong> Маленькая подвеска</p>
                                    <p><strong>Кому подходит:</strong> Интересуются рунами</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Знак зодиака</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-11.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>Персональная защита</p>
                                    <p><strong>Формат:</strong> Литейный кулон с&nbsp;символом</p>
                                    <p><strong>Кому подходит:</strong> По&nbsp;дате рождения</p>
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
                <div class="text">Не&nbsp;уверены в&nbsp;выборе? Пришлите свою задачу (&laquo;хочу привлечь деньги&raquo;, &laquo;нужна защита&raquo;, &laquo;подарок мужчине&raquo;), мы&nbsp;предложим 3&nbsp;варианта символа.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Получить консультацию">Получить консультацию</button>
                </div>
            </section>

            <section class="variants-section variants-section--bg">
                <h2>Как выбрать амулет и&nbsp;талисман&nbsp;&mdash; по&nbsp;дате рождения и&nbsp;знаку зодиака</h2>
                <div class="text">Традиционно разные символы отвечают за&nbsp;разные сферы жизни: одни привлекают деньги, другие защищают от&nbsp;сглаза, третьи помогают в&nbsp;любви. Выбирайте&nbsp;то, что ближе вам.</div>
                <div class="variants-4 swiper">
                    <div class="swiper-wrapper">
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Овен</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-12.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Камни-талисманы:</strong> Рубин, аметист, яшма</p>
                                    <p><strong>Символы:</strong> Баран, звезда</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Телец</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-13.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Камни-талисманы:</strong> Изумруд, сапфир, розовый кварц</p>
                                    <p><strong>Символы:</strong> Бык, монета</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Близнецы</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-14.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Камни-талисманы:</strong> Агат, берилл, тигровый глаз</p>
                                    <p><strong>Символы:</strong> Близнецы, змея</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Рак</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-15.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Камни-талисманы:</strong> Лунный камень, жемчуг, изумруд</p>
                                    <p><strong>Символы:</strong> Краб, луна</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Лев</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-16.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Камни-талисманы:</strong> Рубин, янтарь, гранат</p>
                                    <p><strong>Символы:</strong> Козерог, рыба</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Дева</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-17.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Камни-талисманы:</strong> Яшма, сердолик, цитрин</p>
                                    <p><strong>Символы:</strong> Лев, солнце</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Весы</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-18.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Камни-талисманы:</strong> Опал, лазурит, малахит</p>
                                    <p><strong>Символы:</strong> Сова, колосья</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Скорпион</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-19.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Камни-талисманы:</strong> Гранат, топаз, александрит</p>
                                    <p><strong>Символы:</strong> Весы, голубь</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Стрелец</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-20.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Камни-талисманы:</strong> Бирюза, аметист, гранат</p>
                                    <p><strong>Символы:</strong> Скорпион, орел</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Козерог</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-21.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Камни-талисманы:</strong> Оникс, рубин, агат</p>
                                    <p><strong>Символы:</strong> Стрелец, скарабей</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Водолей</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-22.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Камни-талисманы:</strong> Аметист, сапфир, циркон</p>
                                    <p><strong>Символы:</strong> Водолей, ключ</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Рыбы</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/variant-23.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p><strong>Камни-талисманы:</strong> Аквамарин, жемчуг, лунный камень</p>
                                    <p><strong>Символы:</strong> Рыбы, волна</p>
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
                <div class="text">Мы&nbsp;не&nbsp;приписываем камням и&nbsp;символам магических свойств&nbsp;&mdash; это вопрос веры и&nbsp;традиции. Наша задача: качественно изготовить украшение с&nbsp;любым символом из&nbsp;золота, серебра или платины. А&nbsp;верить в&nbsp;него или нет&nbsp;&mdash; решать вам.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Выбрать свой знак">Выбрать свой знак</button>
                </div>
            </section>

            <section class="surfaces-section">
                <h2>Финишная обработка для талисмана&nbsp;&mdash; чтобы символ работал и&nbsp;выглядел красиво</h2>
                <div class="text">Для золотых и&nbsp;серебряных диадем важна приятная на&nbsp;ощупь поверхность&nbsp;&mdash; украшение контактирует с&nbsp;кожей.</div>
                <div class="surfaces swiper">
                    <div class="swiper-wrapper">
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Полированная</div>
                                    <div class="surface__text">
                                        <p>Зеркальный блеск. Классика.</p>
                                        <p><strong>Для каких талисманов:</strong> Монеты, скарабеи, рыбки</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/surface-1.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Матовая</div>
                                    <div class="surface__text">
                                        <p>Бархатистая, без бликов. Скрывает царапины.</p>
                                        <p><strong>Для каких талисманов:</strong> Руны, амулеты для мужчин</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/surface-2.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Чернение (серебро)</div>
                                    <div class="surface__text">
                                        <p>Затемненные углубления. Эффектно.</p>
                                        <p><strong>Для каких талисманов:</strong> Славянские обереги, руны</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/surface-3.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Горячая эмаль</div>
                                    <div class="surface__text">
                                        <p>Цветные вставки.</p>
                                        <p><strong>Для каких талисманов:</strong> Глаз Фатимы (синий/белый), клевер</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/surface-4.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Родированная</div>
                                    <div class="surface__text">
                                        <p>Белое покрытие. Для серебра и&nbsp;белого золота.</p>
                                        <p><strong>Для каких талисманов:</strong> Лунные амулеты</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/surface-5.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Комбинированная</div>
                                    <div class="surface__text">
                                        <p>Мат + полир. Дорогой вид.</p>
                                        <p><strong>Для каких талисманов:</strong> Знаки зодиака, Древо жизни</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/surface-6.webp" alt="" width="185" height="185" loading="lazy">
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
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Заказать образец">Заказать образец</button>
                </div>
            </section>

            <section class="stones-section">
                <h2>Амулеты и&nbsp;талисманы с&nbsp;камнями</h2>
                <div class="text">
                    <p>Драгоценный камень&nbsp;&mdash; это душа талисмана. Он&nbsp;придаёт оберегу цвет, смысл и&nbsp;силу. Мы&nbsp;поможем вам выбрать камень, идеально подходящий под ваш эскиз и&nbsp;бюджет. В&nbsp;нашей базе&nbsp;&mdash; тысячи сертифицированных камней, а&nbsp;также мы&nbsp;работаем с&nbsp;камнями заказчика.</p>
                    <p>Мы&nbsp;не&nbsp;приписываем магических свойств камням, но&nbsp;традиционно они усиливают символ. Можем поставить любой камень из&nbsp;вашего или нашего ассортимента.</p>
                </div>
                <div class="stones swiper">
                    <div class="swiper-wrapper">
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Монета (богатство)</h3>
                                <p><strong>Камень (усилитель):</strong> Цитрин, пирит, гранат</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-5.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Скарабей</h3>
                                <p><strong>Камень (усилитель):</strong> Бирюза, лазурит, карнеол</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-9.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Золотая рыбка</h3>
                                <p><strong>Камень (усилитель):</strong> Янтарь, солнечный камень</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-10.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Клевер (удача)</h3>
                                <p><strong>Камень (усилитель):</strong> Изумруд, хризопраз</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-6.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Глаз Фатимы (защита)</h3>
                                <p><strong>Камень (усилитель):</strong> Сапфир, лазурит</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-4.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Подкова</h3>
                                <p><strong>Камень (усилитель):</strong> Лунный камень, белый опал</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-11.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Лунный амулет</h3>
                                <p><strong>Камень (усилитель):</strong> Жемчуг, лунный камень</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-8.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Руна</h3>
                                <p><strong>Камень (усилитель):</strong> Гематит, раухтопаз</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-12.webp" alt="" width="300" height="200" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="stone swiper-slide">
                            <div class="stone__inner">
                                <h3>Знак зодиака</h3>
                                <p><strong>Камень (усилитель):</strong> Камень по&nbsp;знаку (аметист&nbsp;&mdash; Водолею, рубин&nbsp;&mdash; Льву)</p>
                                <picture class="stone__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/stone-3.webp" alt="" width="300" height="200" loading="lazy">
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
                <div class="text">Мы&nbsp;работаем с&nbsp;полным спектром камней&nbsp;&mdash; от&nbsp;популярных бриллиантов и&nbsp;сапфиров до&nbsp;редких демантоидов и&nbsp;параиба. Каждый камень в&nbsp;нашей мастерской проходит геммологическую экспертизу, поэтому вы&nbsp;получаете не&nbsp;только красивое, но&nbsp;и&nbsp;юридически подтверждённое украшение. По&nbsp;вашему желанию мы&nbsp;подберём камень под любой бюджет и&nbsp;предоставим все сертификаты соответствия. Если у&nbsp;вас есть семейный камень, мы&nbsp;готовы создать для него новую, достойную оправу, чтобы он&nbsp;засиял в&nbsp;вашем талисмане по-новому.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Получить консультацию">Получить консультацию</button>
                </div>
            </section>

            <section class="tables-section">
                <h2>Изготавливаем амулеты и&nbsp;талисманы с&nbsp;камнями разной каратности</h2>
                <div class="text">Карат&nbsp;&mdash; это единица веса драгоценного камня.&nbsp;1&nbsp;карат = 0.2&nbsp;грамма. От&nbsp;веса камня зависит его размер, блеск&nbsp;и, конечно, цена. Мы&nbsp;подберем камень под ваш бюджет и&nbsp;задачи.</div>
                <h3>Какой вес камня выбрать для талисмана?</h3>
                <div class="table">
                    <table>
                        <thead>
                            <tr>
                                <th>Вес камня (карат)</th>
                                <th>Визуальный размер</th>
                                <th>Для какого талисмана подходит</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><span class="table__carat">до&nbsp;0.03&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-1.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Меле</td>
                                <td>Талисманы с&nbsp;бриллиантовой дорожкой</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">0.03&nbsp;- 0.1&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-2.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Маленький</td>
                                <td>Лёгкие повседневные обереги</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">0.1&nbsp;- 0.3&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-3.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Небольшой</td>
                                <td>Классические талисманы&nbsp;&mdash; популярный вес</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">0.31&nbsp;- 0.5&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-4.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Средний</td>
                                <td>Премиальные амулеты, мужские обереги</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">0.51&nbsp;- 1.0&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-5.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Стандартный</td>
                                <td>Эксклюзивные талисманы, инвестиционные модели</td>
                            </tr>
                            <tr>
                                <td><span class="table__carat">от&nbsp;1.0&nbsp;- 11.0&nbsp;ct</span>
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/carat-6.svg" alt="" width="24" height="24" loading="lazy"></td>
                                <td>Крупный</td>
                                <td>Уникальные дизайнерские амулеты</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="text">Не&nbsp;уверены, какой карат выбрать? Мы&nbsp;покажем вам камни разного веса вживую или на&nbsp;фото. Также вы&nbsp;можете принести свой камень&nbsp;&mdash;  мы&nbsp;сделаем амулет или талисман под него.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Подобрать камень">Подобрать камень под бюджет</button>
                </div>
            </section>

            <section class="tables-section bg-section">
                <h2>Размер талисмана&nbsp;&mdash; от&nbsp;маленького до&nbsp;носимого</h2>
                <div class="text">Вам не&nbsp;нужно гадать, подойдёт&nbsp;ли стандартный размер. Мы&nbsp;подбираем талисман под&nbsp;то, как вы&nbsp;планируете его носить: на&nbsp;цепочке, браслете, как брелок или медальон,&nbsp;&mdash; с&nbsp;учётом вашего стиля и&nbsp;комфорта.</div>
                <div class="table table--light">
                    <table>
                        <thead>
                            <tr>
                                <th>Размер</th>
                                <th>Диаметр&nbsp;/ длина</th>
                                <th>Для чего</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Мини (шарм)</td>
                                <td>6-10&nbsp;мм</td>
                                <td>На&nbsp;браслет, как дополнение</td>
                            </tr>
                            <tr>
                                <td>Маленький</td>
                                <td>11-15&nbsp;мм</td>
                                <td>Для тонкой цепочки, детям</td>
                            </tr>
                            <tr>
                                <td>Средний (классика)</td>
                                <td>16-22&nbsp;мм</td>
                                <td>Самый популярный размер для кулона</td>
                            </tr>
                            <tr>
                                <td>Крупный</td>
                                <td>23-35&nbsp;мм</td>
                                <td>Для мужчин, как брелок, на&nbsp;шею поверх одежды</td>
                            </tr>
                            <tr>
                                <td>Медальон</td>
                                <td>30-50&nbsp;мм</td>
                                <td>С&nbsp;гравировкой, открывающийся (для рун, записок)</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="text">Вес: от&nbsp;0.5 грамма (маленький серебряный) до&nbsp;20&nbsp;граммов (крупный золотой скарабей). Рассчитаем комфортный вес для постоянной носки.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Подобрать размер">Подобрать свой размер</button>
                </div>
            </section>

            <section class="brands-section">
                <h2>Изготовим талисман в&nbsp;стиле древних цивилизаций и&nbsp;культур</h2>
                <div class="brands brands--4 swiper">
                    <div class="swiper-wrapper">
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/ancient-egypt.svg" alt="" width="296" height="98" loading="lazy">
                            </picture>
                            <div class="brand__text">Скарабей, глаз Гора, анкх (ключ жизни), сокол.</div>
                        </div>
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/scandinavian-mythology.svg" alt="" width="296" height="98" loading="lazy">
                            </picture>
                            <div class="brand__text">Руны, молот Тора, валькнут, волк Фенрир.</div>
                        </div>
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/slavic-amulets.svg" alt="" width="296" height="98" loading="lazy">
                            </picture>
                            <div class="brand__text">Ладинец, Молвинец, Коллар, Звезда Руси.</div>
                        </div>
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/christianity.svg" alt="" width="296" height="98" loading="lazy">
                            </picture>
                            <div class="brand__text">Крест, рыба (Ихтис), ангел-хранитель</div>
                        </div>
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/chinese-culture.svg" alt="" width="426" height="98" loading="lazy">
                            </picture>
                            <div class="brand__text">Дракон (символ удачи), монеты с&nbsp;квадратным отверстием (богатство), узел бесконечности (долголетие), Инь-Ян</div>
                        </div>
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/celtic-knots.svg" alt="" width="426" height="98" loading="lazy">
                            </picture>
                            <div class="brand__text">Трискелион, кельтские узлы, древо жизни</div>
                        </div>
                        <div class="brand swiper-slide">
                            <picture class="brand__image">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/brands/islamic-culture.svg" alt="" width="426" height="98" loading="lazy">
                            </picture>
                            <div class="brand__text">Полумесяц со&nbsp;звездой, рука Фатимы (Хамса), мечеть, Коран, надписи на&nbsp;арабском (Бисмилля)</div>
                        </div>
                    </div>
                    <div class="swiper-buttons show-on-mob">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>
                <div class="buttons">
                    <a href="" class="btn btn--big">Выбрать стиль талисмана</a>
                </div>
            </section>

<?php
            $visible_cost_segments = array_filter($cost_segments);
            $first_cost_segment = $visible_cost_segments ? key($visible_cost_segments) : '';
            ?>
            <section class="prices-section">
                <h2>Стоимость изготовления талисмана или амулета на&nbsp;заказ</h2>
                <div class="text">Мы&nbsp;за&nbsp;прозрачность. Конечная цена складывается из&nbsp;трех простых составляющих. Вы&nbsp;можете легко прикинуть бюджет заранее, а&nbsp;наш мастер просчитает точную стоимость на&nbsp;бесплатной консультации.</div>
                <?php $prices_examples_title = 'Примеры цен изготавливаемых амулетов'; require(DIR_TEMPLATE . 'uvelirmoscow_new/template/product/manufacturing_category_prices_intro.tpl'); ?>
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
                <h2>Примеры изготовленных талисманов и&nbsp;амулетов на&nbsp;заказ</h2>
                <div class="text">Ниже представлены реальные работы нашей студии. Каждый талисман создан с&nbsp;нуля по&nbsp;индивидуальному эскизу&nbsp;&mdash; от&nbsp;древних символов до&nbsp;современных оберегов с&nbsp;редкими камнями. Нажмите на&nbsp;фото, чтобы увидеть детали и&nbsp;узнать историю создания.</div>
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
                <h2>Как мы&nbsp;создаём ювелирные талисманы и&nbsp;амулеты на&nbsp;заказ</h2>
                <div class="text">Весь путь от&nbsp;идеи до&nbsp;готового талисмана прозрачен и&nbsp;понятен. Вы&nbsp;можете участвовать в&nbsp;процессе лично или удалённо&nbsp;&mdash; мы&nbsp;снимаем каждый этап на&nbsp;фото и&nbsp;видео. От&nbsp;эскиза до&nbsp;финишной полировки&nbsp;&mdash; ваш талисман проходит все стадии под контролем мастеров.</div>
                <div class="process swiper">
                    <div class="swiper-wrapper">
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/process-1.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Идея и&nbsp;консультация</h3>
                                    <p>Вы&nbsp;говорите: &laquo;Хочу талисман на&nbsp;богатство&nbsp;/ защиту&nbsp;/ здоровье&nbsp;/ удачу&nbsp;/ любовь&raquo;. Мы&nbsp;предлагаем символы: монета, скарабей, клевер, глаз Гора, руна, звезда Давида, полумесяц, анкх, подкова, рыбка, слон. Либо вы&nbsp;приходите со&nbsp;своим эскизом.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/process-2.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Выбор металла и&nbsp;камня</h3>
                                    <p>Золото 585, серебро 925, платина. Камень подбираем под задачу: бирюза (богатство), малахит (защита), янтарь (здоровье), лунный камень (интуиция), цитрин (привлечение денег).</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/process-3.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Эскиз и&nbsp;3D-моделирование</h3>
                                    <p>Создаём 3D-модель. Утверждаем детали, толщину, фактуру.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/process-4.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>3D-печать полимерной модели</h3>
                                    <p>Печатаем полимерную копию. Вы&nbsp;держите в&nbsp;руках будущий талисман, смотрите на&nbsp;реальный размер.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/process-5.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Литье металла</h3>
                                    <p>Заливка расплавленного золота/серебра/платины в&nbsp;форму (ваш металл или наш).</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/process-6.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Ручная доработка</h3>
                                    <p>Обработка, шлифовка, полировка.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/process-7.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Закрепка камня</h3>
                                    <p>Фиксируем камень (бирюзу, малахит, янтарь, цитрин, лунный камень) под микроскопом.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/process-8.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Гравировка</h3>
                                    <p>Наносим руну, символ, имя, дату, аффирмацию, молитву.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/process-9.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Финишная обработка</h3>
                                    <p>Полировка, мат, чернение, эмаль, родирование.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/talismans/process-10.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Пробирование и&nbsp;выдача</h3>
                                    <p>Клеймо пробирной палаты, паспорт, сертификат на&nbsp;камень (по&nbsp;запросу), гарантия 12&nbsp;месяцев.</p>
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
                <h2>Закажите изготовление <br>персонального талисмана или амулета прямо сейчас</h2>
                <div class="text">Совместно со&nbsp;всеми специалистами&nbsp;Вы сможете обсудить Ваш будущий талисман</div>
                <div class="consultation__buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Заказать консультацию">Заказать консультацию</button>
                    <button type="button" class="btn btn--big btn--border" data-modal="#modal-2">Рассчитать стоимость</button>
                </div>
            </section>

<?php if ($faq) { ?>
            <section class="faq-section">
                <h2>Часто задаваемые вопросы об&nbsp;изготовлении талисманов и&nbsp;амулетов</h2>
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
                <h2>Изготавливаем талисманы или амулеты в&nbsp;Москве&nbsp;&mdash; доставляем в&nbsp;любой город России, СНГ и&nbsp;мира</h2>
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
