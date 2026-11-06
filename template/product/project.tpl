<?php echo $header; ?>
<?php $asset = 'catalog/view/theme/uvelirmoscow_new/assets_new/'; ?>
<main>
    <section class="inner-section">
        <ul class="breadcrumbs" itemscope itemtype="https://schema.org/BreadcrumbList">
			<?php $breadcrumb_count = count($breadcrumbs); ?>
			<?php foreach ($breadcrumbs as $position => $breadcrumb) { ?>
            <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
				<?php if ($position + 1 === $breadcrumb_count) { ?>
                <span class="breadcrumbs__link">
					<span itemprop="name"><?php echo htmlspecialchars($breadcrumb['text'], ENT_QUOTES, 'UTF-8'); ?></span>
					<meta itemprop="position" content="<?php echo $position + 1; ?>">
                </span>
				<?php } else { ?>
				<a href="<?php echo htmlspecialchars($breadcrumb['href'], ENT_QUOTES, 'UTF-8'); ?>" class="breadcrumbs__link" itemprop="item"><span itemprop="name"><?php echo htmlspecialchars($breadcrumb['text'], ENT_QUOTES, 'UTF-8'); ?></span><meta itemprop="position" content="<?php echo $position + 1; ?>"></a>
				<?php } ?>
            </li>
			<?php } ?>
        </ul>

        <div class="work">
            <div class="work__gallery">
                <div class="work-image swiper">
                    <div class="swiper-wrapper">
                        <?php foreach ($images as $image) { ?>
                        <div class="work-image__item swiper-slide">
                            <a href="<?php echo $image['popup']; ?>" data-fancybox="product">
                                <img src="<?php echo $image['image']; ?>" alt="<?php echo htmlspecialchars($heading_title, ENT_QUOTES, 'UTF-8'); ?>" width="620" height="620">
                            </a>
                        </div>
                        <?php } ?>
                    </div>
                </div>
                <div class="work-thumbs-wrap">
                    <div class="work-thumbs swiper">
                        <div class="swiper-wrapper">
                            <?php foreach ($images as $image) { ?>
                            <div class="work-thumbs__item swiper-slide">
                                <img src="<?php echo $image['thumb']; ?>" alt="<?php echo htmlspecialchars($heading_title, ENT_QUOTES, 'UTF-8'); ?>" width="100" height="100">
                            </div>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="swiper-button-next"></div>
                </div>
            </div>
            <div class="work__content">
                <h1><?php echo htmlspecialchars($heading_title, ENT_QUOTES, 'UTF-8'); ?></h1>
                <?php if ($description) { ?><div class="work__text"><?php echo $description; ?></div><?php } ?>
                <?php if ($product_href) { ?><a href="<?php echo $product_href; ?>" class="btn btn--big btn--border btn--dark">Смотреть в&nbsp;каталоге</a><?php } ?>
            </div>
        </div>

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
                    <img src="<?php echo $asset; ?>images/content/catalog-showcase-1.webp" alt="" width="125" height="125">
                </picture>
            </div>
            <div class="catalog-showcase">
                <div class="catalog-showcase__description">
                    <div class="catalog-showcase__title">Каталог</div>
                    <div class="catalog-showcase__text">Посмотрите украшения в каталоге</div>
                    <a href="<?php echo $catalog_href; ?>" class="btn btn--more btn--fill">
                        <svg role="img" aria-label="Подробнее"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-long"></use></svg>
                    </a>
                </div>
                <picture class="catalog-showcase__image">
                    <img src="<?php echo $asset; ?>images/content/catalog-showcase-2.webp" alt="" width="125" height="125">
                </picture>
            </div>
        </div>
    </section>

    <section class="consultation-section">
        <h2>Приглашаем в&nbsp;нашу дизайн-студию <br>в&nbsp;центре Москвы!</h2>
        <div class="text">Совместно со&nbsp;всеми специалистами&nbsp;Вы сможете обсудить Ваше будущее украшение.</div>
        <div class="consultation__buttons">
            <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Заказать консультацию">Заказать консультацию</button>
            <button type="button" class="btn btn--big btn--border" data-modal="#modal-2">Рассчитать стоимость</button>
        </div>
    </section>

    <?php if ($related_projects) { ?>
    <section class="examples-section examples-section--slider">
        <h2>Вас может заинтересовать</h2>
        <div class="examples swiper">
            <div class="swiper-wrapper">
                <?php foreach ($related_projects as $related) { ?>
                <div class="example swiper-slide">
                    <a href="<?php echo $related['href']; ?>" class="example__item">
                        <picture class="example__image">
                            <img src="<?php echo $related['thumb']; ?>" alt="<?php echo htmlspecialchars($related['name'], ENT_QUOTES, 'UTF-8'); ?>" width="490" height="490" loading="lazy">
                        </picture>
                        <div class="example__text"><span><?php echo htmlspecialchars($related['name'], ENT_QUOTES, 'UTF-8'); ?></span></div>
                    </a>
                </div>
                <?php } ?>
            </div>
            <div class="swiper-buttons">
                <a href="<?php echo $works_href; ?>" class="btn btn--big btn--border btn--dark">Смотреть все работы</a>
                <div class="swiper-button-prev"></div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-next"></div>
            </div>
        </div>
    </section>
    <?php } ?>
</main>
<?php echo $footer; ?>
