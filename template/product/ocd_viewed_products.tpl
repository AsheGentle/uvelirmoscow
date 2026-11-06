<?php if ($products) { ?>
<div class="catalog-list grid">
    <?php foreach ($products as $product) { ?>
    <div class="item" itemscope itemtype="https://schema.org/Product">
        <div class="item__buttons">
            <a href="<?php echo htmlspecialchars($product['href'], ENT_QUOTES, 'UTF-8'); ?>" class="btn btn--prices">Рассчитать стоимость</a>
            <button type="button" class="item__favorite" data-wishlist-product-id="<?php echo (int)$product['product_id']; ?>" onclick="wishlist.add('<?php echo (int)$product['product_id']; ?>');">
                <span>В избранное</span>
                <svg aria-hidden="true"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#favorite"></use></svg>
            </button>
            <a href="<?php echo htmlspecialchars($product['href'], ENT_QUOTES, 'UTF-8'); ?>" class="btn btn--border btn--dark btn--item-more">Подробнее</a>
        </div>
        <a href="<?php echo htmlspecialchars($product['href'], ENT_QUOTES, 'UTF-8'); ?>" class="item__image" itemprop="url">
            <img src="<?php echo htmlspecialchars($product['thumb'], ENT_QUOTES, 'UTF-8'); ?>" alt="<?php echo htmlspecialchars($product['name'], ENT_QUOTES, 'UTF-8'); ?>" width="235" height="235" loading="lazy" itemprop="image">
        </a>
        <div class="item__description">
            <a href="<?php echo htmlspecialchars($product['href'], ENT_QUOTES, 'UTF-8'); ?>" class="item__title" itemprop="name"><?php echo htmlspecialchars($product['name'], ENT_QUOTES, 'UTF-8'); ?></a>
            <?php if ($product['price']) { ?>
            <div class="item__price" itemprop="offers" itemscope itemtype="https://schema.org/Offer">
                <span><?php echo $product['special'] ? $product['special'] : $product['price']; ?></span>
                <meta itemprop="priceCurrency" content="RUB">
                <link itemprop="availability" href="https://schema.org/InStock">
                <div class="tooltip">
                    <div class="tooltip__icon">
                        <svg class="tooltip__svg" role="img" aria-label="Подсказка"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#tooltip"></use></svg>
                        <svg class="tooltip__svg-hover" role="img" aria-label="Подсказка"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#tooltip-fill"></use></svg>
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
                            <svg class="tooltip__svg" role="img" aria-label="Подсказка"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#tooltip"></use></svg>
                            <svg class="tooltip__svg-hover" role="img" aria-label="Подсказка"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#tooltip-fill"></use></svg>
                        </div>
                        <div class="tooltip__text">Стоимость работы из материалов заказчика.</div>
                    </div>
                </div>
                <?php } ?>
                <div class="item__prices-item">
                    <span>Цена зависит от курса</span>
                    <div class="tooltip">
                        <div class="tooltip__icon">
                            <svg class="tooltip__svg" role="img" aria-label="Подсказка"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#price"></use></svg>
                            <svg class="tooltip__svg-hover" role="img" aria-label="Подсказка"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#price-fill"></use></svg>
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
$pages = array(1, $page_count);
for ($number = max(1, $page - 1); $number <= min($page_count, $page + 2); $number++) {
    $pages[] = $number;
}
$pages = array_values(array_unique($pages));
sort($pages);
?>
<div class="catalog-pagination">
    <span></span>
    <div class="pagination">
        <?php if ($page > 1) { ?><button type="button" class="pagination__item prev js-viewed-page" data-page="<?php echo $page - 1; ?>" aria-label="Предыдущая страница"></button><?php } ?>
        <?php $previous = 0; ?>
        <?php foreach ($pages as $number) { ?>
        <?php if ($previous && $number - $previous > 1) { ?><span class="pagination__item">...</span><?php } ?>
        <button type="button" class="pagination__item js-viewed-page<?php echo $number == $page ? ' current' : ''; ?>" data-page="<?php echo $number; ?>"<?php echo $number == $page ? ' disabled' : ''; ?>><?php echo $number; ?></button>
        <?php $previous = $number; ?>
        <?php } ?>
        <?php if ($page < $page_count) { ?><button type="button" class="pagination__item next js-viewed-page" data-page="<?php echo $page + 1; ?>" aria-label="Следующая страница"></button><?php } ?>
    </div>
</div>
<?php } ?>
<?php } else { ?>
<p><?php echo $text_empty; ?></p>
<?php } ?>
