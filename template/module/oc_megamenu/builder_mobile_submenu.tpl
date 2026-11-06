<ul>
<?php
foreach( $row['submenu'] as $submenu) {
    if( $submenu['menubar_item_type'] == 0) {
 ?>
        <li class="mm-html"><?php echo $submenu['html']; ?></li>
<?php
    } else if( $submenu['menubar_item_type'] == 1) {
        if( is_array( $submenu['product'])) {
?>
        <li class="mm-product">
<?php
            $product = $submenu['product'];
            include( $theme_directory . '/template/module/oc_megamenu/builder_product.tpl');
?>
        </li>
<?php
        }
    } else if( $submenu['menubar_item_type'] == 2) {
        $categories = $submenu['categories'];
        include( $theme_directory . '/template/module/oc_megamenu/builder_accordion_sub.tpl');
    } else if( $submenu['menubar_item_type'] == 3) {
?>
        <li class="mm-manufacturer">
<?php
        include( $theme_directory . '/template/module/oc_megamenu/builder_manufacturer.tpl');
?>
        </li>
<?php
    } else if( $submenu['menubar_item_type'] == 4) {
?>
        <li class="mm-image">
            <div class="link">
<?php
                if( $submenu['images']['url']) {
?>
                <a href="<?php echo $submenu['images']['url']; ?>" class="mma-submenu-image">
<?php
                }
                if( $configuration['menubar_lazyload'] == 1) {
?>
                <img class="lazyload" data-sizes="auto" src="image/catalog/loading.gif" data-src="<?php echo $submenu['images']['link']; ?>" alt="" style="width: 100%;">
<?php
                } else {
?>
                <img src="<?php echo $submenu['images']['link']; ?>" alt="" style="width: 100%;">
<?php
                }
                if( $submenu['images']['url']) {
?>
                </a>
<?php
                }
?>
            </div>
        </li>
<?php
    } else if( $submenu['menubar_item_type'] == 5) {
        if( isset($submenu['subcategory']['categories']) && $submenu['subcategory']['categories']){
            foreach( $submenu['subcategory']['categories'] as $categories) {
                if( $categories['categories']) {
                    foreach( $submenu['subcategory']['categories'] as $categories) {
                        $categories = $categories['categories'];
                        include( $theme_directory . '/template/module/oc_megamenu/builder_accordion_sub.tpl');
                    }
                }
            }
        }
    } else if( $submenu['menubar_item_type'] == 6) {
?>
        <li class="mm-productlist">
<?php
            include( $theme_directory . '/template/module/oc_megamenu/builder_productlist.tpl');
?>
        </li>
<?php
    } else if( $submenu['menubar_item_type'] == 7) {
        if( $submenu['submenu_menu_stub'] == 0) {
            if( isset($submenu_menu)) {
                $submenu_menu++;
            } else {
                $submenu_menu = 1;
            }
            ${"oldMenu_$submenu_menu"} = $menu;
            ${"oldConfiguration_$submenu_menu"} = $configuration;
            ${"oldSubmenu_$submenu_menu"} = $submenu;

            $menu = $submenu['submenu_menu'];
            $configuration = $submenu['submenu_menu_configuration'];
            $submenu_menu_dropdown = $submenu['submenu_menu_dropdown'];

            include( $theme_directory . '/template/module/oc_megamenu/builder_mobile_menu.tpl');

            $menu = ${"oldMenu_$submenu_menu"};
            $configuration = ${"oldConfiguration_$submenu_menu"};
            $submenu = ${"oldSubmenu_$submenu_menu"};

            $submenu_menu--;
            if( $submenu_menu == 0) {
                unset($submenu_menu);
            }
        }
    }
}
?>
</ul>
