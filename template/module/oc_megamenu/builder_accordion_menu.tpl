<ul<?php if( $configuration['menubar_type'] == 1 && isset($categories['isCategoryPath']) && $categories['isCategoryPath']){ echo ' class="mm-show"'; } ?>>
<?php
include( $theme_directory . '/template/module/oc_megamenu/builder_accordion_sub.tpl');
?>
</ul>
