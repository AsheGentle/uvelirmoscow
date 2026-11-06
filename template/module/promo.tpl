<?php
/**
 * Created by PhpStorm.
 * User: storm
 * Date: 06.09.16
 * Time: 12:35
 */
?>
<div class="widget">
    <div class="widget-heading"><?php echo $heading_title; ?></div>
    <div id="promo-widget" class="row sidebar-widget owl-carousel">
        <?php foreach ($promos as $promo) { ?>
        <div class="product-layout col-sm-12">
            <div class="transition">
                <div class="image"><a href="/<?php echo $promo['href']; ?>"><img src="<?php echo $promo['thumb']; ?>" alt="<?php echo $promo['name']; ?>" title="<?php echo $promo['name']; ?>" class="img-responsive" /></a></div>
                <div class="product-name"><a href="/<?php echo $promo['href']; ?>"><?php echo $promo['name']; ?></a></div>
            </div>
        </div>
        <?php } ?>
    </div>
    <button type="button" class="btn btn-default">
        <a href="<?php echo $all_article; ?>">Все статьи</a>
    </button>
</div>
<script type="text/javascript">
    $('#promo-widget').owlCarousel({
        autoPlay: false,
        navigation: true,
        navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
        pagination: false,
        singleItem: true
    });
</script>