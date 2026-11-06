<?php echo $header; ?>
<div class="container">
    <div class="breadcrumbs row wrapper">
    <ul class="breadcrumbs__list" itemscope itemtype="https://schema.org/BreadcrumbList">
      <?php $bread_count = count($breadcrumbs); ?>
      <?php foreach ($breadcrumbs as $i => $breadcrumb) { ?>
      <li class="breadcrumbs__item" itemprop="itemListElement" itemscope
      itemtype="https://schema.org/ListItem">
        <?php if($i+1 > $bread_count) { ?>
        <span itemprop="name" class="breadcrumbs__link"><?php echo $breadcrumb['text']; ?></span>
        <meta itemprop="position" content="<?php echo $i ?>">
        <? }else{ ?>
        <a class="breadcrumbs__link" href="<?php echo $breadcrumb['href']; ?>" itemprop="item">
			<span itemprop="name"><?php echo $breadcrumb['text']; ?></span>
			<meta itemprop="position" content="<?php echo $i ?>">
		</a>
        <?php } ?>
      </li>
      <?php } ?>
    </ul>
  </div>
</div>
<div class="container" style="background-color:#fff;">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
     <h1><?php echo $heading_title; ?> - тест</h1>
      <?php echo $content_top; ?>
      <div class="all-content">
          <?php if ($categories) { ?>
      <div class="sub-category">
      <p class="subcat-title"><?php echo $text_refine; ?></p>
          <div class="shadow"></div>
        <div id="carousel-category" class="owl-carousel">
            <?php foreach ($categories as $category) { ?>
            <?php if($category['material'] == 0){ ?>
            <div class="item text-center">
                <a href="<?php echo $category['href']; ?>" title="<?php echo $category['name']; ?>">
                    <img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" class="img-responsive" />
                    <?php if($category['short_description']){ ?>
                    <div class="description">
                    <?php echo $category['short_description']; ?>
                    </div>
                    <?php } ?>
                </a>
            </div>
            <?php } ?>
            <?php } ?>
        </div>
        <script>
            $('#carousel-category').owlCarousel({
                items : 8,
                itemsDesktop : [1200,6],
                itemsDesktopSmall : [992,4],
                itemsTablet:  [768,4],
                itemsMobile : [480,2],
                autoPlay: 3000,
                navigation: true,
                navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
                pagination: true,
                stopOnHover: true,
                itemsScaleUp: true
            });
        </script>
          <div class="shadow"></div>
        <?php
        $material=0;
        foreach ($categories as $category){
            if($category['material'] == 1){
                    $material++;
            }
        }
        ?>
        <?php if($material>0){ ?>
          <p class="subcat-title"><?php echo $text_material; ?></p>
        <?php } ?>
        <div id="material-category" class="owl-carousel">
            <?php foreach ($categories as $category) { ?>
            <?php if($category['material'] == 1){ ?>
            <div class="item text-center">
                <a href="<?php echo $category['href']; ?>" title="<?php echo $category['name']; ?>">
                    <img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" class="img-responsive" />
                    <?php if($category['short_description']){ ?>
                    <div class="description">
                        <?php echo $category['short_description']; ?>
                    </div>
                    <?php } ?>
                </a>
            </div>
            <?php } ?>
            <?php } ?>
        </div>
        <script>
            $('#material-category').owlCarousel({
                items : 7,
                itemsDesktop : [1200,6],
                itemsDesktopSmall : [992,4],
                itemsTablet:  [768,4],
                itemsMobile : [480,2],
                autoPlay: 3000,
                navigation: true,
                navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
                pagination: true,
                stopOnHover: true,
                itemsScaleUp: true
            });
        </script>
      </div>
      <?php } ?>
      <?php if ($products) { ?>
      <div class="row">
          <div class="margin-auto sort col-md-9">
          <div class="col-md-3 text-right">
              <label class="control-label" for="input-price-type"><?php echo $text_price_type; ?></label>
          </div>
          <div class="col-md-3 text-right">
              <select id="input-price-type" class="form-control" onchange="location = this.value;">
                  <?php foreach ($price_types as $price_type) { ?>
                  <?php if ($price_type['value'] == $price_current_type) { ?>
                  <option value="<?php echo $price_type['href']; ?>" selected="selected"><?php echo $price_type['text']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $price_type['href']; ?>"><?php echo $price_type['text']; ?></option>
                  <?php } ?>
                  <?php } ?>
              </select>
          </div>
        <div class="col-md-3 text-right">
          <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
        </div>
        <div class="col-md-3 text-right">
          <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
        </div>
      </div>
      <br />
      <div class="row">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-12">
          <div class="product-thumb">
            <div class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div>
              <div class="caption">
                <?php if ($product['rating']) { ?>
                <div class="rating">
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($product['rating'] < $i) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } else { ?>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } ?>
                  <?php } ?>
                </div>
                <?php } ?>
                <?php if ($product['price']) { ?>
                <p class="price">
                  <?php if (!$product['special']) { ?>
                    Цена работы: <?php echo $product['price_works']; ?>
                    <br class="first-br">
                    <br class="second-br">
                    С материалами: <?php echo $product['price']; ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                  <?php if ($product['tax']) { ?>
                  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php } ?>
                </p>
                <?php } ?>
              </div>
              <div class="button-red"><a class="btn" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $text_more_info; ?></a></div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="row pb-30">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
        <?php if ($thumb || $description) { ?>
        <div class="row">
            <?php if ($description) { ?>
            <div class="col-sm-12 article">
                <?php if ($thumb) { ?>
                <div class="col-sm-4"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-responsive" /></div>
                <?php } ?>
                <?php echo $description; ?>
            </div>
            <?php } ?>
        </div>
        <?php } ?>
      <?php echo $content_bottom; ?>
      </div>
    </div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
