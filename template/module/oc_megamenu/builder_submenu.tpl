<?php require_once( $theme_directory . '/template/module/oc_megamenu/mm_common.tpl'); ?>
<div class="content">
    <?php
        if( isset( $row['banner']['type']) && $row['banner']['type'] == 0) {
            mm_beginbanner( $row, $configuration, '', $lang_id);
        }
    ?>
    <div class="row">
        <?php if( $row['menubar_item_image_type'] == 3) {
        if( $configuration['menubar_dynamicload']) {
            if( !isset( $row['menubar_item_image']) || strpos( 'no_image', $row['menubar_item_image']) != false) {
                $menubar_item_image = '';
            } else {
              if( $configuration['menubar_lazyload'] == 1) {
                    $menubar_item_image = '<img class="lazyload" data-sizes="auto" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="' . $row['menubar_item_image'] .'" alt="">';
                } else {
                    $menubar_item_image = '<img src="' . $row['menubar_item_image'] . '" alt="">';
                }
            }
        } ?>

        <a href="<?php echo $row['link']; ?>" onclick="window.location = '<?php echo $row['link']; ?>';" class="mm-submenu-main">
            <div class="mm-submenu-titleimage">
                <?php echo $menubar_item_image; ?>
                <p><?php echo $row['name'][$lang_id]; ?></p>
            </div>
        </a>
        <?php } ?>

        <?php
        $rowCount = 0;
        foreach( $row['submenu'] as $index => $submenu) {
        if( isset( $row['banner']['type']) && $row['banner']['type'] == 0) {
            $mm_banner_counter = '';
        } else {
             $mm_banner_counter = $index;
        }

        if( $rowCount + $submenu['menubar_item_width'] > 12 ) {
        $rowCount = $submenu['menubar_item_width'];
        echo "</div><div class='border'></div><div class='row'>";
        } else {
        $rowCount = $rowCount + $submenu['menubar_item_width'];
        } ?>
        <div class="col-sm-<?php echo $submenu['menubar_item_width']; ?> <?php echo $submenu['menubar_item_class']; ?>">
            <?php if( $submenu['menubar_item_type'] == 0) { ?>
            <div class="mm-html"><?php echo $submenu['html']; ?></div>
            <?php } else if( $submenu['menubar_item_type'] == 1) { ?>
            <?php if( is_array( $submenu['product'])) { ?>
            <?php
                $product = $submenu['product'];
                include( $theme_directory . '/template/module/oc_megamenu/builder_product.tpl');
            ?>
            <?php } ?>
            <?php } else if( $submenu['menubar_item_type'] == 2) { ?>
            <div class="mm-categories">
                <?php include( $theme_directory . '/template/module/oc_megamenu/builder_categories.tpl'); ?>
            </div>
            <?php } else if( $submenu['menubar_item_type'] == 3) { ?>
                <?php include( $theme_directory . '/template/module/oc_megamenu/builder_manufacturer.tpl'); ?>
            <?php } else if( $submenu['menubar_item_type'] == 4) { ?>
                <?php if( $submenu['images']['show_title'] == 1) { ?>
                <span class="mm-submenu-title"><?php echo $submenu['name'][$lang_id]; ?></span>
                <?php } ?>
                <div class="link">
                    <?php if( !empty($submenu['images']['url'])) { ?>
                    <a href="<?php echo $submenu['images']['url']; ?>" class="mma-submenu-image">
                        <?php } ?>
                        <?php if( $configuration['menubar_lazyload'] == 1) { ?>
                            <img class="lazyload" data-sizes="auto" src="image/catalog/loading.gif" data-src="<?php echo $submenu['images']['link']; ?>" alt="" style="width: 100%;">
                        <?php } else { ?>
                            <img src="<?php echo $submenu['images']['link']; ?>" alt="" style="width: 100%;">
                        <?php } ?>
                        <?php if( !empty($submenu['images']['url'])) { ?>
                    </a>
                    <?php } ?>
                </div>
            <?php } else if( $submenu['menubar_item_type'] == 5) { ?>
                <?php if( isset( $submenu['subcategory']) && $submenu['subcategory']['categories'] ) { ?>
                <ul class="mm-subcategory">
                    <?php foreach( $submenu['subcategory']['categories'] as $categories) { ?>
                    <li>
                        <?php if( $submenu['subcategory']['show_image'] == 1 || $submenu['subcategory']['show_image'] == 3) { ?>
                        <a href="<?php echo $categories['href']; ?>" class="mm-submenu-title">
                            <?php if( $configuration['menubar_lazyload'] == 1) { ?>
                                <img class="lazyload" data-sizes="auto" src="image/catalog/loading.gif" data-src="<?php echo $categories['thumb']; ?>" alt="<?php echo $categories['name']; ?>">
                            <?php } else { ?>
                                <img src="<?php echo $categories['thumb']; ?>" alt="<?php echo $categories['name']; ?>">
                            <?php } ?>
                        </a>
                        <?php } ?>
                        <?php if( $submenu['subcategory']['show_title'] == 1) { ?>
                            <a href="<?php echo $categories['href']; ?>" class="mm-submenu-title"><p><?php echo $categories['name']; ?></p></a>
                        <?php } ?>
                        <?php if( $categories['categories']) { ?>
                            <?php $submenu = $categories; include( $theme_directory . '/template/module/oc_megamenu/builder_categories.tpl'); ?>
                        <?php } ?>
                    </li>
                    <?php } ?>
                </ul>
                <?php } ?>
            <?php } else if( $submenu['menubar_item_type'] == 6) { ?>
                <?php include( $theme_directory . '/template/module/oc_megamenu/builder_productlist.tpl'); ?>
            <?php } else if( $submenu['menubar_item_type'] == 7) { ?>
                <?php
                $morient = $submenu['submenu_menu_configuration']['menubar_orientation'];
                if( $morient == 1 && $submenu['submenu_menu_dropdown'] != 1) { ?>
            <div class="row">
                <div class="mm-smm-leftpane col-sm-<?php echo $submenu['submenu_menu_width']; ?>">
                <?php } ?>
                    <?php
                    if(  $submenu['submenu_menu_stub'] == 0) {
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

                        include( $theme_directory . '/template/module/oc_megamenu/default.tpl');

                        $menu = ${"oldMenu_$submenu_menu"};
                        $configuration = ${"oldConfiguration_$submenu_menu"};
                        $submenu = ${"oldSubmenu_$submenu_menu"};

                        $submenu_menu--;
                        if( $submenu_menu == 0) {
                            unset($submenu_menu);
                        }
                    }
                    ?>
                <?php if( $morient == 1 && $submenu['submenu_menu_dropdown'] != 1) { ?>
                </div>
                <div class="mm-smm-body col-sm-<?php echo 12 - $submenu['submenu_menu_width']; ?>">
                </div>
            </div>
                <?php } ?>
            <?php } ?>
        </div>
        <?php } ?>
    </div>
    <?php
        if( isset( $row['banner']['type']) && $row['banner']['type'] == 0) {
            mm_endbanner( $row, $configuration, '', $lang_id);
        }
    ?>
</div>
