<?php echo $header; ?>
<main>
    <section class="products-section">
        <ul class="breadcrumbs" itemscope itemtype="https://schema.org/BreadcrumbList">
            <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                <a href="<?php echo $home_href; ?>" class="breadcrumbs__link" itemprop="item">
                    <span itemprop="name">Главная</span>
                    <meta itemprop="position" content="1">
                </a>
            </li>
            <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                <span class="breadcrumbs__link">
                    <span itemprop="name"><?php echo htmlspecialchars($breadcrumb_title, ENT_QUOTES, 'UTF-8'); ?></span>
                    <meta itemprop="position" content="2">
                </span>
            </li>
        </ul>

        <h1><?php echo htmlspecialchars($heading_title, ENT_QUOTES, 'UTF-8'); ?></h1>
        <div id="viewed-products" class="viewed-products" aria-live="polite"></div>
    </section>
</main>
<?php echo $footer; ?>
