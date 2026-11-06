<h2 class="large-heading"><?php echo $heading_title; ?></h2>
<div class="row">
    <div id="special-carousel" class="owl-carousel">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout col-sm-12">
            <div class="product-thumb">
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
                <div class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                       <div class="caption">
                            <div class="text-center">
                                <!-- <?php echo $price_work; ?><?php echo $product['price_works']; ?> -->
                            <?php if ($product['price']) { ?>
                                <p class="price_work" style='width:50%;float:left;font-size:10px;'>Цена работы<br><span style="font-size: 13px;color: #000;"><?php echo $product['price_works']; ?></span></p>
                                <p class="price_small" style='font-size:10px;color: #000;line-height: 19px;'><span class='dcost'>Цена с материалами<br /></span>
                                <?php if (!$product['special']) { ?>
                                    <span class='dcost' style="font-size:13px;"><?php echo $product['price']; ?></span><i>Цена работы: <?php echo $product['price_works']; ?></i><i>С материалами: <?php echo $product['price']; ?></i>
                                <?php } else { ?>
                                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                                <?php } ?>
                                <?php if ($product['tax']) { ?>
                                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                <?php } ?>
								</p>
                                <?php } ?>
                            </div>
                            <? if(isset($product['options']) && 1 == 2) { ?>
                            <div itemprop="description" class="options">
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
            </div>
        </div>
        <?php } ?>
    </div>
    <script>
        $('#special-carousel').owlCarousel({
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