<?php
foreach( $row['submenu'] as $submenu) {
    if( $submenu['menubar_item_type'] == 2) {
        $categories = $submenu['categories'];
        include( $theme_directory . '/template/module/oc_megamenu/builder_accordion_menu.tpl');
    } else if( $submenu['menubar_item_type'] == 5 && isset( $submenu['subcategory']['categories'])) {
        foreach( $submenu['subcategory']['categories'] as $categories) {
            $categories = $categories['categories'];
            include( $theme_directory . '/template/module/oc_megamenu/builder_accordion_menu.tpl');
        }
    }
}
?>
