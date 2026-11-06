<div style="clear:both"></div>
<h2 class="home-latest__title" ><?php echo $heading_title; ?></h2>
<div class="row">
    <div id="latest-carousel" class="owl-carousel">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout col-sm-12" style='width:100%'>
            <div class="product-thumb">

                <div class="image">
                    <a href="<?php echo $product['href']; ?>">
                        <img data-src="<?php echo $product['thumb']; ?>" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive lazyload" loading="lazy"/>
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
                        <?php if ($product['price']) { ?>
                                <?php if (!$product['special']) { ?>
                                    <span><?php echo $product['price']; ?>.</span>
                                <?php } else { ?>
                                <span class="price-new"><?php echo $product['special']; ?>.</span> <span class="price-old"><?php echo $product['price']; ?>.</span>
                                <?php } ?>
                                <?php if ($product['tax']) { ?>
                                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                <?php } ?>
                        <?php } ?>
                    </div>

                </div>
                <div class="button-red"><a class="btn" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $text_more_info; ?></a></div>
                <div class="home-latest__add-to-fav" data-toggle="tooltip" title="" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-original-title="В закладки"><i class="far fa-heart" style="font-size: 32px;" aria-hidden="true"></i></div>
            </div>

                    <!--<div class="home-latest__add-to-fav" data-toggle="tooltip" title="" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-original-title="В закладки"><i class="fa fa-heart-o" style="font-size: 32px;" aria-hidden="true"></i></div>-->
        </div>
        <?php } ?>
    </div>
</div>
