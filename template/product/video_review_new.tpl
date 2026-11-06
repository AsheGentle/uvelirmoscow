<?php echo $header; ?>
<div class="container">
  <div class="breadcrumbs row wrapper">
    <ul class="breadcrumbs__list" vocab="http://schema.org/" typeof="BreadcrumbList">
      <?php $bread_count = count($breadcrumbs); ?>
      <?php foreach ($breadcrumbs as $i => $breadcrumb) { ?>
      <li class="breadcrumbs__item">
        <?php if($i+1 > $bread_count) { ?>
        <span class="breadcrumbs__link"><?php echo $breadcrumb['text']; ?></span>
        <meta property="position" content="<?php echo $i ?>">
        <? }else{ ?>
        <a class="breadcrumbs__link" href="<?php echo $breadcrumb['href']; ?>" property="item" typeof="WebPage"><?php echo $breadcrumb['text']; ?></a>
        <meta property="position" content="<?php echo $i ?>">
        <?php } ?>
      </li>
      <?php } ?>
    </ul>
  </div>
</div>
<div class="container">
    <div class="row">
        <div id="content">
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
      </div>
    </div>
</div>
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
