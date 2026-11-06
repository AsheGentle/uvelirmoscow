<h2 class="large-heading"><?php echo $heading_title; ?></h2>
<div class="row">
    <div id="bestseller-carousel" class="owl-carousel">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout col-sm-12">
            <div class="product-thumb">
                <div class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                <div class="image">
                    <a href="<?php echo $product['href']; ?>">
                        <div class="product-model-category"><?php echo $text_model; ?> <?php echo $product['model']; ?></div>
                        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
                        <?php if ($product['special']) { ?>
                        <div class="percent"><i class="promo-stone"></i></div>
                        <?php } ?>
                        <?php if ($product['video_review']) { ?>
                        <div class="video-icon"><i class="fa fa-video-camera" aria-hidden="true"></i></div>
                        <?php } ?>
                        <?php if ($product['rating']) { ?>
                        <div class="rating">
                            <?php for ($i = 1; $i <= 5; $i++) { ?>
                            <?php if ($product['rating'] < $i) { ?>
                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                            <?php } else { ?>
                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                            <?php } ?>
                            <?php } ?>
                        </div>
                        <?php } ?>
                    </a>
                </div>
                <div class="caption">
                    <div class="text-center">
                        <div class="price-work"><?php echo $price_work; ?><br><span><?php echo $product['price_works']; ?></span></div>
                        <?php if ($product['price']) { ?>
                        <p class="price_small">
                            <?php echo $price_product; ?><br>
                            <?php if (!$product['special']) { ?>
                            <span><?php echo $product['price']; ?></span>
                            <?php } else { ?>
                            <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                            <?php } ?>
                            <?php if ($product['tax']) { ?>
                            <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                            <?php } ?>
                        </p>
                        <?php } ?>
                    </div>
                    <? if(isset($product['options'])) { ?>
                    <div class="options">
                        <?php foreach ($product['options'] as $option) { ?>
                        <?php foreach ($option['product_option_value'] as $option_value) { ?>
                        <? if($option_value['default_value'] == 1) { ?>
                        <? $optionName = $option['name']; ?>
                        <? $optionVal = $option_value['name']; ?>
                        <?
                                        if($option['name'] == 'Металл') $classOption = 'metal';
                                        elseif($option['name'] == 'Проба') $classOption = 'proba';
                                        elseif($option['name'] == 'Размер') $classOption = 'size';
                                        elseif($option['name'] == 'Вставка') $classOption = 'past';
                                        ?>

                        <p class="option-<?php echo $classOption ?>"><span class="option-name"><?php echo "$optionName"?>:</span><span class="option-val"> <?php echo "$optionVal"?></span></p>
                        <? } ?>
                        <? } ?>
                        <? } ?>
                        <? if(isset($product['weight'])) {
                            $weight = $product['weight']
                            ?>
                        <p class="option-weight"><span class="option-name">Вес: </span><span class="option-val"><?php echo $product['weight']; ?> г.</span></p>
                        <? } ?>
                    </div>
                    <? } ?>
                </div>
                <div class="button-red"><a class="btn" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $text_more_info; ?></a></div>
            </div>
        </div>
        <?php } ?>
    </div>
    <script type="text/javascript">
        $('#bestseller-carousel').owlCarousel({
            items : 3,
            itemsDesktop : [1200,3],
            itemsDesktopSmall : [992,2],
            itemsTablet:  [768,2],
            itemsMobile : [480,1],
            autoPlay: true,
            navigation: true,
            navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
            stopOnHover: true,
            pagination: true
        });
    </script>
</div>
