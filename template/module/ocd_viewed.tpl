<section class="catalog-slider-section">
    <h2><?php echo $heading_title; ?></h2>
    <div id="product-viewed-<?php echo $module; ?>" class="catalog-slider swiper">
        <div class="swiper-wrapper"></div>
        <div class="swiper-buttons">
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
            <div class="swiper-button-next"></div>
        </div>
    </div>
</section>
<script>
document.addEventListener('DOMContentLoaded', function () {
    var viewed = document.getElementById('product-viewed-<?php echo $module; ?>');
    var products = viewed.querySelector('.swiper-wrapper');
    var body = new URLSearchParams({
        limit: '<?php echo (int)$limit; ?>',
        width: '<?php echo (int)$width; ?>',
        height: '<?php echo (int)$height; ?>',
        product_id: '<?php echo (int)$product_id; ?>'
    });

    fetch('index.php?route=module/ocd_viewed/getProducts', {
        method: 'POST',
        credentials: 'same-origin',
        headers: {'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'},
        body: body.toString()
    }).then(function (response) {
        return response.text();
    }).then(function (html) {
        products.innerHTML = html;

        if (viewed.swiper) {
            viewed.swiper.update();
        }
    });
});
</script>
