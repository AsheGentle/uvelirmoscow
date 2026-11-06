<?php
foreach( $categories['dataMenu'] as $menuCol) {
    foreach( $menuCol as $menuRow) {
?>
        <li<?php if( $configuration['menubar_type'] == 1 && isset($menuRow['isCategoryPath']) && $menuRow['isCategoryPath']){ echo ' class="mm-active"'; } ?>>
<?php
        $aHref = '#';
        if( isset($menuRow['link']) && $menuRow['link']) {
            $aHref = $menuRow['link'];
        }
        $has_arrow = '';
        if( isset( $menuRow['children']) && $menuRow['children']) {
            $has_arrow = ' class="has-arrow"';
        }
?>
        <a href="<?php echo $aHref; ?>"<?php echo $has_arrow; ?><?php if( $configuration['menubar_type'] == 1 && isset($menuRow['isCategoryPath']) && $menuRow['isCategoryPath']){ echo ' aria-expanded="true"'; } ?>><?php echo $menuRow['name']; ?></a>
<?php
        if( isset( $menuRow['children']) && $menuRow['children']) {
            $categories = $menuRow['children'];
            include( $theme_directory . '/template/module/oc_megamenu/builder_accordion_menu.tpl');
        }
?>
        </li>
<?php
    }
}
?>
