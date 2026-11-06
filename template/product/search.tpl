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
<div class="container" id="content">
    <div class="wrapper category search-page">
        <div class="category__title col-12"><h1><?php echo $heading_title; ?></h1></div>
        <div class="search-page_form category-filter">
            <div class="row">
                <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_keyword; ?>" id="input-search" class="tm-field__input" />
                <select name="category_id" class="tm-select__input category-filter__option-select">
                  <option value="0"><?php echo $text_category; ?></option>
                  <?php foreach ($categories as $category_1) { ?>
                  <?php if ($category_1['category_id'] == $category_id) { ?>
                  <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
                  <?php } ?>
                  <?php foreach ($category_1['children'] as $category_2) { ?>
                  <?php if ($category_2['category_id'] == $category_id) { ?>
                  <option value="<?php echo $category_2['category_id']; ?>" selected="selected"><?php echo $category_2['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $category_2['category_id']; ?>"><?php echo $category_2['name']; ?></option>
                  <?php } ?>
                  <?php foreach ($category_2['children'] as $category_3) { ?>
                  <?php if ($category_3['category_id'] == $category_id) { ?>
                  <option value="<?php echo $category_3['category_id']; ?>" selected="selected"><?php echo $category_3['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $category_3['category_id']; ?>"><?php echo $category_3['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                  <?php } ?>
                  <?php } ?>
                </select>
                <label class="tm-checkbox-2 form__label">
                  <?php if ($sub_category) { ?>
                  <input type="checkbox" name="sub_category" value="1" checked="checked" class="tm-checkbox-2__input" />
                  <?php } else { ?>
                  <input type="checkbox" name="sub_category" value="1" class="tm-checkbox-2__input" />
                  <?php } ?>
                  <span class="tm-checkbox-2__box form__checkbox"></span>
                  <span class="tm-checkbox-2__text">
                        <?php echo $text_sub_category; ?>
                  </span>
                </label>
              <label class="tm-checkbox-2 form__label">
                <?php if ($description) { ?>
                <input type="checkbox" name="description" value="1" id="description" checked="checked" class="tm-checkbox-2__input" />
                <?php } else { ?>
                <input type="checkbox" name="description" value="1" id="description" class="tm-checkbox-2__input" />
                <?php } ?>
                <span class="tm-checkbox-2__box form__checkbox"></span>
                <span class="tm-checkbox-2__text">
                  <?php echo $entry_description; ?>
                </span>
              </label>
            </div>
            <input type="button" value="<?php echo $button_search; ?>" id="button-search" class="search-page__btn-form btn" />
          </div>
	      <div class="category__title"><h2><?php echo $text_search; ?></h2></div>
          <?php if ($products) { ?>
          <div class="category__products-list row">
            <?php foreach($products as $product) { ?>
            <div class="category__product-block col-4">
              <div class="category__product-item product-card itemscope itemtype="http://schema.org/Product" onclick='window.location.href="<?php echo $product['href']; ?>"'>
                <div class="product-card__img">
                  <div class="product-card__label"></div>
                  <span class="product-card__wishlist" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"></span>
                  <a itemprop="url" href="<?php echo $product['href']; ?>">
                    <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
                  </a>
                </div>
                <a href="<?php echo $product['href']; ?>" class="product-card__btn btn btn_white">Подробнее</a>
                <a href="<?php echo $product['href']; ?>" class="product-card__link" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
                  <span class="product-card__title" itemprop="name"><?php echo $product['name']; ?></span>
                  <meta itemprop="price" content="<?php echo str_replace(array('руб', " "), '', $product['price']); ?>">
                  <meta itemprop="priceCurrency" content="RUB">
                  <link itemprop="availability" href="http://schema.org/InStock">
                  <span class="product-card__price">
                    <?php if (!$product['special']) { echo str_replace('руб', '', $product['price']); } else { echo str_replace('руб', '', $product['special']); } ?> ₽</span>
                  <?php if($product['price_works']) { ?><span class="product-card__price-work"><?php echo str_replace('руб', '', $product['price_works']); ?> ₽ с материалами заказчика</span><?php } ?>
                </a>
              </div>
            </div>
            <?php } ?>
          </div>
          <div class="category__pagination"><?php echo $pagination; ?></div>
          <?php }else{ ?>
          <p><?php echo $text_empty; ?></p>
          <div class="buttons">
            <div class="pull-right">
              <a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a>
            </div>
          </div>
          <?php } ?>
      <?php echo $content_bottom; ?>
    </div>
</div>
<script><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';

	var search = $('#content input[name=\'search\']').prop('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>

<?php echo $footer; ?>
