<div class="widget">
    <div class="widget-heading"><?php echo $heading_title; ?></div>
    <div id="project-widget" class="row sidebar-widget owl-carousel">
        <?php foreach ($projects as $project) { ?>
        <div class="product-layout col-sm-12">
            <div class="product-thumb transition">
                <div class="product-name"><a href="<?php echo $project['href']; ?>"><?php echo $project['name']; ?></a></div>
                <div class="image"><a href="<?php echo $project['href']; ?>"><img src="<?php echo $project['thumb']; ?>" alt="<?php echo $project['name']; ?>" title="<?php echo $project['name']; ?>" class="img-responsive" /></a></div>
                <button onclick="location.href = '<?php echo $project['href']; ?>'" type="button" class="btn btn-black">Подробнее</button>
            </div>
        </div>
        <?php } ?>
    </div>
    <button onclick="location.href = '/nasha-rabota'" type="button" class="btn btn-default">Все работы</button>
</div>
<script>
    $('#project-widget').owlCarousel({
        autoPlay: false,
        navigation: true,
        navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
        pagination: false,
        singleItem: true
    });
</script>