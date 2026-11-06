<?php if( is_array( $submenu['manufactures']) ) { ?>
    <div class="mm-manufacturer row">
        <?php if( $submenu['manufactures']['show_title'] == 1 && $submenu['manufactures']['type'] != 3) { ?>
        <span class="mm-submenu-title"><?php echo $submenu['name'][$lang_id]; ?></span>
        <?php } ?>
        <?php foreach( $submenu['manufactures']['items'] as $manufacturer) { ?>
            <div class="col-sm-<?php echo $submenu['manufactures']['rowCount']; ?> mm-submenu-visible">
                <?php if( $submenu['manufactures']['type'] == 0) { ?>
                    <p><a  href="<?php echo $manufacturer['link']; ?>"><?php echo $manufacturer['name']; ?></a></p>
                <?php } else if( $submenu['manufactures']['type'] == 1) { ?>
                    <a  href="<?php echo $manufacturer['link']; ?>">
                        <?php if( $configuration['menubar_lazyload'] == 1) { ?>
                        <img class="lazyload" data-sizes="auto" src="image/catalog/loading.gif" data-src="<?php echo $manufacturer['thumb']; ?>" alt="<?php echo $manufacturer['name']; ?>">
                        <?php } else { ?>
                        <img src="<?php echo $manufacturer['thumb']; ?>" alt="<?php echo $manufacturer['name']; ?>">
                        <?php } ?>
                    </a>
                <?php } else if( $submenu['manufactures']['type'] == 2) { ?>
                    <a  href="<?php echo $manufacturer['link']; ?>">
                        <?php if( $configuration['menubar_lazyload'] == 1) { ?>
                        <img class="lazyload" data-sizes="auto" src="image/catalog/loading.gif" data-src="<?php echo $manufacturer['thumb']; ?>" alt="<?php echo $manufacturer['name']; ?>">
                        <?php } else { ?>
                        <img src="<?php echo $manufacturer['thumb']; ?>" alt="<?php echo $manufacturer['name']; ?>">
                        <?php } ?>
                    </a>
                    <p><a  href="<?php echo $manufacturer['link']; ?>"><?php echo $manufacturer['name']; ?></a></p>
                <?php } else if( $submenu['manufactures']['type'] == 3) { ?>
                    <?php if( $submenu['manufactures']['show_title'] == 1) { ?>
                        <p><a  class="mm-submenu-main" href="<?php echo $manufacturer['link']; ?>"><?php echo $manufacturer['name']; ?></a></p>
                    <?php } ?>
                    <div class="mm-manufacturer-products">
                        <?php foreach( $manufacturer['products'] as $product) { ?>
                            <div class="col-sm-<?php echo $submenu['manufactures']['subRowCount']; ?>">
                                <?php include( $theme_directory . '/template/module/oc_megamenu/builder_product.tpl'); ?>
                            </div>
                        <?php } ?>
                    </div>
                <?php } ?>
            </div>
    <?php } ?>
    </div>
<?php } ?>
