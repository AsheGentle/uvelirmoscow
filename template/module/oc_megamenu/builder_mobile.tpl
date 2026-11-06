<?php
if( isset( $configuration['mobile']['isShowLogo']) && $configuration['mobile']['isShowLogo']) {
?>
<div class="oc2mm-logo"><img src="<?php echo $logo; ?>" title="<?php echo $site_name; ?>" alt="<?php echo $site_name; ?>" class="img-responsive" /></div>
<?php
}
?>
<?php
if( isset( $configuration['mobile.isShowSearch']) && $configuration['mobile.isShowSearch']) {
?>
<div class="oc2mm-search"><?php echo $search; ?></div>
<?php
}
if( $configuration['mobile']['isShowCurrency'] || $configuration['mobile']['isShowLanguage']) {
?>
<div class="oc2mm-buttons">
<?php
    if( isset( $configuration['mobile']['isShowCurrency']) && $configuration['mobile']['isShowCurrency']) {
?>
    <div class="oc2mm-currency"><?php echo $currency; ?></div>
<?php
    }
    if( isset( $configuration['mobile']['isShowLanguage']) && $configuration['mobile']['isShowLanguage']) { ?>
    <div class="oc2mm-languages"><?php echo $language; ?></div>
<?php
    }
?>
</div>
<?php
}
?>
<div class="clearfix"></div>
<div class="oc2mm-mobile">
    <ul class="mm mm-mobile">
        <?php
        include( $theme_directory . '/template/module/oc_megamenu/builder_mobile_menu.tpl');
        ?>
    </ul>
</div>
