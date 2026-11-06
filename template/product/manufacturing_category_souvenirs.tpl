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
                    <h1>Изготовление сувениров из&nbsp;золота, серебра, платины.</h1>
                    <div class="showcase__text">
                        Ювелирные сувениры и&nbsp;подарки из&nbsp;драгоценных металлов. Золотые слитки, монеты, розы, подковы, медали, звезды, пасхальные яйца, фигурки, брелоки. Подарки на&nbsp;золотую свадьбу (50&nbsp;лет)
                    </div>
                    <div class="showcase__buttons">
                        <button type="button" class="btn btn--medium" data-modal="#modal-1" data-modal-title="Бесплатная консультация">Бесплатная консультация</button>
                        <button type="button" class="btn btn--border btn--medium" data-modal="#modal-2">Рассчитать стоимость</button>
                    </div>
                </div>
                <picture class="showcase__image">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/showcase-img-souvenirs-mobile.webp" media="(max-width: 599px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/showcase-img-souvenirs-tab.webp" media="(max-width: 836px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/showcase-img-souvenirs.webp">
                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/showcase-img-souvenirs.webp" alt="" width="620" height="620">
                </picture>
                <picture class="showcase__bg">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/showcase-bg-souvenirs-mobile.webp" media="(max-width: 599px)">
                    <source srcset="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/showcase-bg-souvenirs-tab.webp" media="(max-width: 836px)">
                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/showcase-bg-souvenirs.webp" alt="">
                </picture>
            </section>

<?php if ($category_wall) { ?>
            <section class="types-section">
                <h2>Виды золотых, серебряных и&nbsp;платиновых сувениров, которые мы&nbsp;изготавливаем на&nbsp;заказ</h2>
                <div class="text">Делаем сувениры из&nbsp;драгоценных металлов&nbsp;&mdash; миниатюрные фигурки, медальоны, подвески на&nbsp;память, корпоративные знаки. В&nbsp;разделах представлены разные форматы и&nbsp;темы. Просматривая&nbsp;их, вы&nbsp;выберете идею для подарка или коллекции. Над каждым типом работает отдельный мастер-гравёр, готовый воплотить любую детализацию.</div>
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
                <h2>Почему выгоднее заказать изготовление сувенира, чем купить готовый?</h2>
                <div class="why__title">Готовые сувениры из&nbsp;магазина&nbsp;&mdash; это всегда компромисс между желанием и&nbsp;реальностью...</div>
                <div class="why__text">Часто сувениры не&nbsp;подходят по&nbsp;смыслу, имеют некачественное исполнение или не&nbsp;вызывают нужных эмоций. Индивидуальное изготовление решает эти проблемы: вы&nbsp;получаете сувенир с&nbsp;уникальным дизайном, именной гравировкой и&nbsp;безупречным качеством, который станет идеальным подарком для близкого человека или партнёра по&nbsp;бизнесу.</div>
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
                <h2>Изготовление сувениров из&nbsp;драгоценных металлов</h2>
                <div class="text">Выбор металла определяет не&nbsp;только внешний вид, но&nbsp;и&nbsp;долговечность вашему сувениров. Мы&nbsp;работаем со&nbsp;всеми ювелирными сплавами, представленными на&nbsp;рынке. Каждый материал имеет свои особенности, о&nbsp;которых мы&nbsp;вам подробно расскажем перед изготовлением.</div>
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
                        <h3>Оттенки сувениров из&nbsp;разных материалов</h3>
                        <p>Для корпоративного сувенира или памятного подарка, который будет храниться долгие годы, лучше выбрать износостойкое красное или классическое белое золото&nbsp;&mdash; они сохранят безупречный вид и&nbsp;подчеркнут статус. Для эксклюзивного, штучного изделия, которое передаётся по&nbsp;наследству, идеально подойдет благородная платина или утончённое розовое золото, придающее теплоту и&nbsp;индивидуальность. Наши мастера всегда проконсультируют вас, какой металл лучше раскроет ваш замысел и&nbsp;обеспечит сувениру долгую жизнь.</p>
                    </div>
                    <picture class="materials-colors__image">
                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/material-colors.webp" alt="" width="486" height="175" loading="lazy">
                    </picture>
                </div>
            </section>

            <section class="own-materials-section">
                <h2>Изготовим золотой сувенир из&nbsp;вашего металла</h2>
                <div class="text">Ваши семейные реликвии могут засиять по-новому. Мы&nbsp;принимаем золото, платину и&nbsp;серебро любой пробы&nbsp;&mdash; от&nbsp;старых украшений до&nbsp;слитков. Переплавляем ваш металл и&nbsp;создаём из&nbsp;него современный сувенир, который вы&nbsp;сможете с&nbsp;гордостью подарить или хранить как память. Вы&nbsp;оплачиваете только работу мастера.</div>
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
                <h2>Что подарить из&nbsp;золота, серебра или платины&nbsp;&mdash; выбираем сувенир по&nbsp;поводу</h2>
                <div class="variants-block">
                    <div class="variants swiper">
                        <div class="swiper-wrapper">
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Золотой слиток</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-1.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Богатство, статус, бизнес-партнеру, юбилей</p>
                                        <p><strong>Формат:</strong> От&nbsp;1&nbsp;до&nbsp;100&nbsp;г</p>
                                        <p><strong>Рекомендуемый металл:</strong> Золото 999, 585</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Золотая монета</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-2.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Удача, инвестиция, коллекционеру</p>
                                        <p><strong>Формат:</strong> Диаметр 15-40&nbsp;мм</p>
                                        <p><strong>Рекомендуемый металл:</strong> Золото, серебро</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Золотая роза</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-3.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Любовь, красота, женщине на&nbsp;день рождения</p>
                                        <p><strong>Формат:</strong> Высота 5-15&nbsp;см</p>
                                        <p><strong>Рекомендуемый металл:</strong> Розовое золото</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Золотая подкова</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-4.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Удача, новоселье, на&nbsp;счастье</p>
                                        <p><strong>Формат:</strong> 10-30&nbsp;мм</p>
                                        <p><strong>Рекомендуемый металл:</strong> Золото, серебро</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Золотая рыбка</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-5.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Исполнение желаний, мечта</p>
                                        <p><strong>Формат:</strong> 15-40&nbsp;мм</p>
                                        <p><strong>Рекомендуемый металл:</strong> Золото, серебро</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Пасхальное яйцо</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-6.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Воскресение, семейная реликвия, Фаберже</p>
                                        <p><strong>Формат:</strong> 20-60&nbsp;мм</p>
                                        <p><strong>Рекомендуемый металл:</strong> Золото + эмаль</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Именная медаль</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-7.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Награда, признание заслуг (&laquo;Лучший сотрудник&raquo;)</p>
                                        <p><strong>Формат:</strong> 20-50&nbsp;мм</p>
                                        <p><strong>Рекомендуемый металл:</strong> Золото, серебро</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Золотой дракон</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-8.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Сила, могущество, китайский бизнес-подарок</p>
                                        <p><strong>Формат:</strong> 20-150&nbsp;мм</p>
                                        <p><strong>Рекомендуемый металл:</strong> Желтое золото</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Золотая книга</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-9.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Мудрость, знание, юбилей писателя/ученого</p>
                                        <p><strong>Формат:</strong> 30-80&nbsp;мм</p>
                                        <p><strong>Рекомендуемый металл:</strong> Золото, платина</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Золотой самолет</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-10.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Подарок летчику, авиатору, юбилей Аэрофлота</p>
                                        <p><strong>Формат:</strong> 20-60&nbsp;мм</p>
                                        <p><strong>Рекомендуемый металл:</strong> Серебро, золото</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Сувенир города</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-11.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Память о&nbsp;путешествии, туристический подарок</p>
                                        <p><strong>Формат:</strong> 15-50&nbsp;мм</p>
                                        <p><strong>Рекомендуемый металл:</strong> Серебро, золото</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Серебряная ложка</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-12.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Рождение ребенка (&laquo;на&nbsp;зубок&raquo;), крестины</p>
                                        <p><strong>Формат:</strong> 80-120&nbsp;мм</p>
                                        <p><strong>Рекомендуемый металл:</strong> Серебро 925</p>
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
                    <h3 class="big">Корпоративные подарки с&nbsp;логотипом (от&nbsp;1&nbsp;штуки)</h3>
                    <div class="variants swiper">
                        <div class="swiper-wrapper">
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Брелоки для ключей</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-13.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>С&nbsp;логотипом, именем сотрудника или датой основания компании</p>
                                        <p><strong>Для кого:</strong> Сотрудникам, партнерам</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Настольные таблички</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-14.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>&laquo;Генеральный директор&raquo;, &laquo;Лучший менеджер 2025&raquo; из&nbsp;золота/серебра</p>
                                        <p><strong>Для кого:</strong> Сотрудникам, партнерам</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Золотые монеты</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-15.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>С&nbsp;логотипом компании для партнеров, инвесторов</p>
                                        <p><strong>Для кого:</strong> Бизнес-партнерам, инвесторам</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Сувениры в&nbsp;виде продукции</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-16.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Золотая модель вашего автомобиля, корабля, здания офиса</p>
                                        <p><strong>Для кого:</strong> Именитые клиенты, юбилей компании</p>
                                    </div>
                                </div>
                            </div>
                            <div class="variant swiper-slide">
                                <div class="variant__inner">
                                    <h3>Кубки и&nbsp;награды</h3>
                                    <picture class="variant__image">
                                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-17.webp" alt="" width="160" height="160" loading="lazy">
                                    </picture>
                                    <div class="variant__text">
                                        <p>Золотые или серебряные статуэтки (орел, лев, факел)</p>
                                        <p><strong>Для кого:</strong> Турниры, конкурсы, юбилеи</p>
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
                <div class="text">Не&nbsp;знаете, что выбрать? Напишите повод (50&nbsp;лет свадьбы, выход на&nbsp;пенсию, рождение ребенка, юбилей компании, награждение сотрудника)&nbsp;&mdash; мы&nbsp;предложим 3&nbsp;варианта под ваш бюджет. Корпоративные заказы&nbsp;&mdash; от&nbsp;1&nbsp;штуки</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Получить консультацию">Получить консультацию</button>
                </div>
            </section>

            <section class="variants-section variants-section--bg">
                <h2>Золотые подарки на&nbsp;золотую свадьбу&nbsp;&mdash; 50&nbsp;лет совместной жизни</h2>
                <div class="text">Юбилей, когда всё должно быть золотым. Мы&nbsp;делаем эксклюзивные сувениры для родителей, бабушек-дедушек, друзей:</div>
                <div class="variants swiper">
                    <div class="swiper-wrapper">
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Парные золотые кольца</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-18.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>с&nbsp;гравировкой даты свадьбы и&nbsp;имён. Вес от&nbsp;2&nbsp;г каждое.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Золотая монета &laquo;50&nbsp;лет&raquo;</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-19.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>на&nbsp;одной стороне дата, на&nbsp;другой&nbsp;&mdash; имена супругов. Диаметр 30-40&nbsp;мм.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Золотое пасхальное яйцо с&nbsp;бриллиантами (как Фаберже)</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-20.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>символ вечной любви.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Настольная композиция &laquo;Лебеди&raquo; </h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-21.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>два золотых лебедя на&nbsp;подставке. Символ верности.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Золотая медаль &laquo;50&nbsp;лет. Золотая свадьба&raquo;</h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-22.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>на&nbsp;ленте или на&nbsp;цепочке.</p>
                                </div>
                            </div>
                        </div>
                        <div class="variant swiper-slide">
                            <div class="variant__inner">
                                <h3>Золотая рамка для фото </h3>
                                <picture class="variant__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/variant-23.webp" alt="" width="160" height="160" loading="lazy">
                                </picture>
                                <div class="variant__text">
                                    <p>с&nbsp;гравировкой &laquo;50&nbsp;лет вместе&raquo; и&nbsp;датой.</p>
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
                <div class="text">Все изделия&nbsp;&mdash; из&nbsp;золота 585 или 750&nbsp;пробы. Возможна инкрустация бриллиантами, рубинами (рубин&nbsp;&mdash; 40-летний юбилей, но&nbsp;красиво с&nbsp;золотом). Срок изготовления&nbsp;&mdash; от&nbsp;7&nbsp;до&nbsp;21&nbsp;дня.</div>
                <div class="buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Обсудить подарок">Обсудить подарок</button>
                </div>
            </section>

            <section class="surfaces-section">
                <h2>Финишная обработка золотых и&nbsp;серебряных сувениров</h2>
                <div class="text">Для золотых и&nbsp;серебряных диадем важна приятная на&nbsp;ощупь поверхность&nbsp;&mdash; украшение контактирует с&nbsp;кожей.</div>
                <div class="surfaces swiper">
                    <div class="swiper-wrapper">
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Полированная</div>
                                    <div class="surface__text">
                                        <p>Зеркальный блеск</p>
                                        <p><strong>Для каких сувениров:</strong> Слитки, монеты, медали, кубки</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/surface-1.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Матовая</div>
                                    <div class="surface__text">
                                        <p>Бархатистая, без бликов</p>
                                        <p><strong>Для каких сувениров:</strong> Древо жизни, фигурки, современный стиль</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/surface-2.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Чернение (серебро)</div>
                                    <div class="surface__text">
                                        <p>Затемненные углубления</p>
                                        <p><strong>Для каких сувениров:</strong> Сувениры в&nbsp;русском стиле (скань, кокошники)</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/surface-3.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Горячая эмаль</div>
                                    <div class="surface__text">
                                        <p>Цветные вставки (синий, красный, зеленый, белый)</p>
                                        <p><strong>Для каких сувениров:</strong> Пасхальные яйца, гербы, цветы</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/surface-4.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Родированная</div>
                                    <div class="surface__text">
                                        <p>Защитное белое покрытие</p>
                                        <p><strong>Для каких сувениров:</strong> Серебряные сувениры (не&nbsp;темнеют)</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/surface-5.webp" alt="" width="185" height="185" loading="lazy">
                                </picture>
                            </div>
                        </div>
                        <div class="surface swiper-slide">
                            <div class="surface__inner">
                                <div class="surface__description">
                                    <div class="surface__title">Комбинированная</div>
                                    <div class="surface__text">
                                        <p>Мат основа + полированные детали</p>
                                        <p><strong>Для каких сувениров:</strong> Драконы, птицы, сложные фигурки</p>
                                    </div>
                                </div>
                                <picture class="surface__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/surface-6.webp" alt="" width="185" height="185" loading="lazy">
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

<?php
            $visible_cost_segments = array_filter($cost_segments);
            $first_cost_segment = $visible_cost_segments ? key($visible_cost_segments) : '';
            ?>
            <section class="prices-section">
                <h2>Стоимость изготовления золотых, серебряных и&nbsp;платиновых сувениров  на&nbsp;заказ</h2>
                <div class="text">Мы&nbsp;за&nbsp;прозрачность. Конечная цена складывается из&nbsp;трех простых составляющих. Вы&nbsp;можете легко прикинуть бюджет заранее, а&nbsp;наш мастер просчитает точную стоимость на&nbsp;бесплатной консультации.</div>
                <?php $prices_examples_title = 'Примеры цен изготавливаемых сувениров'; require(DIR_TEMPLATE . 'uvelirmoscow_new/template/product/manufacturing_category_prices_intro.tpl'); ?>
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
                <h2>Примеры изготовленных сувениров и&nbsp;подарков на&nbsp;заказ</h2>
                <div class="text">Ниже представлены реальные работы нашей студии. Каждый сувенир создан с&nbsp;нуля по&nbsp;индивидуальному эскизу&nbsp;&mdash; от&nbsp;классических слитков до&nbsp;эксклюзивных фигурок с&nbsp;редкими камнями. Нажмите на&nbsp;фото, чтобы увидеть детали и&nbsp;узнать историю создания.</div>
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
                <h2>Как мы&nbsp;создаём золотые и&nbsp;серебряные сувениры на&nbsp;заказ</h2>
                <div class="text">Весь путь от&nbsp;идеи до&nbsp;готового сувенира прозрачен и&nbsp;понятен. Вы&nbsp;можете участвовать в&nbsp;процессе лично или удалённо&nbsp;&mdash; мы&nbsp;снимаем каждый этап на&nbsp;фото и&nbsp;видео. От&nbsp;эскиза до&nbsp;финишной полировки&nbsp;&mdash; ваш сувенир проходит все стадии под контролем мастеров.</div>
                <div class="process swiper">
                    <div class="swiper-wrapper">
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/process-1.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Идея и&nbsp;консультация</h3>
                                    <p>Вы&nbsp;говорите повод: золотая свадьба (50&nbsp;лет), юбилей компании, бизнес-подарок VIP-клиенту, туристический сувенир, корпоративный памятный знак. Мы&nbsp;предлагаем форматы: слиток, монета, фигурка (роза, яйцо, крест, сердце, зверь), рамка, колокольчик, ложка.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/process-2.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Эскиз и&nbsp;3D-модель </h3>
                                    <p>Создаём 3D-модель будущего сувенира. Утверждаем. Для монет и&nbsp;слитков делаем модель с&nbsp;двусторонней чеканкой.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/process-3.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>3D-печать полимерной модели</h3>
                                    <p>3D-печать полимерной копии. Вы&nbsp;видите реальный размер, вес, детали.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/process-4.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Литье металла</h3>
                                    <p>Заливка расплавленного золота/серебра/платины в&nbsp;форму.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/process-5.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Обработка и&nbsp;шлифовка</h3>
                                    <p>Обработка, шлифовка, полировка.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/process-6.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Инкрустация камнями</h3>
                                    <p>Если сувенир с&nbsp;бриллиантами, рубинами, сапфирами, эмалью&nbsp;&mdash; производим закрепку.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/process-7.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Гравировка</h3>
                                    <p>Наносим имя, дату, логотип компании, надпись, герб, номер.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/process-8.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Финишная обработка</h3>
                                    <p>Полировка, мат, чернение, позолота (для серебра), родирование.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/process-9.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Пробирование и&nbsp;выдача</h3>
                                    <p>Клеймо, паспорт, сертификат (для камней). Гарантия 12&nbsp;месяцев.</p>
                                </div>
                            </div>
                        </div>
                        <div class="process-item swiper-slide">
                            <div class="process-item__inner">
                                <picture class="process-item__image">
                                    <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/souvenirs/process-10.webp" alt="" width="1010" height="595" loading="lazy">
                                </picture>
                                <div class="process-item__desription">
                                    <h3>Подарочная упаковка</h3>
                                    <p>Бархатный мешочек или коробка (в&nbsp;подарок).</p>
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
                <h2>Закажите золотой, серебряный или платиновый <br>сувенир прямо сейчас</h2>
                <div class="text">Совместно со&nbsp;всеми специалистами&nbsp;Вы сможете обсудить Ваш будущий сувенир.</div>
                <div class="consultation__buttons">
                    <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Заказать консультацию">Заказать консультацию</button>
                    <button type="button" class="btn btn--big btn--border" data-modal="#modal-2">Рассчитать стоимость</button>
                </div>
            </section>

<?php if ($faq) { ?>
            <section class="faq-section">
                <h2>Часто задаваемые вопросы об&nbsp;изготовлении сувениров из&nbsp;драгоценных металлов</h2>
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
                <h2>Изготавливаем сувениры в&nbsp;Москве&nbsp;&mdash; доставляем в&nbsp;любой город России, СНГ и&nbsp;мира</h2>
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
