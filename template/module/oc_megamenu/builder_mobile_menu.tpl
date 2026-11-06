<?php
foreach( $menu as $key => $row ) {
    $menubar_item_class      = '';
    $menubar_item_image_font = '';
    $target = '';
    $class_link = 'clearfix';
    if( isset($submenu_menu) && $submenu_menu) {
        $class_link = $class_link . ' oc2-asubitem';
    } else {
        $class_link = $class_link . ' oc2-aitem';
    }

    if( $row['menubar_item_link_newwindow'] == 1) {
        $target = 'target="_blank"';
    }

    if( !isset( $row['menubar_item_image']) || strpos( 'no_image', $row['menubar_item_image']) != false) {
        $menubar_item_image = '';
    } else {
        if( $configuration['menubar_lazyload'] == 1) {
            $menubar_item_image = '<img class="lazyload" data-sizes="auto" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="' . $row['menubar_item_image'] .'" alt="">';
        } else {
            $menubar_item_image = '<img src="' . $row['menubar_item_image'] . '" alt="">';
        }
    }

    if( $row['menubar_item_image_font']) {
        $menubar_item_image_font = $menubar_item_image_font . '<i class="' . $row['menubar_item_image_font'] . '"></i>';
    }

    $mm_sticker = '';
    if( $row['menubar_item_stiker'] == 1) {
        $mm_sticker = ' data-placement="top" data-toggle="mm-stiker" data-content="' . $row['menubar_item_stiker_text'] .
            '" data-stiker-color="'     . $row['menubar_item_stiker_color'] .
            '" data-stiker-fontcolor="' . $row['menubar_item_stiker_fontcolor'] .
            '" data-stiker-type="'      . $row['menubar_item_stiker_type'] .
            '" data-stiker-kind="'      . $row['menubar_item_stiker_kind'] . '"';
    }
    $menubar_item_class = '';
    if( $route && $route == $row{'route'} && $path && $path == $row['path']) {
        $menubar_item_class = $menubar_item_class . ' mm-active ';
    }

    $menubar_dynamicload = "";
    if( $configuration['menubar_dynamicload']) {
        $menubar_dynamicload = ' data-mmid="' . $row['submenu']['mmid'] . '"';
    }
?>

    <li class="mm-vertical-item <?php echo $menubar_item_class; ?>"<?php echo $menubar_dynamicload; ?>>
<?php
        if( isset( $row['link']) && $row['link']) {
            $rowHref = ' href="' . $row['link'] . '"';
        } else {
            $rowHref = ' href="#"';
        }
?>
        <a<?php echo $rowHref; ?> class="<?php echo $class_link; ?>" <?php echo $target; ?>>
<?php
    if( $mm_sticker) {
?>
    <div <?php echo $mm_sticker; ?>></div>
<?php
    }
    if( $row['menubar_item_image_type'] == 1) {
        echo $menubar_item_image;
    } else if( $row['menubar_item_image_type'] == 2) {
        echo $menubar_item_image_font;
    }
    $description = ( $row['description'] )? '<br><span class="mm-description">' . $row['description'] . '</span>' : '';
    echo $row['name'][$lang_id] . $description;
?>
        </a>
<?php
    if( $row['menubar_item_stiker_type'] == 1){
        $mm_sticker = $mm_sticker . 'data-trigger="hover"';
    }
    if( isset( $row['submenu']) && $row['submenu']) {
        include( $theme_directory . '/template/module/oc_megamenu/builder_mobile_submenu.tpl');
    }
?>
    </li>
<?php
}
?>
