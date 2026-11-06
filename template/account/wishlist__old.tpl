<?php echo $header; ?>
<div class="container">
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
        <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
        <?php echo $content_top; ?>
      <h2><?php echo $heading_title; ?></h2>
      <?php if ($products) { ?>
 <div class="cart_product-items clearfix">
		<?php foreach ($products as $product) { ?>
			<div class="cart_product-item col-md-4 col-xs-12">
				<div class="cart_product-item-head text-left">
					<a href="<?php echo $product['href']; ?>" class="cart_product-item-title"><?php echo $product['name']; ?></a>
					<button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="cart_product-item-remove" onclick="location.href='<?php echo $product['remove']; ?>';"></button>
				</div>
				<span class="cart_product-item-model">Модель: <?php echo $product['model']; ?></span>
				<div class="cart_product-item-content text-center">
				<?php if ($product['thumb']) { ?>
				<a href="<?php echo $product['href']; ?>" class="cart_product-item-img"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
				<?php } ?>
				<span class="cart_product-item-att" data-mfp-src="#cart_product-item-att-<?php echo $product['product_id']; ?>">Характеристики товара <i class="fa fa-question-circle" style="font-size: 19px;"></i></span>
				<div class="white-popup mfp-hide cart_product-item-att-popup" id="cart_product-item-att-<?php echo $product['product_id']; ?>">
				<h4>Характеристики изделия</h4>
				<ul class="cart_product-item-att-list">
				<?php foreach($product['attributes'] as $attributes_group){ ?>
					<?php foreach($attributes_group['attribute'] as $attribute){ ?>
					<?php if(!empty($attribute['attribute_hide'])){ continue ; }?>
					<li class="cart_product-item-att-el">
					<div class="cart_product-item-att-name">
					<?php echo $attribute['name']; ?>
					</div>
					<div class="cart_product-item-att-dots"></div>
					<div class="cart_product-item-att-text">
					<?php echo $attribute['text']; ?>
					</div>
					</li>
					<?php } ?>
				<?php } ?>
				</ul>
				</div>
				</div>
				<div class="cart_product-item-price">
				<span class="cart_product-item-price-text">Цена от <?php echo $product['price']; ?></span>
				<button style="display:block;padding: 10px 20px; margin: 10px;background: #65000b;color:#fff" onclick="cart.add('<?php echo $product['product_id']; ?>');" class="product-card-buy-btn-order product-card-buy-btn-order_cart">Заказать</button>
				</div>
			  </div>
		<?php } ?>
        </div>
      <?php } else { ?>
      <p class="text-center"><?php echo $text_empty; ?></p>
      <?php } ?>
      <div class="buttons clearfix text-center">
	  <a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a>
        <div class="pull-right"></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>