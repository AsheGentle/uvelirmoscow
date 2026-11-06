<?php echo $header; ?>
<?php $asset = 'catalog/view/theme/uvelirmoscow_new/assets_new/'; ?>
<?php $page_title = !empty($add_title) ? $add_title : $name; ?>
<main>
    <section class="inner-section">
        <ul class="breadcrumbs" itemscope itemtype="https://schema.org/BreadcrumbList">
            <?php $breadcrumb_count = count($breadcrumbs); ?>
            <?php foreach ($breadcrumbs as $index => $breadcrumb) { ?>
            <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                <?php if ($index + 1 < $breadcrumb_count) { ?>
                <a href="<?php echo $breadcrumb['href']; ?>" class="breadcrumbs__link" itemprop="item">
                    <span itemprop="name"><?php echo htmlspecialchars($breadcrumb['text'], ENT_QUOTES, 'UTF-8'); ?></span>
                    <meta itemprop="position" content="<?php echo $index + 1; ?>">
                </a>
                <?php } else { ?>
                <span class="breadcrumbs__link">
                    <span itemprop="name"><?php echo htmlspecialchars($breadcrumb['text'], ENT_QUOTES, 'UTF-8'); ?></span>
                    <meta itemprop="position" content="<?php echo $index + 1; ?>">
                </span>
                <?php } ?>
            </li>
            <?php } ?>
        </ul>

        <h1><?php echo htmlspecialchars($page_title, ENT_QUOTES, 'UTF-8'); ?></h1>

        <?php if ($categories) { ?>
        <div class="articles-filters">
            <a href="<?php echo $blog_href; ?>" class="articles-filter<?php echo !$current_category_id ? ' active' : ''; ?>">Все</a>
            <?php foreach ($categories as $category) { ?>
            <a href="<?php echo $category['href']; ?>" class="articles-filter<?php echo $current_category_id == $category['id'] ? ' active' : ''; ?>"><?php echo htmlspecialchars($category['name'], ENT_QUOTES, 'UTF-8'); ?></a>
            <?php } ?>
        </div>
        <?php } ?>

        <?php if ($articles) { ?>
        <div class="articles articles--grid">
            <?php foreach ($articles as $article) { ?>
            <a href="<?php echo $article['href']; ?>" class="article">
                <picture class="article__image">
                    <img src="<?php echo $article['thumb']; ?>" alt="<?php echo htmlspecialchars($article['name'], ENT_QUOTES, 'UTF-8'); ?>" width="360" height="360" loading="lazy">
                </picture>
                <div class="article__description">
                    <div class="article__title"><?php echo htmlspecialchars($article['name'], ENT_QUOTES, 'UTF-8'); ?></div>
                    <?php if ($article['intro_text']) { ?><div class="article__text"><?php echo htmlspecialchars($article['intro_text'], ENT_QUOTES, 'UTF-8'); ?></div><?php } ?>
                    <button type="button" class="btn btn--arrow btn--medium">
                        <span>Читать статью</span>
                        <svg aria-hidden="true"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow"></use></svg>
                    </button>
                </div>
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
            return str_replace('&', '&amp;', str_replace('{page}', $target_page, str_replace('&amp;', '&', $pagination_url)));
        };
        $pagination_pages = array(1, $page_count);
        for ($page_number = max(1, $page - 1); $page_number <= min($page_count, $page + 2); $page_number++) {
            $pagination_pages[] = $page_number;
        }
        $pagination_pages = array_values(array_unique($pagination_pages));
        sort($pagination_pages);
        ?>
        <div class="pagination">
            <?php if ($page > 1) { ?><a href="<?php echo $page_href($page - 1); ?>" class="pagination__item prev" rel="prev"></a><?php } ?>
            <?php $previous_page = 0; ?>
            <?php foreach ($pagination_pages as $page_number) { ?>
            <?php if ($previous_page && $page_number - $previous_page > 1) { ?><span class="pagination__item">...</span><?php } ?>
            <?php if ($page_number == $page) { ?>
            <span class="pagination__item current" aria-current="page"><?php echo $page_number; ?></span>
            <?php } else { ?>
            <a href="<?php echo $page_href($page_number); ?>" class="pagination__item"><?php echo $page_number; ?></a>
            <?php } ?>
            <?php $previous_page = $page_number; ?>
            <?php } ?>
            <?php if ($page < $page_count) { ?><a href="<?php echo $page_href($page + 1); ?>" class="pagination__item next" rel="next"></a><?php } ?>
        </div>
        <?php } ?>
        <?php } else { ?>
        <p><?php echo $text_empty; ?></p>
        <?php } ?>
    </section>
</main>
<?php echo $footer; ?>
