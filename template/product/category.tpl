<?php echo $header; ?>
<main>
    <section class="products-section">
        <ul class="breadcrumbs" itemscope itemtype="https://schema.org/BreadcrumbList">
            <?php $breadcrumb_count = count($breadcrumbs); ?>
            <?php foreach ($breadcrumbs as $index => $breadcrumb) { ?>
            <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                <?php if ($index + 1 < $breadcrumb_count) { ?>
                <a href="<?php echo htmlspecialchars($breadcrumb['href'], ENT_QUOTES, 'UTF-8'); ?>" class="breadcrumbs__link" itemprop="item">
                    <span itemprop="name"><?php echo htmlspecialchars($breadcrumb['text'], ENT_QUOTES, 'UTF-8'); ?></span>
                </a>
                <?php } else { ?>
                <span class="breadcrumbs__link"><span itemprop="name"><?php echo htmlspecialchars($breadcrumb['text'], ENT_QUOTES, 'UTF-8'); ?></span></span>
                <?php } ?>
                <meta itemprop="position" content="<?php echo $index + 1; ?>">
            </li>
            <?php } ?>
        </ul>

        <h1><?php echo $heading_title; ?></h1>
        <?php echo $content_top; ?>

        <div class="catalog">
            <?php if ($column_left) { ?>
            <div class="catalog-aside"><?php echo $column_left; ?></div>
            <?php } ?>

            <div class="catalog-wrap">
                <?php if ($categories) { ?>
                <div class="catalog-categories">
                    <div class="catalog-categories__list">
                        <?php foreach ($categories as $category) { ?>
                        <?php if (!$category['material']) { ?>
                        <a href="<?php echo htmlspecialchars($category['href'], ENT_QUOTES, 'UTF-8'); ?>" class="catalog-categories__link">
                            <span><?php echo $category['short_description'] ? $category['short_description'] : htmlspecialchars($category['name'], ENT_QUOTES, 'UTF-8'); ?></span>
                            <img src="<?php echo htmlspecialchars($category['thumb'], ENT_QUOTES, 'UTF-8'); ?>" alt="<?php echo htmlspecialchars($category['name'], ENT_QUOTES, 'UTF-8'); ?>" width="60" height="60" loading="lazy">
                        </a>
                        <?php } ?>
                        <?php } ?>
                    </div>
                </div>
                <?php } ?>

                <div class="catalog-settings">
                    <?php if ($column_left) { ?>
                    <button type="button" class="filter-toggle">
                        <span class="filter-toggle__icon"><svg aria-hidden="true"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#filter" /></svg></span>
                        <span>Фильтры</span>
                    </button>
                    <?php } ?>
                    <div class="catalog-sorting">
                        <select class="catalog-sorting__select" onchange="location = this.value;">
                            <?php foreach ($sorts as $sort_item) { ?>
                            <option value="<?php echo $sort_item['href']; ?>"<?php echo ($sort_item['sort'] == $sort && $sort_item['order'] == $order) ? ' selected="selected"' : ''; ?>><?php echo htmlspecialchars($sort_item['text'], ENT_QUOTES, 'UTF-8'); ?></option>
                            <?php } ?>
                        </select>
                        <select class="catalog-sorting__select" onchange="location = this.value;">
                            <?php foreach ($limits as $limit_item) { ?>
                            <option value="<?php echo $limit_item['href']; ?>"<?php echo ($limit_item['value'] == $limit) ? ' selected="selected"' : ''; ?>><?php echo $limit_item['text']; ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="catalog-views">
                        <button type="button" class="catalog-view" data-catalog="list">
                            <svg role="img" aria-label="Список"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#list" /></svg>
                        </button>
                        <button type="button" class="catalog-view active" data-catalog="grid">
                            <svg role="img" aria-label="Карточки"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#grid" /></svg>
                        </button>
                    </div>
                </div>

                <?php
                $popular_links = array();
                if (!empty($hand_links_fv['top'])) {
                    preg_match_all('~<a\s+href="([^"]+)"[^>]*>\s*<span>(.*?)</span>\s*</a>~si', $hand_links_fv['top'], $popular_links, PREG_SET_ORDER);
                }
                ?>
                <?php if ($popular_links) { ?>
                <div class="catalog-populars">
                    <div class="catalog-populars__title">Популярные запросы:</div>
                    <div class="catalog-populars__list">
                        <?php foreach ($popular_links as $popular_link) { ?>
                        <a href="<?php echo $popular_link[1]; ?>" class="catalog-populars__link"><?php echo $popular_link[2]; ?></a>
                        <?php } ?>
                    </div>
                    <button type="button" class="catalog-populars__more">Показать еще</button>
                </div>
                <?php } ?>

                <?php if ($products) { ?>
                <div class="catalog-list grid">
                    <?php foreach ($products as $product) { ?>
                    <?php $product_name = html_entity_decode($product['name'], ENT_QUOTES, 'UTF-8'); ?>
                    <div class="item" itemscope itemtype="https://schema.org/Product">
                        <div class="item__buttons">
                            <a href="<?php echo htmlspecialchars($product['href'], ENT_QUOTES, 'UTF-8'); ?>" class="btn btn--prices">Рассчитать стоимость</a>
                            <button type="button" class="item__favorite" data-wishlist-product-id="<?php echo (int)$product['product_id']; ?>" onclick="wishlist.add('<?php echo (int)$product['product_id']; ?>');">
                                <span>В избранное</span>
                                <svg aria-hidden="true"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#favorite" /></svg>
                            </button>
                            <a href="<?php echo htmlspecialchars($product['href'], ENT_QUOTES, 'UTF-8'); ?>" class="btn btn--border btn--dark btn--item-more">Подробнее</a>
                        </div>
                        <a href="<?php echo htmlspecialchars($product['href'], ENT_QUOTES, 'UTF-8'); ?>" class="item__image" itemprop="url">
                            <img src="<?php echo htmlspecialchars($product['thumb'], ENT_QUOTES, 'UTF-8'); ?>" alt="<?php echo htmlspecialchars($product_name, ENT_QUOTES, 'UTF-8'); ?>" width="235" height="235" loading="lazy" itemprop="image">
                        </a>
                        <div class="item__description">
                            <a href="<?php echo htmlspecialchars($product['href'], ENT_QUOTES, 'UTF-8'); ?>" class="item__title" itemprop="name"><?php echo htmlspecialchars($product_name, ENT_QUOTES, 'UTF-8'); ?></a>
                            <?php if ($product['price']) { ?>
                            <div class="item__price" itemprop="offers" itemscope itemtype="https://schema.org/Offer">
                                <span><?php echo $product['special'] ? $product['special'] : $product['price']; ?></span>
                                <meta itemprop="priceCurrency" content="RUB">
                                <link itemprop="availability" href="https://schema.org/InStock">
                                <div class="tooltip">
                                    <div class="tooltip__icon">
                                        <svg class="tooltip__svg" role="img" aria-label="Подсказка"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#tooltip" /></svg>
                                        <svg class="tooltip__svg-hover" role="img" aria-label="Подсказка"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#tooltip-fill" /></svg>
                                    </div>
                                    <div class="tooltip__text">Цена на сайте носит информационный характер. Актуальную стоимость уточняйте у менеджера.</div>
                                </div>
                            </div>
                            <?php } ?>
                            <?php if ($product['price_works']) { ?>
                            <div class="item__price-sub"><?php echo $product['price_works']; ?> с материалами заказчика</div>
                            <?php } ?>
                            <div class="item__prices">
                                <?php if ($product['price_works']) { ?>
                                <div class="item__prices-item">
                                    <span>Работа: <?php echo $product['price_works']; ?></span>
                                    <div class="tooltip">
                                        <div class="tooltip__icon">
                                            <svg class="tooltip__svg" role="img" aria-label="Подсказка"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#tooltip" /></svg>
                                            <svg class="tooltip__svg-hover" role="img" aria-label="Подсказка"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#tooltip-fill" /></svg>
                                        </div>
                                        <div class="tooltip__text">Стоимость работы из материалов заказчика.</div>
                                    </div>
                                </div>
                                <?php } ?>
                                <div class="item__prices-item">
                                    <span>Цена зависит от курса</span>
                                    <div class="tooltip">
                                        <div class="tooltip__icon">
                                            <svg class="tooltip__svg" role="img" aria-label="Подсказка"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#price" /></svg>
                                            <svg class="tooltip__svg-hover" role="img" aria-label="Подсказка"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#price-fill" /></svg>
                                        </div>
                                        <div class="tooltip__text">Цена на сайте носит информационный характер. Из-за изменения стоимости металлов актуальная цена может отличаться.</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                </div>

                <?php if ($page_count > 1) { ?>
                <?php
                $pagination_url = str_replace('%7Bpage%7D', '{page}', $pagination_url);
                $page_href = function($target_page) use ($pagination_url) {
                    if ($target_page == 1) {
                        return str_replace('&', '&amp;', rtrim(str_replace('page={page}', '', str_replace('&amp;', '&', $pagination_url)), '?&'));
                    }
                    return str_replace('{page}', $target_page, $pagination_url);
                };
                $pagination_pages = array(1, $page_count);
                for ($page_number = max(1, $page - 1); $page_number <= min($page_count, $page + 2); $page_number++) {
                    $pagination_pages[] = $page_number;
                }
                $pagination_pages = array_values(array_unique($pagination_pages));
                sort($pagination_pages);
                ?>
                <div class="catalog-pagination">
                    <?php if ($page < $page_count) { ?>
                    <a href="<?php echo $page_href($page + 1); ?>" class="btn btn--border btn--dark btn--big">Показать еще</a>
                    <?php } ?>
                    <div class="pagination">
                        <?php if ($page > 1) { ?>
                        <a href="<?php echo $page_href($page - 1); ?>" class="pagination__item prev" rel="prev"></a>
                        <?php } ?>
                        <?php $previous_page = 0; ?>
                        <?php foreach ($pagination_pages as $page_number) { ?>
                        <?php if ($previous_page && $page_number - $previous_page > 1) { ?>
                        <span class="pagination__item">...</span>
                        <?php } ?>
                        <?php if ($page_number == $page) { ?>
                        <span class="pagination__item current" aria-current="page"><?php echo $page_number; ?></span>
                        <?php } else { ?>
                        <a href="<?php echo $page_href($page_number); ?>" class="pagination__item"><?php echo $page_number; ?></a>
                        <?php } ?>
                        <?php $previous_page = $page_number; ?>
                        <?php } ?>
                        <?php if ($page < $page_count) { ?>
                        <a href="<?php echo $page_href($page + 1); ?>" class="pagination__item next" rel="next"></a>
                        <?php } ?>
                    </div>
                </div>
                <?php } ?>
                <?php } else { ?>
                <div class="catalog-empty">
                    <p><?php echo $text_empty; ?></p>
                    <a href="<?php echo $continue; ?>" class="btn btn--border btn--dark"><?php echo $button_continue; ?></a>
                </div>
                <?php } ?>

                <div class="catalog-showcases">
                    <div class="catalog-showcase">
                        <div class="catalog-showcase__description">
                            <div class="catalog-showcase__title">Не&nbsp;нашли идеальную модель?</div>
                            <div class="catalog-showcase__text">Изготовим индивидуально под Ваш запрос</div>
                            <a href="<?php echo $manufacturing_category_href; ?>" class="btn btn--more btn--fill">
                                <svg role="img" aria-label="Подробнее"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#arrow-long"></use></svg>
                            </a>
                        </div>
                        <picture class="catalog-showcase__image">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/catalog-showcase-1.webp" alt="" width="125" height="125" loading="lazy">
                        </picture>
                    </div>
                    <div class="catalog-showcase">
                        <div class="catalog-showcase__description">
                            <div class="catalog-showcase__title">Примеры работ</div>
                            <div class="catalog-showcase__text">Смотрите реальные фото изготовленных украшений</div>
                            <a href="<?php echo $our_project_href; ?>" class="btn btn--more btn--fill">
                                <svg role="img" aria-label="Подробнее"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#arrow-long"></use></svg>
                            </a>
                        </div>
                        <picture class="catalog-showcase__image">
                            <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/content/catalog-showcase-2.webp" alt="" width="125" height="125" loading="lazy">
                        </picture>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <?php echo $ocd_viewed; ?>

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
                            <p>Восковая модель будущего украшения выращивается на высокоточном 3D-принтере&nbsp;&mdash; точная копия для дальнейшего литья.</p>
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
                            <p>Мастер закрепляет каждый камень в&nbsp;оправе, работая с&nbsp;микроскопом, чтобы крепление было надежным и&nbsp;красивым.</p>
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

    <?php if ($description) { ?>
    <section class="text-section"><?php echo $description; ?></section>
    <?php } ?>
</main>
<?php echo $footer; ?>
