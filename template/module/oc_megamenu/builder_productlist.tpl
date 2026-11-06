<div class="mm-productlist">
    <?php if( $submenu['productlist']['show_title'] == 1) { ?>
        <span class="mm-submenu-title"><?php echo $submenu['name'][$lang_id]; ?></span>
    <?php } ?>
    <?php if( isset( $submenu['productlist']['products']) && is_array( $submenu['productlist']['products'])) { ?>
        <?php foreach( $submenu['productlist']['products'] as $product) { ?>
            <?php $rowCount = $submenu['productlist']['col'] ? 12 / $submenu['productlist']['col'] : 3; ?>
            <div class="col-sm-<?php echo $rowCount; ?>">
                <?php include( $theme_directory . '/template/module/oc_megamenu/builder_product.tpl'); ?>
            </div>
        <?php } ?>
    <?php } ?>
</div>

