<?php if( is_array( $product) ) { ?>
    <div class="mm-product">
        <div class="mm-menu">
            <?php if( $product['show_image'] == 1) { ?>
                <div class="image">
                    <a href="<?php echo $product['link']; ?>" onclick="window.location = '<?php echo $product['link']; ?>'">
                        <?php if( $configuration['menubar_lazyload'] == 1) { ?>
                            <img class="lazyload" data-sizes="auto" src="image/catalog/loading.gif" data-src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>">
                        <?php } else { ?>
                            <img src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>">
                        <?php } ?>
                    </a>
                </div>
            <?php } ?>
            <div class="name"><a href="<?php echo $product['link']; ?>" onclick="window.location = '<?php echo $product["link"]; ?>'"><?php echo $product['name']; ?></a></div>
            <?php if( $product['show_price'] == 1) { ?>
                <div class="price">
                    <?php if( !$product['special']) { ?>
                        <?php echo $product['price']; ?>
                    <?php } else { ?>
                        <span class="price-new"><?php echo $product['special']; ?></span>
                        <span class="price-old"><?php echo $product['price']; ?></span>
                    <?php } ?>
                </div>
            <?php } ?>
            <?php if( $product['show_description'] == 1) { ?>
                <div class="description"><p><?php echo substr( $product['description'], 0, 64); ?></p></div>
            <?php } ?>
            <?php if( $product['show_rating'] == 1 && $product['rating']) { ?>
                <div class="rating">
                    <?php for( $i=1; $i <= 5; $i++) { ?>
                        <?php if( $product['rating'] < $i) { ?>
                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                        <?php } else { ?>
                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                        <?php } ?>
                    <?php } ?>
                </div>
            <?php } ?>
            <?php if( $product['show_cart'] == 1 || $product['show_wishlist'] == 1 || $product['show_compare'] == 1) { ?>
            <div class="button-group">
                <?php if( $product['show_cart'] == 1) { ?>
                <button type="button" data-toggle="tooltip" title="" onclick="cart.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $product['text_menubar_cart']; ?>"><i class="fa fa-shopping-cart"></i></button>
                <?php } ?>
                <?php if( $product['show_wishlist'] == 1) { ?>
                <button type="button" data-toggle="tooltip" title="" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $product['text_menubar_wishlist']; ?>"><i class="fa fa-heart"></i></button>
                <?php } ?>
                <?php if( $product['show_compare'] == 1) { ?>
                <button type="button" data-toggle="tooltip" title="" onclick="compare.add('<?php echo $product['product_id']; ?>');" data-original-title="<?php echo $product['text_menubar_compare']; ?>"><i class="fa fa-exchange"></i></button>
                <?php } ?>
            </div>
            <?php } ?>
        </div>
    </div>
<?php } ?>
