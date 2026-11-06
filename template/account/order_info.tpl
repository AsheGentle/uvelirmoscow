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
<div class="container">
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
    <div id="content" class="<?php echo $class; ?> login-page">
        <?php echo $content_top; ?>
      <h4 class="title-4"><?php echo $heading_title; ?></h4>
      <table class="table">
        <thead>
          <tr>
            <td class="text-left" colspan="2"><?php echo $text_order_detail; ?></td>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="text-left" style="width: 50%;"><?php if ($invoice_no) { ?>
              <b><?php echo $text_invoice_no; ?></b> <?php echo $invoice_no; ?><br />
              <?php } ?>
              <b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
              <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></td>
          </tr>
        </tbody>
      </table>
      <div class="order">
		<div class="cart_product-items order-items">
					<?php foreach ($products as $product) { ?>
			<div class="cart_product-item">
				<div class="cart_product-item-head">
					<a href="<?php echo $product['href']; ?>" class="cart_product-item-title"><?php echo $product['name']; ?></a>
				</div>
				<span class="cart_product-item-model">Модель: <?php echo $product['model']; ?></span>
				<div class="cart_product-item-content">
				<?php if ($product['image']) { ?>
				<a href="<?php echo $product['href']; ?>" class="cart_product-item-img"><img src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
				<?php } ?>
				</div>
				<div class="cart_product-item-price">
                    <span class="cart_product-item-qty">Количество: <?php echo $product['quantity']; ?></span>
				    <span class="cart_product-item-price-text">Цена от <?php echo $product['total']; ?></span>
				</div>
			  </div>
		<?php } ?>
		</div>
        <div class="order-total">
            <div class="order-total-name"><b><?php echo $totals[2]['title']; ?></b></div>
            <div class="order-total-text"><?php echo $totals[2]['text']; ?></div>
        </div>
      </div>
      <?php if ($comment) { ?>
      <table class="table table-bordered table-hover">
        <thead>
          <tr>
            <td class="text-left"><?php echo $text_comment; ?></td>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td class="text-left"><?php echo $comment; ?></td>
          </tr>
        </tbody>
      </table>
      <?php } ?>
      <?php if ($histories) { ?>
      <h4 class="title-4"><?php echo $text_history; ?></h4>
      <table class="table table-bordered table-hover">
        <thead>
          <tr>
            <td class="text-left"><?php echo $column_date_added; ?></td>
            <td class="text-left"><?php echo $column_status; ?></td>
            <td class="text-left"><?php echo $column_comment; ?></td>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($histories as $history) { ?>
          <tr>
            <td class="text-left"><?php echo $history['date_added']; ?></td>
            <td class="text-left"><?php echo $history['status']; ?></td>
            <td class="text-left"><?php echo $history['comment']; ?></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
      <?php } ?>
      <div class="my-account__buttons clearfix text-center">
	  <a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a>
        <div class="pull-right"></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>