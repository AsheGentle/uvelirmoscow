<?php foreach ($products as $product) { ?>
<?php $product_name = html_entity_decode($product['name'], ENT_QUOTES, 'UTF-8'); ?>
<div class="item swiper-slide" itemscope itemtype="https://schema.org/Product">
    <div class="item__buttons">
        <a href="<?php echo htmlspecialchars($product['href'], ENT_QUOTES, 'UTF-8'); ?>" class="btn btn--prices">Рассчитать стоимость</a>
        <button type="button" class="item__favorite" data-wishlist-product-id="<?php echo (int)$product['product_id']; ?>" onclick="wishlist.add('<?php echo (int)$product['product_id']; ?>');">
            <span>В избранное</span>
            <svg aria-hidden="true"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#favorite"></use></svg>
        </button>
        <a href="<?php echo htmlspecialchars($product['href'], ENT_QUOTES, 'UTF-8'); ?>" class="btn btn--border btn--dark btn--item-more">Подробнее</a>
    </div>
    <picture class="item__image">
        <img src="<?php echo htmlspecialchars($product['thumb'], ENT_QUOTES, 'UTF-8'); ?>" alt="<?php echo htmlspecialchars($product_name, ENT_QUOTES, 'UTF-8'); ?>" width="235" height="235" loading="lazy" itemprop="image">
    </picture>
    <div class="item__description">
        <a href="<?php echo htmlspecialchars($product['href'], ENT_QUOTES, 'UTF-8'); ?>" class="item__title" itemprop="name"><?php echo htmlspecialchars($product_name, ENT_QUOTES, 'UTF-8'); ?></a>
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
            <div class="item__prices-item"><span>Работа: <?php echo $product['price_works']; ?></span></div>
            <?php } ?>
            <div class="item__prices-item"><span>Цена зависит от курса</span></div>
        </div>
    </div>
</div>
<?php } ?>
