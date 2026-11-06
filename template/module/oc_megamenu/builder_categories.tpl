<?php require_once( $theme_directory . '/template/module/oc_megamenu/mm_common.tpl'); ?>

<?php
if( isset( $row['banner']['type']) && $row['banner']['type'] == 1) {
    mm_beginbanner( $row, $configuration, $mm_banner_counter, $lang_id);
}
?>
<div class="row">
    <?php if( $submenu['categories']['submenu'] == 1) { ?>
        <?php $classMenu = 'mm-submenu-visible'; ?>
    <?php } else { ?>
        <?php $classMenu = 'mm-submenu-hover'; ?>
    <?php } ?>
    <?php foreach( $submenu['categories']['dataMenu'] as $menuCol) { ?>
        <div class="col-sm-<?php echo $submenu['categories']['rowCount']; ?> <?php echo $classMenu; ?>">
            <div class="mm-menu">
                <ul>
                    <?php foreach( $menuCol as $menuRow) { ?>
                        <li<?php if( $submenu['categories']['submenu'] == 0 && isset($menuRow['children']) && $menuRow['children']) { echo ' class="mm-angle-right"'; } ?><?php if( isset( $menuRow['banner']) && $menuRow['banner']) { ?> data-image="<?php echo $menuRow['banner']; ?>" data-counter="<?php echo $mm_banner_counter; ?>"<?php if( isset( $menuRow['link']) && $menuRow['link']) { ?> data-link="<?php echo $menuRow['link']; ?>"<?php } ?><?php } ?> >
                            <?php if( isset($menuRow['thumb']) && $menuRow['thumb']) { ?>
                                <a<?php if( isset($menuRow['link']) && !empty($menuRow['link'])) { ?> href="<?php echo $menuRow['link']; ?>" <?php } ?> class="mm-submenu-main  mm-oi">
                                    <?php if( $configuration['menubar_lazyload'] == 1) { ?>
                                        <img class="lazyload" data-sizes="auto" src="image/catalog/loading.gif" data-src="<?php echo $menuRow['thumb']; ?>" alt="<?php echo $menuRow['name']; ?>">
                                    <?php } else { ?>
                                        <img src="<?php echo $menuRow['thumb']; ?>" alt="<?php echo $menuRow['name']; ?>">
                                    <?php } ?>
                                </a>
                            <?php } ?>
                            <a<?php if( isset($menuRow['link']) && !empty($menuRow['link'])) { ?> href="<?php echo $menuRow['link']; ?>" <?php } ?> class="mm-submenu-main<?php if( isset($menuRow['thumb']) && $menuRow['thumb']) { ?> mm-oi<?php } ?>"><?php if( isset($menuRow['name'])) { echo $menuRow['name']; } ?></a>
                            <?php if( isset($menuRow['children']) && is_array($menuRow['children']) && !empty($menuRow['children'])) {
                                $children = $menuRow['children'];
                                include( $theme_directory . '/template/module/oc_megamenu/builder_categories_sub.tpl');
                            } ?>
                        </li>
                    <?php } ?>
                </ul>
            </div>
        </div>
    <?php } ?>
</div>
<?php
if( isset( $row['banner']['type']) && $row['banner']['type'] == 1) {
    mm_endbanner( $row, $configuration, $mm_banner_counter, $lang_id);
}
?>