<?php
if( isset($submenu_menu) && $submenu_menu) {
    $oc2mmType = ' oc2mm-subdropdown';
} else {
    $oc2mmType = ' oc2mm-dropdown';
}
if( isset($configuration['menubar_type']) && $configuration['menubar_type'] == 1) {
    $oc2mmType = ' oc2mm-accordion';
} elseif( isset($configuration['menubar_type']) && $configuration['menubar_type'] == 2) {
    $oc2mmType = ' oc2mm-slider';
}
?>
<div class="container<?php echo $oc2mmType; ?>">
<ul class="mm oc2-<?php echo $navbar_orient; ?>" data-animationtype="<?php if( $configuration['menubar_animation'] != 0) { echo $configuration['menubar_animation']; } else { echo '0'; } ?>" data-animationtime="<?php if( $configuration['menubar_animation_time'] > 0 && $configuration['menubar_animation_time'] < 5000 ) { echo $configuration['menubar_animation_time']; } else { echo '500'; } ?>">
    <?php if( $configuration['menubar_home_link'] == 1 || $configuration['menubar_home_link'] == 2 ) { ?>
    <li class="mm-home-link">
        <a href="<?php echo (isset($home_link))?$home_link:'/'; ?>">
            <?php if( $configuration['menubar_home_link'] == 1) { ?>
            <i class="fa fa-home"></i>
            <?php } else { ?>
            <?php echo $configuration['menubar_home_title']; ?>
            <?php } ?>
        </a>
    </li>
    <?php } ?>
    <?php
                        foreach( $menu as $key => $row ) {
    $menubar_item_class      = '';
    $menubar_item_image_font = '';
    $class_link              = 'clearfix';
    $title                   = false;
    $target                  = false;
    $mm_sticker              = '';

    if( $row['menubar_item_stiker'] == 1) {
    $mm_sticker = ' data-placement="top" data-toggle="mm-stiker" data-content="' . $row['menubar_item_stiker_text'] .
    '" data-stiker-color="'     . $row['menubar_item_stiker_color'] .
    '" data-stiker-fontcolor="' . $row['menubar_item_stiker_fontcolor'] .
    '" data-stiker-type="'      . $row['menubar_item_stiker_type'] .
    '" data-stiker-kind="'      . $row['menubar_item_stiker_kind'] . '"';
    }
    if( $row['menubar_item_stiker_type'] == 1) {
    $mm_sticker = $mm_sticker . 'data-trigger="hover"';
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

    if( $row['description'] != '') {
    $class_link = $class_link . ' mm-description';
    }

    $mm_description = ( $row['description'] )?  '<br><span class="mm-description">' . $row['description'] . '</span>' : '';

    if( $route && isset(  $row['route']) && $route == $row['route'] && $path && $path == $row['path'] ) {
    $menubar_item_class = $menubar_item_class . ' mm-active ';
    }

    if( isset($row['menubar_item_class']) && $row['menubar_item_class'] ) {
    $menubar_item_class = $menubar_item_class . $row['menubar_item_class'];
    }

    if( $row['menubar_item_image_font']) {
    $menubar_item_image_font = $menubar_item_image_font . '<i class="' . $row['menubar_item_image_font'] . '"></i>';
    }

    if( is_array($row['submenu']) && $row['submenu'] ) {
    $menubar_item_class = $menubar_item_class . ' mm-submenu-exist';
    if( isset($row['menubar_item_show_submenu']) && $row['menubar_item_show_submenu'] == 3 ) { ?>
    <li>
        <div class="modal fade" id="clickModalDlg" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">&nbsp;</h4>
                    </div>
                    <div id="mmd-clickmodal" class="modal-body"></div>
                    <div class="modal-footer"></div>
                </div>
            </div>
        </div>
    </li>
    <?php
                                    $menubar_item_class = $menubar_item_class . ' click-modal';
                                } else if( isset($row['menubar_item_show_submenu']) && $row['menubar_item_show_submenu'] == 2 ) {
                                    $menubar_item_class = $menubar_item_class . ' click';
                                } else {
                                    $menubar_item_class = $menubar_item_class . ' hover';
                                }
                            }

                            if( $row['menubar_item_position'] == 1) {
                                $menubar_item_class = $menubar_item_class . ' pull-right';
                            }

                            if( isset($row['menubar_item_show_submenu']) && $row['menubar_item_show_submenu'] == 1) {
                                $title = 'title="hover-intent"';
                            }

                            if( $row['menubar_item_link_newwindow'] == 1) {
                                $target = 'target="_blank"';
                            }

                            if( isset( $submenu_menu)) {
                                if( isset( $submenu_menu_dropdown) && $submenu_menu_dropdown) {
                                    $mm_submenu_class = 'mm-submenu-menuex';
                                } else {
                                    $mm_submenu_class = 'mm-submenu-menu';
                                }
                                $class_link = $class_link . ' oc2-asubitem';
                            } else {
                                $mm_submenu_class = 'mm-submenu';
                                $class_link = $class_link . ' oc2-aitem';
                            }

                            if( $configuration['menubar_orientation'] == 1) {
                                $isAngle = false;
                                if( is_array( $row['submenu']) && $row['submenu'] ||  $row['submenu'] && $configuration['menubar_dynamicload']) {
                                    if( isset( $configuration['menubar_type']) && $configuration['menubar_type'] > 0 &&
    ( isset( $row['submenu'][0]['categories']) && (!is_array( $row['submenu'][0]['categories']) || count( $row['submenu'][0]['categories']['dataMenu']) < 1)) &&
    isset( $row['submenu'][0]['subcategory']) && !is_array( $row['submenu'][0]['subcategory'])) {
    $isAngle = false;
    } else {
    $isAngle = true;
    }
    }

    if( $isAngle) {
    $menubar_item_class = $menubar_item_class . ' mm-angle-right';
    } ?>
    <li class="mm-vertical-item <?php echo $menubar_item_class; ?>" <?php echo $title; if( $configuration['menubar_dynamicload']) { ?> data-mmid="<?php echo $row['submenu']['mmid']; ?>"<?php } ?>>
    <?php
                                    $rowHref = '';
                                    if( $row['link']) {
                                        $rowHref = ' href="' . $row['link'] . '"';
                                    } elseif( $configuration['menubar_type'] > 0) {
    $rowHref = ' href="#"';
    }

    $isExpanded = '';

    if( isset($row['submenu']['menubar_item_type'])){
      if( $row['submenu']['menubar_item_type'] == 2) {
        if( $configuration['menubar_type'] == 1 && isset($row['submenu']['categories']['isCategoryPath']) && $row['submenu']['categories']['isCategoryPath']) {
          $isExpanded = ' aria-expanded="true"';
        }
      } elseif( $row['submenu']['menubar_item_type'] == 5) {
        if( $configuration['menubar_type'] == 1 && isset($row['submenu']['subcategory']['categories']['isCategoryPath']) && $row['submenu']['subcategory']['categories']['isCategoryPath']) {
          $isExpanded = ' aria-expanded="true"';
        }
      }
    }
    ?>
    <a<?php echo $rowHref; ?> class="<?php echo $class_link; ?><?php echo $isExpanded; ?>" <?php echo $target; ?>>
    <?php if( isset( $mm_sticker) && !empty( $mm_sticker)){ ?><div<?php echo $mm_sticker; ?>></div><?php } ?>
    <?php if( $row['menubar_item_image_type'] == 1) { ?>
    <?php echo $menubar_item_image; ?>
    <?php } else if( $row['menubar_item_image_type'] == 2) { ?>
    <?php echo $menubar_item_image_font; ?>
    <?php } ?>
    <?php echo (isset( $row['name'][$lang_id])) ? $row['name'][$lang_id] : '' . $mm_description; ?>
    </a>

    <?php
                                    if( isset( $configuration['menubar_type']) && $configuration['menubar_type'] > 0) {
    include( $theme_directory . '/template/module/oc_megamenu/builder_accordion.tpl');
    } else { ?>
    <?php if( is_array( $row['submenu']) && $row['submenu'] ||  $row['submenu'] && $configuration['menubar_dynamicload']) { ?>
    <div class="<?php echo $mm_submenu_class; ?>" style="width: <?php echo $row['size']['width']; ?>" data-submenuwidth="<?php if( strpos( $row['size']['width'], '%') != false ) { echo str_replace( '%', '', $row['size']['width']); } ?>">
        <?php
                                                if( $configuration['menubar_dynamicload'] == 0) {
                                                    include( $theme_directory . '/template/module/oc_megamenu/builder_submenu.tpl');
                                                } else { ?>
        <div class="content"><div class="row">
                <div class="col-sm-12">
                    <img src="image/catalog/loading.gif" style="margin-left: 50%;margin-right: 50%;">
                </div>
            </div></div>
        <?php } ?>
    </div>
    <?php } ?>
    <?php } ?>
    </li>
    <?php } else { ?>
    <?php if( is_array( $row['submenu']) && $row['submenu'] ||  $row['submenu'] && $configuration['menubar_dynamicload']) {
                                $menubar_item_class = $menubar_item_class . ' mm-angle-down';
                            } ?>
    <li class="<?php echo $menubar_item_class; ?>" <?php echo $title; if( $configuration['menubar_dynamicload']) { ?> data-mmid="<?php echo $row['submenu']['mmid']; ?>"<?php } ?>>
    <a<?php if( isset($row['link']) && !empty($row['link'])) { ?> href="<?php echo $row['link']; ?>"<?php } ?> class="<?php echo $class_link; ?>" <?php echo $target; ?>>
    <?php if( isset( $mm_sticker) && !empty( $mm_sticker)){ ?><div<?php echo $mm_sticker; ?>></div><?php } ?>
    <?php if( $row['menubar_item_image_type'] == 1) { ?>
    <?php echo $menubar_item_image; ?>
    <?php } else if( $row['menubar_item_image_type'] == 2) { ?>
    <?php echo $menubar_item_image_font; ?>
    <?php } ?>
    <?php echo (isset( $row['name'][$lang_id])) ? $row['name'][$lang_id] : '' . $mm_description; ?>
    </a>

    <?php if( is_array( $row['submenu']) && $row['submenu'] ||  $row['submenu'] && $configuration['menubar_dynamicload']) { ?>
    <div class="<?php echo $mm_submenu_class; ?>" style="width: <?php echo $row['size']['width']; ?>" data-submenuwidth="<?php if( strpos( $row['size']['width'], '%') != false ) { echo str_replace( '%', '', $row['size']['width']); } ?>">
        <?php
                                            if( $configuration['menubar_dynamicload'] == 0) {
                                                include( $theme_directory . '/template/module/oc_megamenu/builder_submenu.tpl');
                                            } else { ?>
        <div class="content"><div class="row">
                <div class="col-sm-12">
                    <img src="image/catalog/loading.gif" style="margin-left: 50%;margin-right: 50%;">
                </div>
            </div></div>
        <?php } ?>
    </div>
    <?php } ?>
    </li>
    <?php } ?>
    <?php }
                        if( $configuration['menubar_orientation'] == 0) {
                        ?>
    <li class="hover more">
        <a class="clearfix">...</a>
        <ul class="overflow">
        </ul>
    </li>
    <?php } ?>
</ul>
</div>