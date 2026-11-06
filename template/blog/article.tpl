<?php echo $header; ?>
<?php $asset = 'catalog/view/theme/uvelirmoscow_new/assets_new/'; ?>
<main>
    <section class="inner-section">
        <ul class="breadcrumbs" itemscope itemtype="https://schema.org/BreadcrumbList">
            <?php $breadcrumb_count = count($breadcrumbs); ?>
            <?php foreach ($breadcrumbs as $index => $breadcrumb) { ?>
            <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                <?php if ($index + 1 < $breadcrumb_count) { ?>
				<a href="<?php echo htmlspecialchars($breadcrumb['href'], ENT_QUOTES, 'UTF-8'); ?>" class="breadcrumbs__link" itemprop="item">
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

        <div class="article-page">
            <div class="article-page__content">
                <h1><?php echo htmlspecialchars($heading_title, ENT_QUOTES, 'UTF-8'); ?></h1>
                <div class="article-page__text"><?php echo $description; ?></div>
            </div>
            <picture class="article-page__image">
                <img src="<?php echo $thumb; ?>" alt="<?php echo htmlspecialchars($heading_title, ENT_QUOTES, 'UTF-8'); ?>" width="560" height="560">
            </picture>
        </div>

        <?php if (!empty($article_links)) { ?>
        <div class="article-nav">
            <?php if (!empty($article_links['prev'])) { ?>
            <a href="<?php echo $article_links['prev']['link']; ?>" class="article-nav__item prev">
                <div class="article-nav__arrow">
                    <svg aria-hidden="true"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-left"></use></svg>
                </div>
                <div class="article-nav__info">
                    <div class="article-nav__label">Предыдущая статья</div>
                    <div class="article-nav__title"><?php echo htmlspecialchars($article_links['prev']['name'], ENT_QUOTES, 'UTF-8'); ?></div>
                </div>
            </a>
            <?php } ?>
            <?php if (!empty($article_links['next'])) { ?>
            <a href="<?php echo $article_links['next']['link']; ?>" class="article-nav__item next">
                <div class="article-nav__info">
                    <div class="article-nav__label">Следующая статья</div>
                    <div class="article-nav__title"><?php echo htmlspecialchars($article_links['next']['name'], ENT_QUOTES, 'UTF-8'); ?></div>
                </div>
                <div class="article-nav__arrow">
                    <svg aria-hidden="true"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-right"></use></svg>
                </div>
            </a>
            <?php } ?>
        </div>
        <?php } ?>
    </section>
</main>
<?php echo $footer; ?>
