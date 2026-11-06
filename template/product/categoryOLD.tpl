<?php echo $header; ?>
<script src="catalog/view/javascript/ajax-product-page-loader_new.js"></script>
<!-- <script src="catalog/view/javascript/jquery.lazyload.min.js"></script>
<script>
	$(window).ready(function() {
		$("img.img-responsive").lazyload({
			effect : "fadeIn"
		});
	});
</script> -->
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
<ul class="breadcrumb" vocab="http://schema.org/" typeof="BreadcrumbList"><?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?><li property="itemListElement" typeof="ListItem"><?php if($i+1<count($breadcrumbs)) { ?><span><a href="<?php echo $breadcrumb['href']; ?>" property="item" typeof="WebPage"><?php echo $breadcrumb['text']; ?></a></span></li> <?php } else { ?><span><?php echo $breadcrumb['text']; ?></span></li><?php } ?><?php } ?></ul>
      <h1><?php echo $heading_title; ?></h1>
      <div><?php echo $content_top; ?></div>
      <div class="all-content">
      <?php if ($products_all) { ?>
      <!-- <div class="row">
          <div class="margin-auto sort col-md-12">
            <div class="col-md-4 col-sm-4 text-right hidden-xs">
              <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
            </div>
            <div class="col-md-4 col-sm-4 text-right col-xs-6">
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
      </div><br /> -->
      
          <?php foreach($products_all as $key => $products) { ?>
              <?php if(isset($products[1])) { ?>
                  <?php foreach($products[1] as $k => $product) { ?>
                    <?php array_push($products_all[$key], $product); ?>
                  <?php } ?>
          <?php unset($products_all[$key][1]) ?>
          <?php } ?>
          <?php } ?>
          <?php // p($products_all)?>
          <? // $products_all = array_map("unserialize", array_unique(array_map("serialize", $products_all) )); ?>

          <div class="row product_block">
            <?php foreach ($products_all as $k => $products) { ?>

            <div class="product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-6">
                 <?php if(count($products)>1){ ?>
                    <div class="caruselka">
                <?php } ?>
                <?php foreach ($products as $key => $product) { ?>

                        <div class="product-thumb" itemscope itemtype="http://schema.org/Product">
                    <div class="image">
                        <a href="<?php echo $product['href']; ?>" rel="nofollow">
                            <div class="product-model-category"><?php echo $text_model; ?> <?php echo $product['model']; ?></div>
							<!-- <noscript><img itemprop="image" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive"></noscript> -->
                            <img itemprop="image" src="<?php echo $product['thumb']; ?>" data-original="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
                            <?php if ($product['special']) { ?>
                            <div class="percent"><i class="promo-stone"></i></div>
                            <?php } ?>
                            <?php if ($product['video_review']) { ?>
                            <div class="video-icon"><i class="fa fa-video-camera" aria-hidden="true"></i></div>
                            <?php } ?>
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
                        </a>
                    </div>
                    <div class="product-name"><a itemprop="url" href="<?php echo $product['href']; ?>"><span itemprop="name"><?php echo $product['name']; ?></span></a></div>
                    <div>
                        <div class="caption">
                            <div itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="text-center"><meta itemprop="price" content="<?php echo str_replace(array('руб', " "), '', $product['price']); ?>"><meta itemprop="priceCurrency" content="RUB"><link itemprop="availability" href="http://schema.org/InStock">
                                <div class="price-work hidden-xs"><?php echo $price_work; ?><br><span><?php echo $product['price_works']; ?></span></div>
                            <?php if ($product['price']) { ?>
                                <p class="price_small">
                                    <?php echo $price_product; ?><br>
                                <?php if (!$product['special']) { ?>
                                    <span><?php echo $product['price']; ?></span>
                                <?php } else { ?>
                                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                                <?php } ?>
                                <?php if ($product['tax']) { ?>
                                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                <?php } ?>
                            </p>
                                <?php } ?>
                            </div>
                            <? if(isset($product['options']) && 1 == 2) { ?>
                            <div itemprop="description" class="options">
                            <?php foreach ($product['options'] as $option) { ?>
                            <?php foreach ($option['product_option_value'] as $option_value) { ?>
                            <? if($option_value['default_value'] == 1) { ?>
                            <? $optionName = $option['name']; ?>
                            <? $optionVal = $option_value['name']; ?>
                            <?
                            if($option['name'] == 'Металл') $classOption = 'metal';
                            elseif($option['name'] == 'Проба') $classOption = 'proba';
                            elseif($option['name'] == 'Размер') $classOption = 'size';
                            elseif($option['name'] == 'Вставка') $classOption = 'past';
                            ?>

                            <p class="option-<?php echo $classOption ?>"><span class="option-name"><?php echo "$optionName"?>:</span><span class="option-val"> <?php echo "$optionVal"?></span></p>
                            <? } ?>
                            <? } ?>
                            <? } ?>
                            <? if(isset($product['weight'])) {
                            $weight = $product['weight']
                            ?>
                            <p class="option-weight"><span class="option-name">Вес: </span><span class="option-val"><?php echo $product['weight']; ?> г.</span></p>
                            <? } ?>
                            </div>
                            <? } ?>
                        </div>
                        <!--noindex--><div class="button-red"><a class="btn" href="<?php echo $product['href']; ?>" rel="nofollow" title="<?php echo $product['name']; ?>"><?php echo $text_more_info; ?></a></div><!--/noindex-->
                    </div>
                </div>
                <?php } ?>
                    <?php if(count($products)>1){ ?>
                    </div>
                <?php } ?>

            </div>
            <?php } ?>

        </div>
        <script>
            $('.caruselka').owlCarousel({
                items : 3,
                autoPlay: false,
                navigation: true,
                navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
                pagination: false,
                singleItem: true
            });
            $('.product-thumb a').on('click', function() {
                yaCounter18227068.reachGoal('open_item');
            })
        </script>
        <div class="row pb-30">
            <div class="col-sm-12 text-center"><?php echo $pagination; ?></div>
        </div>
        <?php }else{
			?>
			Ничего не найдено.
			<?php
		} ?>
		<div class="row quest pb-30">
		<div class="col-sm-6 text-center"><h2>Не нашли нужную модель?</h2>
		<p>Любое украшение можно изменить по Вашему желанию. <a href="/kak-zakazat#callback_page"><b>Напишите нам</b></a>: что Вы ищете? </p></div>
		<div class="col-sm-6 text-center"><h2>Не устраивает цена?</h2>
		<p>Стоимость изделия можно <b>значительно</b> снизить за счёт количества и размера драгоценных камней!</p></div>
		</div>
      <?php if ($categories) { ?>
      <div class="sub-category">
          <?php
            $material=0;
            foreach ($categories as $category){
                if($category['material'] == 0){
                        $material++;
                }
            }
            ?>
          <?php if($material>0){ ?>
          <p class="subcat-title"><?php echo $text_refine; ?></p>
          <div class="shadow"></div>
          <div id="carousel-category" class="owl-carousel">
              <?php foreach ($categories as $category) { ?>
              <?php if($category['material'] == 0){ ?>
              <div class="item text-center">
                  <a href="<?php echo $category['href']; ?>" title="<?php echo $category['name']; ?>">
                      <?php
                    $image = $category['thumb'];
                    if (empty($image)){
                        $image = '/image/no_image.png';
                    }
                    ?>
                      <img src="<?php echo $image; ?>" data-src="<?php echo $image; ?>" alt="<?php echo $category['name']; ?>" class="img-responsive" />
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
                  items : 6,
                  itemsDesktop : [1200,5],
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
          <?php } ?>
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
          <div id="material-category" class="owl-carousel">
              <?php foreach ($categories as $category) { ?>
              <?php if($category['material'] == 1){ ?>
              <div class="item text-center">
                  <a href="<?php echo $category['href']; ?>" title="<?php echo $category['name']; ?>">
                      <img src="<?php echo $category['thumb']; ?>" data-src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" class="img-responsive" />
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
          <div class="shadow"></div>
          <?php } ?>
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
                    <!--<div class="col-sm-4"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-responsive" /></div>-->
                    <?php } ?>
                    <?php echo $description; ?>
                </div>
                <?php } ?>
            </div>
            <?php } ?>
      <?php echo $content_bottom; ?>

	                  <div id="video-category"><h3>Изготовление украшений на заказ: видео.</h3>
					  <p>В видеоролике наш мастер производит закрепку бриллианта в помолвочное кольцо при помощи специального оборудования.</p>
			<iframe style='width:85%;height:400px' onload = " this.frameborder='0' " src="https://www.youtube.com/embed/a7TBnECDaG0?rel=0&amp;showinfo=0" allowfullscreen></iframe>
          </div>


      </div>
    </div>
    <?php echo $column_right; ?>
</div></div>
<?php echo $footer; ?>