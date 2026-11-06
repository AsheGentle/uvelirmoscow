<?php require_once( $theme_directory . '/template/module/oc_megamenu/mm_common.tpl'); ?>

<div class="oc_mm <?php echo $configuration['menubar_class']; ?><?php if( isset( $configuration['menubar_expand']) && !$configuration['menubar_expand']) { echo ' oc2mm-expanded'; } ?>" id="mm-<?php echo $configuration['menubar_uuid']; ?>">
    <?php if( $configuration['menubar_orientation'] == 1) { ?>
    <div class="mm-asit">
    <?php } ?>

    <?php
    if( $configuration['menubar_orientation'] == 1) {
        $navbar_orient = 'vertical';
    } else {
        $navbar_orient = 'horizontal';
    }
    ?>

    <nav class="mm-navbar">
        <div class="mm-container container mm-<?php echo $navbar_orient; ?>">
            <?php if( $configuration['menubar_title_show'] && $configuration['menubar_title']) { ?>
                <h3><?php echo $configuration['menubar_title']; ?></h3>
            <?php } ?>
        <?php if( $configuration['menubar_orientation'] == 1 && !isset( $submenu_menu) ) { ?>
            <div id="mmd-navigation">
                <div class="mm-nav-wrapper">
                    <div class="mm-nav-pattern">
                        <div class="container">
                            <div><b></b><b></b><b></b></div>
                            <?php echo $configuration['menubar_navigation']; ?>
                        </div>
                    </div>
                </div>
            </div>
        <?php } ?>

        <div class="navbar-header">
            <button type="button" data-toggle="collapse"  class="mmb-<?php echo $navbar_orient; ?>-show navbar-toggle">
                <b class="icon-bar"></b>
                <b class="icon-bar"></b>
                <b class="icon-bar"></b>
            </button>
            <div class="oc2nh-title mmb-<?php echo $navbar_orient; ?>-show"><?php echo $configuration['menubar_navigation']; ?></div>
        </div>
        <div class="mm-wrapper-<?php echo $navbar_orient; ?>">
            <span class="mm-remove-<?php echo $navbar_orient; ?> fa fa-times"></span>

            <div class="mm-pattern">
                <?php
                if( isset( $configuration['mobile']) &&  isset( $configuration['mobile']['isMobile']) && $configuration['mobile']['isMobile'] != 0) {
                    include( $theme_directory . '/template/module/oc_megamenu/builder_mobile.tpl');
                } else {
                    include( $theme_directory . '/template/module/oc_megamenu/builder_desktop.tpl');
                }
                ?>
            </div>
        </div>
        </div>
    </nav>
    <?php if( $configuration['menubar_orientation'] == 1) { ?>
        </div>
    <?php } ?>
</div>

<?php if( isset( $configuration['mobile']) &&  isset( $configuration['mobile']['isMobile']) && $configuration['mobile']['isMobile'] != 0) { ?>
<div class="mm-dynamic-data"
     data-menubar_uuid="mm-<?php echo $configuration['menubar_uuid']; ?>"
     data-menutype="<?php echo $configuration['mobile']['type']; ?>">
</div>
<?php } else { ?>
<div class="mm-dynamic-data"
     data-menubar_uuid="mm-<?php echo $configuration['menubar_uuid']; ?>"
     data-menubar_orientation="<?php echo $configuration['menubar_orientation']; ?>"
     data-menubar_vertical_item_count="<?php echo $configuration['menubar_vertical_item_count']; ?>"
     data-menubar_expand="<?php echo $configuration['menubar_expand']; ?>"
     data-text_more_category="<?php echo $text_more_category; ?>"
     data-text_close_category="<?php echo $text_close_category; ?>">
</div>
<?php } ?>
