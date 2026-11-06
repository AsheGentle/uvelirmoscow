<?php echo $header; ?>
<main>
    <section class="inner-section">
        <ul class="breadcrumbs" itemscope itemtype="https://schema.org/BreadcrumbList">
            <?php foreach ($breadcrumbs as $index => $breadcrumb) { ?>
            <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                <?php if ($index + 1 < count($breadcrumbs)) { ?>
                <a href="<?php echo htmlspecialchars(html_entity_decode($breadcrumb['href'], ENT_QUOTES, 'UTF-8'), ENT_QUOTES, 'UTF-8'); ?>" class="breadcrumbs__link" itemprop="item">
                    <span itemprop="name"><?php echo htmlspecialchars($breadcrumb['text'], ENT_QUOTES, 'UTF-8'); ?></span><meta itemprop="position" content="<?php echo $index + 1; ?>">
                </a>
                <?php } else { ?>
                <span class="breadcrumbs__link"><span itemprop="name"><?php echo htmlspecialchars($breadcrumb['text'], ENT_QUOTES, 'UTF-8'); ?></span><meta itemprop="position" content="<?php echo $index + 1; ?>"></span>
                <?php } ?>
            </li>
            <?php } ?>
        </ul>
        <h1><?php echo htmlspecialchars($heading_title, ENT_QUOTES, 'UTF-8'); ?></h1>
        <div class="text">Наши обзоры&nbsp;&mdash; это не&nbsp;просто красивые видео, а&nbsp;демонстрация настоящего мастерства. Если вы&nbsp;увидели в&nbsp;шортсе что-то вдохновляющее, переходите в&nbsp;разделы, где можно заказать точно такое&nbsp;же изделие или воплотить собственную идею.</div>

        <?php if ($items) { ?>
        <div class="about-videos about-videos--grid">
            <?php foreach ($items as $item) { ?>
            <div class="about-video">
                <a href="<?php echo htmlspecialchars($item['video'], ENT_QUOTES, 'UTF-8'); ?>" class="about-video__inner" data-fancybox="about-videos" data-type="iframe" data-width="450" data-height="800" data-autosize="true">
                    <img src="<?php echo htmlspecialchars($item['preview'], ENT_QUOTES, 'UTF-8'); ?>" alt="Видео." width="282" height="505" loading="lazy">
                </a>
            </div>
            <?php } ?>
        </div>
        <?php } ?>

        <?php if ($page_count > 1) { ?>
        <?php
        $page_href = function($target_page) use ($pagination_url) {
            $href = $target_page == 1 ? rtrim(str_replace('page={page}', '', $pagination_url), '?&') : str_replace('{page}', $target_page, $pagination_url);
            return htmlspecialchars($href, ENT_QUOTES, 'UTF-8');
        };
        $pages = array(1, $page_count);
        for ($number = max(1, $page - 1); $number <= min($page_count, $page + 2); $number++) $pages[] = $number;
        $pages = array_values(array_unique($pages));
        sort($pages);
        ?>
        <div class="pagination">
            <?php if ($page > 1) { ?><a href="<?php echo $page_href($page - 1); ?>" class="pagination__item prev" rel="prev"></a><?php } ?>
            <?php $previous = 0; foreach ($pages as $number) { ?>
            <?php if ($previous && $number - $previous > 1) { ?><span class="pagination__item">...</span><?php } ?>
            <?php if ($number == $page) { ?>
            <span class="pagination__item current" aria-current="page"><?php echo $number; ?></span>
            <?php } else { ?>
            <a href="<?php echo $page_href($number); ?>" class="pagination__item"><?php echo $number; ?></a>
            <?php } ?>
            <?php $previous = $number; } ?>
            <?php if ($page < $page_count) { ?><a href="<?php echo $page_href($page + 1); ?>" class="pagination__item next" rel="next"></a><?php } ?>
        </div>
        <?php } ?>

        <div class="buttons">
            <a href="/katalog" class="btn btn--big">Перейти в&nbsp;каталог</a>
            <a href="/uslugi/izgotovlenie" class="btn btn--big">Заказать изготовление</a>
            <a href="/o-studii/nashi-raboty" class="btn btn--big">Посмотреть портфолио</a>
        </div>
    </section>
</main>
<?php echo $footer; ?>
