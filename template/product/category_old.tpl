<?php echo $header; ?>
<div class="container" style="background-color:#fff;">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> category-main">

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
 <div class="ok"><?php echo $content_top; ?></div>
      <h1 class="h1-title-category"><?php echo $heading_title; ?></h1>
<div> <div class="category-icon text-center col-xs-6 col-md-4 col-lg-3" style="
    width: 100%;
    background: #ffffff;
    -webkit-box-shadow: 0 0 27px rgba(82, 78, 78, 0.15);
    box-shadow: 0 0 27px rgba(82, 78, 78, 0.15);
    z-index: 99;
    padding-top: 8px;
    margin-top: 9px;
    /* background: url(/image/tob1.jpg); */
    min-height: 41px;
">
          <?php
            $material=0;
            foreach ($categories as $category){
                if($category['material'] == 0){
                        $material++;
                }
            }
            ?>
          <?php if($material>0){ ?>
          <div class="category-icon-list-teg">
          	<?php foreach ($categories as $category) { ?>
            <?php if($category['material'] == 0){ ?>
	          	<div class="category-icon-list-teg__item">
	          		<a href="<?php echo $category['href']; ?>" class="category-icon-list-teg__link" title="<?php echo $heading_title; ?> <?php echo mb_strtolower($category['name']); ?>">
	          			<?php if($category['short_description']){ ?>
                          <?php echo $category['short_description']; ?>
                     	<?php } ?>
	          		</a>
	          	</div>
	        <?php } ?>
            <?php } ?>
          </div>
          <?php  } ?>
</div>      </div>


      <div class="all-content">

          <form action="<?php echo $option_filter_values['form_href']; ?>" method="get" class="form-filter-category">
        <div class="row">
          <div class="margin-auto sort col-md-12">
            <div class="category-filter__filter-group">
                <input type="number" name="min_price" class="category-filter__price-field" id="filter_min_price" value="<?php echo $option_filter_values['min_price']; ?>" placeholder="Цена от:">
                <input type="number" name="max_price" class="category-filter__price-field" id="filter_max_price" value="<?php echo $option_filter_values['max_price']; ?>" placeholder="Цена до:">
                <select name="metal_ov" id="filter_metal" class="category-filter__option-select">
                    <option value="">Металл</option>
                    <?php foreach ($attribute_values['metal'] as $metal_value) { ?>
                    <option value="<?php echo $metal_value['text']; ?>" <?php if($metal_value['text'] == $attribute_filter_values['metal_ov']){ echo 'selected'; }?>><?php echo $metal_value['text']; ?></option>
                    <?php } ?>
                </select>
                <select name="insertion_ov" id="filter_insertion" class="category-filter__option-select">
                    <option value="">Вставка</option>
                    <?php foreach ($attribute_values['insertion'] as $insertion_value) { ?>
                    <option value="<?php echo $insertion_value['text']; ?>" <?php if($insertion_value['text'] == $attribute_filter_values['insertion_ov']){ echo 'selected'; }?>><?php echo $insertion_value['text']; ?></option>
                    <?php } ?>
                </select>
            </div>



            <div class="text-right" style="font-size:14px;float:right;font-weight: 500;">
              <select id="input-sort" class="category-filter__option-select-sort" onchange="location = this.value;">
                <?php foreach ($sorts as $sorts) { ?>
                  <?php if ($sorts['href'] == $url) { ?>
                    <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                  <?php } else { ?>
                    <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                  <?php } ?>
                <?php } ?>
              </select>
          </div>
          </div>
        </div>
              <div class="col-md-12" id="cf__btn-container">
                  <button class="category-filter__btn" type="submit">Применить фильтр</button>
                </div>
    </form>


      <br />
            <?php if ($products_all) { ?>
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
                    <div class="caruselka owl-carousel">
                <?php } ?>
                <?php foreach ($products as $key => $product) { ?>

                <div class="product-thumb" itemscope itemtype="http://schema.org/Product">
                <div class="product-name"><a itemprop="url" href="<?php echo $product['href']; ?>"><span itemprop="name"><?php echo $product['name']; ?></span></a></div>
                    <div class="image">
                        <a href="<?php echo $product['href']; ?>" rel="nofollow">
                            <div class="product-model-category"><?php echo $text_model; ?> <?php echo $product['model']; ?></div>
                            <img itemprop="image" data-src="<?php echo $product['thumb']; ?>" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive lazyload" loading="lazy">
                            <?php if ($product['special']) { ?>
                            <div class="percent"><i class="promo-stone"></i></div>
                            <?php } ?>
                            <?php if ($product['video_review']) { ?>
                            <div class="video-icon"><i class="fa fa-video-camera" aria-hidden="true"></i>Изделие на видео</div>
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
                    <!-- <button class="category-page-product-btn" onclick="cart.add(<?php echo $product['product_id']; ?>);" type="button">Заказать</button> -->
                    <div>
                        <div class="caption">



                            <div itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="text-center">
                              <meta itemprop="price" content="<?php echo str_replace(array('руб', " "), '', $product['price']); ?>">
                              <meta itemprop="priceCurrency" content="RUB"><link itemprop="availability" href="http://schema.org/InStock">
                                <!-- <?php echo $price_work; ?><?php echo $product['price_works']; ?> -->
                            <?php if ($product['price']) { ?>



                                <!-- <p class="price_work">Цена работы<br class="first-br"><span><?php echo $product['price_works']; ?></span></p>
                                <p class="price_small" style='font-size:16px;color: #000;line-height: 19px;'><span class='dcost'>Цена с материалами<br class="second-br" /></span> -->
                                 <?php if (!$product['special']) { ?>
                                    <!-- <span class='dcost' style="font-size:16px;"><?php echo $product['price']; ?></span> -->
                                    Цена работы: <?php echo $product['price_works']; ?>
                                    <br class="first-br">
                                    <br class="second-br">
                                    С материалами: <?php echo $product['price']; ?>
                                <?php } else { ?>
                                    <span class="price-new">Новая цена: <?php echo $product['special']; ?></span>
                                    <br class="first-br">
                                    <br class="second-br">
                                    <span class="price-old">Старая цена: <?php echo $product['price']; ?></span>
                                <?php } ?>
                                <?php if ($product['tax']) { ?>
                                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                <?php } ?>
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
                        <!--<div class="button-red"><a class="btn" href="<?php echo $product['href']; ?>" rel="nofollow" title="<?php echo $product['name']; ?>">Подробнее</a></div>-->

                    </div>
                    <div class="product-url">
                    <a href="<?php echo $product['href']; ?>">Подробнее</a>
                    </div>
                    <div class="home-latest__add-to-fav" data-toggle="tooltip" title="" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-original-title="В закладки"><i class="far fa-heart" style="font-size: 32px;" aria-hidden="true"></i></div>
                </div>
                <?php } ?>
                    <?php if(count($products)>1){ ?>
                    </div>
                <?php } ?>

            </div>
            <?php } ?>

        </div>
        <div class="row pb-30">
            <div class="col-sm-12 text-center pagination-block"><?php echo $pagination; ?></div>
        </div>
        <?php }else{
            ?>
            <?php
        } ?>

              <?php if ($categories) { ?>

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


      </div>
    </div>
    <?php echo $column_right; ?>
    <?php echo $content_bottom; ?>
</div>
</div>
</div>
<?php echo $footer; ?>
