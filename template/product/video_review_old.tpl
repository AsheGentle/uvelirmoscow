<?php echo $header; ?>
<div class="container">
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>">
<ul class="breadcrumb" vocab="http://schema.org/" typeof="BreadcrumbList"><?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?><li property="itemListElement" typeof="ListItem"><?php if($i+1<count($breadcrumbs)) { ?><span><a href="<?php echo $breadcrumb['href']; ?>" property="item" typeof="WebPage"><?php echo $breadcrumb['text']; ?></a></span></li> <?php } else { ?><span><?php echo $breadcrumb['text']; ?></span></li><?php } ?><?php } ?></ul>
            <h1><?php echo $heading_title; ?></h1>
            <?php echo $content_top; ?>
            <div class="all-content">
                <div class="info-image"><img alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" src="/image/catalog/info-icons/icon-videootzivi.png" class="img-responsive"/></div>
                <div class="shadow"></div>
            <?php if ($videos) { ?>
            <div class="row video-galery">
                <?php foreach ($videos as $video) { ?>
                <div class="product-layout product-grid col-sm-4">
                    <div class="caption fancybox">
                        <a href="https://www.youtube.com/embed/<?php echo $video['url'];?>?rel=0&amp;showinfo=0"><img src="//img.youtube.com/vi/<?php echo $video['url'];?>/0.jpg" class="img-responsive"/></a>
                    </div>
                </div>
                <?php } ?>
            </div>
            <?php echo $content_bottom; ?>
            <!--<div class="row">
                <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
                <div class="col-sm-6 text-right"><?php echo $results; ?></div>
            </div>
            -->
            <?php } ?>
        </div>
        </div>
        <?php echo $column_right; ?></div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.4/jquery.fancybox.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.4/jquery.fancybox.min.css">
<script>
    $(document).ready(function () {
        $('.fancybox').magnificPopup({
            type: 'iframe',
            delegate: 'a',
            gallery: {
                enabled: true
            },
            iframe: {
                markup: '<div class="mfp-iframe-scaler">' +
                '<div class="mfp-close"></div>' +
                '<iframe class="mfp-iframe" frameborder="0" gesture="media" allowfullscreen=""></iframe>' +
                '</div>', // HTML markup of popup, `mfp-close` will be replaced by the close button

                patterns: {
                    youtube: {
                        index: 'youtube.com/', // String that detects type of video (in this case YouTube). Simply via url.indexOf(index).
                        id: 'v=', // String that splits URL in a two parts, second part should be %id%
                        // Or null - full URL will be returned
                        // Or a function that should return %id%, for example:
                        // id: function(url) { return 'parsed id'; }
                        src: 'h%id%' // URL that will be set as a source for iframe.
                    },
                },

                srcAction: 'iframe_src', // Templating object key. First part defines CSS selector, second attribute. "iframe_src" means: find "iframe" and set attribute "src".
            }
        });
        ;
    });
</script>
<?php echo $footer; ?>
