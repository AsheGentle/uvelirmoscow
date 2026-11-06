<?php

function mm_beginbanner( $row, $configuration, $mm_banner_counter, $lang_id) {
    if( isset( $row['banner']['status']) && $row['banner']['status'] == 1) { ?>
            <div class="row">
        <?php if( $row['banner']['pos'] == 0) { ?>
                <div class="col-sm-<?php echo $row['banner']['width']; ?> mm-banner">
                    <a id="<?php echo 'mma-c' . $mm_banner_counter; ?>" href="<?php echo $row['link']; ?>">
                        <?php if( $configuration['menubar_lazyload'] == 1) { ?>
                        <img id="<?php echo 'mmi-c' . $mm_banner_counter; ?>" class="lazyload" data-sizes="auto" src="image/catalog/loading.gif" data-src="<?php echo $row['banner']['image_src']; ?>" alt="<?php echo $row['name'][$lang_id]; ?>">
                        <?php } else { ?>
                        <img id="<?php echo 'mmi-c' . $mm_banner_counter; ?>" src="<?php echo $row['banner']['image_src']; ?>" alt="<?php echo $row['name'][$lang_id]; ?>">
                        <?php } ?>
                    </a>
                </div>
        <?php } ?>
                <div class="col-sm-<?php echo 12 - $row['banner']['width']; ?>">
    <?php }
}

function mm_endbanner( $row, $configuration, $mm_banner_counter, $lang_id) {
    if( isset( $row['banner']['status']) && $row['banner']['status'] == 1) { ?>
                </div>
        <?php if( $row['banner']['pos'] == 1) { ?>
                <div class="col-sm-<?php echo $row['banner']['width']; ?> mm-banner">
                    <a id="<?php echo 'mma-c' . $mm_banner_counter; ?>" href="<?php echo $row['link']; ?>">
                        <?php if( $configuration['menubar_lazyload'] == 1) { ?>
                        <img id="<?php echo 'mmi-c' . $mm_banner_counter; ?>" class="lazyload" data-sizes="auto" src="image/catalog/loading.gif" data-src="<?php echo $row['banner']['image_src']; ?>" alt="<?php echo $row['name'][$lang_id]; ?>">
                        <?php } else { ?>
                        <img id="<?php echo 'mmi-c' . $mm_banner_counter; ?>" src="<?php echo $row['banner']['image_src']; ?>" alt="<?php echo $row['name'][$lang_id]; ?>">
                        <?php } ?>
                    </a>
                </div>
        <?php } ?>
            </div>
     <?php }
}

?>