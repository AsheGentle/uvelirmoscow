<div class="simplecheckout-block" id="simplecheckout_cart" <?php echo $hide ? 'data-hide="true"' : '' ?> <?php echo $has_error ? 'data-error="true"' : '' ?>>
<?php if ($display_header) { ?>
    <div class="checkout-heading panel-heading"><?php echo $text_cart ?></div>
<?php } ?>
<?php if ($attention) { ?>
    <div class="alert alert-danger simplecheckout-warning-block"><?php echo $attention; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
    <div class="alert alert-danger simplecheckout-warning-block"><?php echo $error_warning; ?></div>
<?php } ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" onsubmit="return false;">
     <div class="cart_product-items clearfix">
		<?php foreach ($products as $product) { ?>
			<div class="cart_product-item col-md-4 col-xs-12">
				<div class="cart_product-item-head text-left">
					<a href="<?php echo $product['href']; ?>" class="cart_product-item-title"><?php echo $product['name']; ?></a>
					<button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="cart_product-item-remove" onclick="cart.remove('<?php echo $product['cart_id']; ?>');return false;"></button>
				</div>
				<span class="cart_product-item-model">Модель: <?php echo $product['model']; ?></span>
				<div class="cart_product-item-content text-center">
				<?php if ($product['thumb']) { ?>
				<a href="<?php echo $product['href']; ?>" class="cart_product-item-img"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
				<?php } ?>
				<div class="input-group btn-block" style="margin-top:15px;">
					<span class="cart_product-item-qty">Количество: </span>
                    <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" data-onchange="changeProductQuantity" value="<?php echo $product['quantity']; ?>" size="1" class="form-control" style="max-width:100px;float:none;border-radius:5px;" />
					<button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="btn btn-primary" data-onclick="increaseProductQuantity" style="min-width:50px;margin-left:5px;"><i class="fa fa-refresh"></i></button>
				</div>
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
				<span class="cart_product-item-price-text">Цена от <?php echo $product['total']; ?></span>
				</div>
			  </div>
		<?php } ?>
        </div>
		</form>

<?php foreach ($totals as $total) { ?>
    <div class="simplecheckout-cart-total" id="total_<?php echo $total['code']; ?>">
        <span><b><?php echo $total['title']; ?>:</b></span>
        <span class="simplecheckout-cart-total-value"><?php echo $total['text']; ?></span>
        <span class="simplecheckout-cart-total-remove">
            <?php if ($total['code'] == 'coupon') { ?>
                <i data-onclick="removeCoupon" title="<?php echo $button_remove; ?>" class="fa fa-times-circle"></i>
            <?php } ?>
            <?php if ($total['code'] == 'voucher') { ?>
                <i data-onclick="removeVoucher" title="<?php echo $button_remove; ?>" class="fa fa-times-circle"></i>
            <?php } ?>
            <?php if ($total['code'] == 'reward') { ?>
                <i data-onclick="removeReward" title="<?php echo $button_remove; ?>" class="fa fa-times-circle"></i>
            <?php } ?>
        </span>
    </div>
<?php } ?>
<?php if (isset($modules['coupon'])) { ?>
    <div class="simplecheckout-cart-total">
        <span class="inputs"><?php echo $entry_coupon; ?>&nbsp;<input class="form-control" type="text" data-onchange="reloadAll" name="coupon" value="<?php echo $coupon; ?>" /></span>
    </div>
<?php } ?>
<?php if (isset($modules['reward']) && $points > 0) { ?>
    <div class="simplecheckout-cart-total">
        <span class="inputs"><?php echo $entry_reward; ?>&nbsp;<input class="form-control" type="text" name="reward" data-onchange="reloadAll" value="<?php echo $reward; ?>" /></span>
    </div>
<?php } ?>
<?php if (isset($modules['voucher'])) { ?>
    <div class="simplecheckout-cart-total">
        <span class="inputs"><?php echo $entry_voucher; ?>&nbsp;<input class="form-control" type="text" name="voucher" data-onchange="reloadAll" value="<?php echo $voucher; ?>" /></span>
    </div>
<?php } ?>
<?php if (isset($modules['coupon']) || (isset($modules['reward']) && $points > 0) || isset($modules['voucher'])) { ?>
    <div class="simplecheckout-cart-total simplecheckout-cart-buttons">
        <span class="inputs buttons"><a id="simplecheckout_button_cart" data-onclick="reloadAll" class="button btn-primary button_oc btn"><span><?php echo $button_update; ?></span></a></span>
    </div>
<?php } ?>
<input type="hidden" name="remove" value="" id="simplecheckout_remove">
<div style="display:none;" id="simplecheckout_cart_total"><?php echo $cart_total ?></div>
<?php if ($display_weight) { ?>
    <div style="display:none;" id="simplecheckout_cart_weight"><?php echo $weight ?></div>
<?php } ?>
<?php if (!$display_model) { ?>
    <style>
    .simplecheckout-cart col.model,
    .simplecheckout-cart th.model,
    .simplecheckout-cart td.model {
        display: none;
    }
    </style>
<?php } ?>
</div>
