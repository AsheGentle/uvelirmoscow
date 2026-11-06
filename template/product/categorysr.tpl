<?php echo $header; ?>
        <main>
            <section class="products-section">
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
				<h1><?php echo htmlspecialchars($heading_title, ENT_QUOTES, 'UTF-8'); ?></h1>
                <div class="text">Каталог содержит в&nbsp;себе коллекцию украшений, которые мы&nbsp;создали для наших клиентов. Все представленные модели реально изготовлены в&nbsp;нашей студии. Вы&nbsp;можете ознакомиться с&nbsp;дизайном, материалами и&nbsp;подходящими вставками, а&nbsp;также увидеть ориентировочную стоимость изготовления (цена указана с&nbsp;учётом текущего курса металла и&nbsp;работы мастера). Выбирайте понравившееся изделие или используйте его как референс для собственного заказа&nbsp;&mdash; мы&nbsp;сделаем украшение по&nbsp;вашему размеру, пробе и&nbsp;дизайну.</div>
                <div class="products">
                    <?php foreach ($catalog_categories as $category) { ?>
                    <div class="products__item">
                        <div class="products__description">
                            <h2><a href="<?php echo htmlspecialchars($category['href'], ENT_QUOTES, 'UTF-8'); ?>"><?php echo htmlspecialchars($category['name'], ENT_QUOTES, 'UTF-8'); ?></a></h2>
                            <picture class="products__image">
                                <img src="<?php echo htmlspecialchars($category['image'], ENT_QUOTES, 'UTF-8'); ?>" alt="<?php echo htmlspecialchars($category['name'], ENT_QUOTES, 'UTF-8'); ?>" width="327" height="327" loading="lazy">
                            </picture>
                        </div>
                        <?php if ($category['children']) { ?>
                        <div class="products__toggle">Показать все категории </div>
                        <div class="products__list">
                            <?php foreach ($category['children'] as $child) { ?>
                            <a href="<?php echo htmlspecialchars($child['href'], ENT_QUOTES, 'UTF-8'); ?>" class="products__link"><?php echo htmlspecialchars($child['name'], ENT_QUOTES, 'UTF-8'); ?></a>
                            <?php } ?>
                        </div>
                        <?php } ?>
                    </div>
                    <?php } ?>
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

            <section class="description-section">
                <h2>Что делать, если понравилось изделие из&nbsp;каталога?</h2>
                <p>Просто свяжитесь с&nbsp;нами. Все украшения в&nbsp;каталоге&nbsp;&mdash; это не&nbsp;&laquo;картинки для примера&raquo;, а&nbsp;реальные работы, выполненные в&nbsp;нашей ювелирной студии. Вы&nbsp;можете заказать точно такое&nbsp;же изделие или использовать его как референс для создания эксклюзивного украшения.</p>

                <h3>Как это работает?</h3>
                <div class="description-blocks description-blocks-4">
                    <div class="description-blocks__item" style="background-image: url('catalog/view/theme/uvelirmoscow_new/assets_new/images/design/description-bg-1.webp');">
                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-link.svg" alt="" width="48" height="48">
                        <p>Вы&nbsp;присылаете ссылку на&nbsp;понравившееся изделие.</p>
                    </div>
                    <div class="description-blocks__item" style="background-image: url('catalog/view/theme/uvelirmoscow_new/assets_new/images/design/description-bg-2.webp');">
                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-task-square.svg" alt="" width="48" height="48">
                        <p>Мы&nbsp;уточняем ваш размер (кольца, браслета, цепочки), желаемую пробу металла (золото 585/750, серебро 925, платина) и&nbsp;параметры камней.</p>
                    </div>
                    <div class="description-blocks__item" style="background-image: url('catalog/view/theme/uvelirmoscow_new/assets_new/images/design/description-bg-3.webp');">
                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-box-circle.svg" alt="" width="48" height="48">
                        <p>Готовим индивидуальную 3D-модель и&nbsp;согласовываем окончательную цену.</p>
                    </div>
                    <div class="description-blocks__item" style="background-image: url('catalog/view/theme/uvelirmoscow_new/assets_new/images/design/description-bg-4.webp');">
                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-making.svg" alt="" width="48" height="48">
                        <p>Изготавливаем украшение&nbsp;&mdash; обычно от&nbsp;5&nbsp;до&nbsp;14&nbsp;дней.</p>
                    </div>
                </div>

                <h2>Цены в&nbsp;каталоге&nbsp;&mdash; реальные, но&nbsp;могут измениться</h2>
                <p>Стоимость, которую вы&nbsp;видите в&nbsp;карточке товара, рассчитана под конкретный размер и&nbsp;вес металла. Для вашего заказа цена может незначительно отличаться (в&nbsp;большую или меньшую сторону). Мы&nbsp;пересчитываем стоимость индивидуально под каждое украшение&nbsp;&mdash; никаких &laquo;средних&raquo; цифр.</p>

                <h2>Зачем вам наш каталог, если можно купить готовое?</h2>
                <p>В&nbsp;магазине вы&nbsp;покупаете&nbsp;то, что уже есть на&nbsp;витрине: конкретный размер, пробу и&nbsp;дизайн. В&nbsp;нашем каталоге вы&nbsp;выбираете образец, а&nbsp;получаете изделие, изготовленное лично под вас. Ниже&nbsp;&mdash; три причины, почему это выгоднее.</p>
                <div class="description-blocks description-blocks-3">
                    <div class="description-blocks__item">
                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-ring.svg" alt="" width="48" height="48">
                        <p class="title">Индивидуальность:</p>
                        <p>Готовое изделие носят десятки других людей. В&nbsp;нашем каталоге вы&nbsp;выбираете образец, а&nbsp;получаете украшение, сделанное лично под вас.</p>
                    </div>
                    <div class="description-blocks__item">
                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-expertise.svg" alt="" width="48" height="48">
                        <p class="title">Любые размеры и&nbsp;пробы:</p>
                        <p>Магазины ограничены тем, что есть на&nbsp;витрине. У&nbsp;нас нет стоковых остатков&nbsp;&mdash; мы&nbsp;делаем нужный размер и&nbsp;любую пробу металла.</p>
                    </div>
                    <div class="description-blocks__item">
                        <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-check.svg" alt="" width="48" height="48">
                        <p class="title">Прямая работа без наценок:</p>
                        <p>Вы&nbsp;заказываете напрямую в&nbsp;ювелирной студии, минуя розничные наценки.</p>
                    </div>
                </div>

                <p>Готовы обсудить заказ? Приезжайте в&nbsp;шоурум на&nbsp;<a href="/o-studii/kontakty">Кузнецкий мост, д.&nbsp;7, стр.&nbsp;3</a>&nbsp;или оставьте заявку на&nbsp;сайте. Сделаем украшение, которое вы&nbsp;искали.</p>
            </section>
        </main>
<?php echo $footer; ?>
