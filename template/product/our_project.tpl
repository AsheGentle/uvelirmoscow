<?php echo $header; ?>
<?php $asset = 'catalog/view/theme/uvelirmoscow_new/assets_new/'; ?>
<main>
    <section class="inner-section">
        <ul class="breadcrumbs" itemscope itemtype="https://schema.org/BreadcrumbList">
            <?php $breadcrumb_count = count($breadcrumbs); ?>
            <?php foreach ($breadcrumbs as $index => $breadcrumb) { ?>
            <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                <?php if ($index + 1 < $breadcrumb_count) { ?>
                <a href="<?php echo htmlspecialchars(html_entity_decode($breadcrumb['href'], ENT_QUOTES, 'UTF-8'), ENT_QUOTES, 'UTF-8'); ?>" class="breadcrumbs__link" itemprop="item">
                    <span itemprop="name"><?php echo htmlspecialchars(html_entity_decode($breadcrumb['text'], ENT_QUOTES, 'UTF-8'), ENT_QUOTES, 'UTF-8'); ?></span>
                </a>
                <?php } else { ?>
                <span class="breadcrumbs__link"><span itemprop="name"><?php echo htmlspecialchars(html_entity_decode($breadcrumb['text'], ENT_QUOTES, 'UTF-8'), ENT_QUOTES, 'UTF-8'); ?></span></span>
                <?php } ?>
                <meta itemprop="position" content="<?php echo $index + 1; ?>">
            </li>
            <?php } ?>
        </ul>

        <h1><?php echo htmlspecialchars(html_entity_decode($heading_title, ENT_QUOTES, 'UTF-8'), ENT_QUOTES, 'UTF-8'); ?></h1>

        <?php if ($categories) { ?>
        <div class="catalog-categories">
            <div class="catalog-categories__list">
                <?php foreach ($categories as $category) { ?>
                <a href="<?php echo $category['href']; ?>" class="catalog-categories__link">
                    <span><?php echo htmlspecialchars($category['name'], ENT_QUOTES, 'UTF-8'); ?></span>
                    <img src="<?php echo $category['thumb']; ?>" alt="<?php echo htmlspecialchars($category['name'], ENT_QUOTES, 'UTF-8'); ?>" width="60" height="60" loading="lazy">
                </a>
                <?php } ?>
            </div>
        </div>
        <?php } ?>

        <?php if ($products) { ?>
        <div class="examples examples--grid">
            <?php foreach ($products as $product) { ?>
            <a href="<?php echo $product['href']; ?>" class="example__item">
                <picture class="example__image">
                    <img src="<?php echo $product['thumb']; ?>" alt="<?php echo htmlspecialchars($product['name'], ENT_QUOTES, 'UTF-8'); ?>" width="490" height="490" loading="lazy">
                </picture>
                <div class="example__text"><span><?php echo htmlspecialchars($product['name'], ENT_QUOTES, 'UTF-8'); ?></span></div>
            </a>
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
        <?php } ?>
        <?php } ?>

        <div class="catalog-showcases">
            <div class="catalog-showcase">
                <div class="catalog-showcase__description">
                    <div class="catalog-showcase__title">Хотите такое же?</div>
                    <div class="catalog-showcase__text">Закажите изготовление</div>
                    <a href="<?php echo $manufacturing_href; ?>" class="btn btn--more btn--fill">
                        <svg role="img" aria-label="Подробнее"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-long"></use></svg>
                    </a>
                </div>
                <picture class="catalog-showcase__image">
                    <img src="<?php echo $asset; ?>images/content/catalog-showcase-1.webp" alt="" width="125" height="125" loading="lazy">
                </picture>
            </div>
            <div class="catalog-showcase">
                <div class="catalog-showcase__description">
                    <div class="catalog-showcase__title">Примеры работ</div>
                    <div class="catalog-showcase__text">Смотрите реальные фото изготовленных украшений</div>
                    <a href="<?php echo $catalog_href; ?>" class="btn btn--more btn--fill">
                        <svg role="img" aria-label="Подробнее"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-long"></use></svg>
                    </a>
                </div>
                <picture class="catalog-showcase__image">
                    <img src="<?php echo $asset; ?>images/content/catalog-showcase-2.webp" alt="" width="125" height="125" loading="lazy">
                </picture>
            </div>
        </div>
    </section>
</main>
<?php echo $footer; ?>
