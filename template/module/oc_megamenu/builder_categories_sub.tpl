<?php if( $children['submenu'] == 1 && $children['columns'] != 1) { ?>
    <div class="row visible">
<?php } ?>
<?php foreach( $children['dataMenu'] as $menuCol) { ?>
        <?php if( $children['submenu'] == 1 && $children['columns'] != 1) { ?>
            <div class="col-sm-<?php echo $children['rowCount']; ?> ">
        <?php } ?>
        <ul>
            <?php foreach( $menuCol as $menuRow) { ?>
                <li<?php if( $submenu['categories']['submenu'] == 0 && isset($menuRow['children']) && $menuRow['children']) { echo ' class="mm-angle-right"'; } ?><?php if( isset( $menuRow['banner']) && $menuRow['banner']) { ?> data-image="<?php echo $menuRow['banner']; ?>" data-counter="<?php echo $mm_banner_counter; ?>"<?php if( isset( $menuRow['link']) && $menuRow['link']) { ?> data-link="<?php echo $menuRow['link']; ?>"<?php } ?><?php } ?> >
                    <a<?php if( isset($menuRow['link']) && !empty($menuRow['link'])) { ?> href="<?php echo $menuRow['link']; ?>"<?php } ?>><?php if( isset($menuRow['name'])) { echo $menuRow['name']; } ?></a>
                    <?php if( isset( $menuRow['children']) && is_array( $menuRow['children']) && !empty($menuRow['children'])) {
                        $children = $menuRow['children'];
                        include( $theme_directory . '/template/module/oc_megamenu/builder_categories_sub.tpl');
                    } ?>
                </li>
            <?php } ?>
        </ul>
    <?php if( $children['submenu'] == 1 && $children['columns'] != 1) { ?>
        </div>
    <?php } ?>
<?php } ?>
<?php if( $children['submenu'] == 1 && $children['columns'] != 1) { ?>
    </div>
<?php } ?>
