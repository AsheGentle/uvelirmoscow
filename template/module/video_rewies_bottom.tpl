<div class="col-sm-4">
<div class="widget">
    <div class="widget-heading"><?php echo $heading_title; ?></div>
    <div id="vedeootzivi-widget" class="row sidebar-widget owl-carousel">
        <?php foreach ($videos as $video) { ?>
        <div class="product-layout col-sm-12">
            <div class="caption fancybox">
                <a href="https://www.youtube.com/embed/<?php echo $video['url'];?>?rel=0&amp;showinfo=0" rel="nofollow"><img src="//img.youtube.com/vi/<?php echo $video['url'];?>/0.jpg" class="" alt="<?php echo $video['name'];?>" title="<?php echo $video['name'];?>"/></a>
            </div>
        </div>
        <?php } ?>
    </div>
    <button type="button" class="btn btn-default"><a href="/otzivi-video">Все отзывы</a></button>
</div>

<link href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.4/jquery.fancybox.min.css">
<script type="text/javascript">
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

    $('#vedeootzivi-widget').owlCarousel({
        navigation: true,
        navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
        pagination: false,
        singleItem: true
    });
</script>
</div>