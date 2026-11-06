<div class="wrapper row">
  <div class="col-12 product__viewed">
    <h2 class="product__viewed-title">Вы недавно смотрели</h2>
    <div class="product__viewed-slider swiper-container">
      <div class="swiper-wrapper">
        <?php foreach ($products as $product) { ?>
        <div class="product__viewed-slider-item product-card swiper-slide">
          <div class="product-card__img">
            <div class="product-card__label"></div>
            <span class="product-card__wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"></span>
            <a href="<?php echo $product['href']; ?>">
              <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
            </a>
          </div>
          <a href="<?php echo $product['href']; ?>" class="product-card__btn btn btn_white">Подробнее</a>
          <a href="<?php echo $product['href']; ?>" class="product-card__link">
            <span class="product-card__title"><?php echo $product['name']; ?></span>
            <span class="product-card__price"><?php if (!$product['special']) { echo str_replace('руб', '', $product['price']); } else { echo str_replace('руб', '', $product['special']); } ?> ₽</span>
            <?php if($product['price_works']) { ?><span class="product-card__price-work"><?php echo str_replace('руб', '', $product['price_works']); ?> ₽ с материалами заказчика</span><?php } ?>
          </a>
        </div>
        <?php } ?>
      </div>
      <div class="swiper-scrollbar category-scrollbar product__viewed-slider-scrollbar"></div>
    </div>
    <div class="product__viewed-slider-control">
      <div class="product__viewed-slider-control-btns">
        <div class="product__viewed-slider-control-btn-prev"></div>
        <div class="product__viewed-slider-control-btn-next"></div>
      </div>
    </div>
    <div class="product__viewed-slider-pagination swiper-pagination"></div>
  </div>
</div>
