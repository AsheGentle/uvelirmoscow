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
        <div id="content" class="col-sm-12 <?php echo $class; ?> nashi-raboti">
          <ul class="breadcrumb" vocab="http://schema.org/" typeof="BreadcrumbList">
            <?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
              <li property="itemListElement" typeof="ListItem">
                <?php if($i+1<count($breadcrumbs)) { ?>
                  <a href="<?php echo $breadcrumb['href']; ?>" property="item" typeof="WebPage">
                    <span property="name">
                  <?php if($breadcrumb['text'] == '<i class="fa fa-home"></i>'){
                    echo 'Главная';
                  }else{
                    echo $breadcrumb['text'];
                  } ?></span></a>
                  <meta property="position" content="<?php echo $i ?>">
                </li>
              <?php } else { ?>
                <span property="name"><?php echo $breadcrumb['text']; ?></span>
                <meta property="position" content="<?php echo $i ?>">
              </li>
            <?php } ?><?php } ?>
              </ul>
            <h1><?php if(!empty($add_title)) print $add_title; else echo $heading_title; ?></h1>
            <?php echo $content_top; ?>
            <div class="all-content">

			<?php if (count($categories)) { ?>
      <div class="sub-category">
          <?php

            ?>
          <?php { ?>
          <p class="subcat-title"><?php echo $text_categories; ?></p>
          <div class="shadow"></div>
          <div id="carousel-category" class="owl-carousel">
              <?php foreach ($categories as $category) { ?>
              <?php { ?>
              <div class="item text-center">
                  <a href="/nasha-rabota/<?php echo $category['alias']; ?>" title="<?php echo $category['name']; ?>">
                      <?php
                    $image = $category['thumb'];
                    if (empty($image)){
                        $image = '/image/no_image.png';
                    }
                    ?>
                      <img src="<?php echo $image; ?>" alt="<?php echo $category['name']; ?>" class="img-responsive" />
                      <?php if($category['name']){ ?>
                      <p class="description">
                          <?php echo $category['name']; ?>
                      </p>
                      <?php } ?>
                  </a>
              </div>
              <?php } ?>
              <?php } ?>
          </div>
          <script>
              // $('#carousel-category').owlCarousel({
                  // items : 12,
                  // itemsDesktop : [1337,8],
                  // itemsDesktopSmall : [992,5],
                  // itemsTablet:  [768,4],
                  // itemsMobile : [461,2],
                  // autoPlay: 3000,
                  // navigation: true,
                  // navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
                  // pagination: false,
                  // stopOnHover: true,
                  // itemsScaleUp: true
              // });
			  $('#carousel-category').owlCarousel({
				  items: 10,
				  loop:true,
				  responsive: {
					  1337 : {
						  items: 10
					  },
					  992 : {
						  items:8
					  },
					  768 : {
						  items:5
					  },
					  461 : {
						  items:4
					  },
					  0 : {
						  items:2
					  }
				  },
                  autoplay: true,
                  nav: true,
                  navText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
                  dots: false,
                  autoplayHoverPause: true
              });
          </script>
          <div class="shadow"></div>
          <?php } ?>



      </div>
      <?php } ?>

            <?php if ($products) { ?>
            <div class="row nashi-raboti-row-wrapper">
                <?php foreach ($products as $product) { ?>
                <div class="product-layout col-md-4 col-sm-6">
                    <div class="product-thumb project">
                        <div class="project-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
                        <div class="short-desc"><b><?php echo $product['date_added']; ?></b> - <?php echo $product['small_description']; ?></div>
                        <a href="<?php echo $product['href']; ?>" class="btn btn-default" title="<?php echo $product['name']; ?>"><?php echo $text_more_info; ?></a>
                    </div>
                </div>
                <?php } ?>
            </div>
            <?php echo $content_bottom; ?>
            <div class="row nashi-raboti-row-wrapper2">
                <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
                <div class="col-sm-6 text-right"><?php echo $results; ?></div>
            </div>
            <?php } ?>
            </div>
        </div>
        <?php echo $column_right; ?></div>
</div>
</div>
<?php echo $footer; ?>
