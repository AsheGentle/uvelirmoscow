<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
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
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>

	  <? foreach ($products as $product) { ?>
		<? $number = $product['count']?>
		<? } ?>
		<div class="quantity-products-cart"><span><h1>Количество товаров в корзине: <? echo $number ?></h1></span></div>

      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
	  
	  <div class="column-product-cart col-sm-12">
		<div class="row">
			<div class="col-sm-5 col-md-6 padding-clear">
				<span><?php echo $column_image; ?></span>
			</div>
			<div class="lists col-sm-7 col-md-6 padding-clear">
				<span><?php echo $column_status; ?></span>
				<span><?php echo $column_price; ?></span>
				<span><?php echo $column_quantity; ?></span>
				<span><?php echo $column_total; ?></span>
			</div>
			
			<div class="sub-column col-sm-12">
				<?php foreach ($products as $key => $product) { ?>
				<div class="row column">
				<div class="col-md-5 padding-clear">
					<?php if ($product['thumb']) { ?>
					
					<div class="col-md-3">
						<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
					</div>
					<?php } ?>
					<div class="col-md-9">
						<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
						<p><?php echo $product['description']?></p>
						<p><?php if ($product['option']) { ?>
							<?php foreach ($product['option'] as $option) { ?>
							<br />
							<?php if (!$product['stock']) { ?>
							<span class="text-danger">***</span>
							<?php } ?>
							<small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
							<?php } ?>
							<?php } ?></p>
					<?php if ($product['reward']) { ?>
                  <br />
                  <small><?php echo $product['reward']; ?></small>
                  <?php } ?>
                  <?php if ($product['recurring']) { ?>
                  <br />
                  <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                  <?php } ?>
					</div>
					</div>





					<div class="col-sm-2">
						<span class="i-store"><i class="fa fa-check-circle-o"></i> В наличии</span>
					</div>
					<div class="col-sm-1 padding-clear">
						<strong><?php echo $product['price']; ?></strong>
					</div>
					<div class="col-sm-2">
						<div class="price-controller">
							<span class="input-minus" onclick="cart.update(<?php echo $product['cart_id']; ?>, <?php echo ($product['quantity'] - 1);?> ); return false;">-</span>
							<input id="quantity" type="text" name="quantity" value="<?php echo $product['quantity']; ?> шт." size="1" class="form-control">
							<span class="input-plus" onclick="cart.update(<?php echo $product['cart_id']; ?>, <?php echo ($product['quantity'] + 1); ?>); return false;">+</span>
						</div>
					</div>
					<div class="col-sm-2">
						<button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="Удалить" class="btn-drawing">
							<i class="fa fa-times"></i>
						</button>
						<span id="price_product" class="price"><? echo $product['total']?></span>
						<span class="bonus">
							<div id="text_reward">
								<? $reward_product = $product['points']?>
								<span style="color: darkgrey"><?php echo("+ $reward_product $text_reward на товар")?></span>
							</div>
						</span>
					</div>
				</div>
				<?php } ?>
			</div>
		</div>
	</div>

   </form>
      <?php if ($modules) { ?>
      <div class="panel-group" id="accordion">
		<div class="col-sm-9 padding-clear">
				<label class="col-sm-5 padding-clear control-label" for="input-coupon">Номер подарочного сертификата или промо-код*:</label>
				<div class="input-group form">
					<input type="text" name="coupon" value="" id="input-coupon" class="form-control form-input">
					<input type="button" value="Активировать" id="button-coupon" class="btn btn-default active-coupon">
				</div>
		</div>
		<div class="col-sm-3 text-right">
		<?php foreach ($totals as $total) { ?>
			<p><?php echo $total['title']; ?>:
			<strong><?php echo $total['text']; ?></strong></p>
		<?php } ?>
			<span style="color: darkgrey"><?php echo("+ $reward $text_reward на заказ")?></span>
		</div>
      </div>
      <?php } ?>

      <div class="buttons">
        <div class="pull-left">
			<a href="<?php echo $continue; ?>" class="btn btn-default back"><!-- <?php echo $button_shopping; ?> --> Назад к товарам</a>
			<a class="btn btn-default back" onclick="$('#cart').load('index.php?route=checkoutsr/cart/removeAll'); window.location.assign('index.php?route=common/home');">Очистить корзину</a>
		</div>
        <div class="pull-right text-right">
			<?php if(!$logged) { ?>
			<a href="<?php echo $checkoutsr; ?>&noreg" class="btn btn-default make-without">Оформить без регистрации</a>
			<? } ?>
			<a href="<?php echo $checkoutsr; ?>" class="btn btn-primary make"><?php echo $button_checkout; ?></a>
			<p>Регистрация даст Вам привелегий участника клуба <a href="<?php echo $coiffeur_club['href']?>" class="name-site">«Coiffeur»</a>. </br> Получайте 50% от суммы заказа на бонусный счет!</p>
		</div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<div class="cart-info">
	<div class="container">
		<p>* Если у вас имеется подарочный сертификат или промокод, то введите его в поле под корзиной и нажмите кнопку "Активировать". Внимание! Ввести можно только один промокод/подарочный сертификат. Подарочный сертификат используеться одновременно и полностью. В случае выборов товаров на сумму меньше номинала. Остаток не возвращается.<p>
	</div>
</div>
<div id="collapse-coupon" class="panel-collapse collapse">
	<div class="panel-body">
		<label class="col-sm-2 control-label" for="input-coupon"><?php echo $entry_coupon; ?></label>
		<div class="input-group">
			<input type="text" name="coupon" value="<?php echo $coupon; ?>" placeholder="<?php echo $entry_coupon; ?>" id="input-coupon" class="form-control" />
			<span class="input-group-btn">
        <input type="button" value="<?php echo $button_coupon; ?>" id="button-coupon" data-loading-text="<?php echo $text_loading; ?>"  class="btn btn-primary" />
        </span></div>
		<script type="text/javascript"><!--
			$('#button-coupon').on('click', function() {
				$.ajax({
					url: 'index.php?route=total/coupon/coupon',
					type: 'post',
					data: 'coupon=' + encodeURIComponent($('input[name=\'coupon\']').val()),
					dataType: 'json',
					beforeSend: function() {
						$('#button-coupon').button('loading');
					},
					complete: function() {
						$('#button-coupon').button('reset');
					},
					success: function(json) {
						$('.alert').remove();

						if (json['error']) {
							$('.breadcrumb').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

							$('html, body').animate({ scrollTop: 0 }, 'slow');
						}

						if (json['redirect']) {
							location = json['redirect'];
						}
					}
				});
			});
			//--></script>
	</div>
</div>
<?php echo $footer; ?>
