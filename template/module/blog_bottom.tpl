<div class="col-sm-4">
<div class="widget">
    <div class="widget-heading"><?php echo $heading_title; ?></div>
    <div id="blog-widget" class="row sidebar-widget owl-carousel">
        <?php foreach ($blogs as $blog) { ?>
        <div class="product-layout col-sm-12">
            <div class="transition">
                <div class="image"><a href="/<?php echo $blog['href']; ?>"><img src="<?php echo $blog['thumb']; ?>" alt="<?php echo $blog['name']; ?>" title="<?php echo $blog['name']; ?>" class="img-responsive" /></a></div>
                <div class="product-name"><a href="/<?php echo $blog['href']; ?>"><?php echo $blog['name']; ?></a></div>
            </div>
        </div>
        <?php } ?>
    </div>
    <a href="<?php echo $all_article; ?>">Все статьи</a>
</div>
<script>
    $('#blog-widget').owlCarousel({
        autoPlay: false,
        navigation: true,
        navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
        pagination: false,
        singleItem: true
    });
</script>
</div>