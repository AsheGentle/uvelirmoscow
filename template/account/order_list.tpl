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
      <h1 class="title-3"><?php echo $heading_title; ?></h1>
      <?php if ($orders) { ?>
            <div class="order-list clearfix">
          <div>
            <?php foreach ($orders as $order) { ?>
            <div class="my-account__order">
				<div class="left-col"><?php echo $column_order_id; ?></div>
				<div class="right-col">#<?php echo $order['order_id']; ?></div>
				<div class="left-col"><?php echo $column_date_added; ?></div>
				<div class="right-col"><?php echo $order['date_added']; ?></div>
				<div class="left-col"><?php echo $column_status; ?></div>
				<div class="right-col"><?php echo $order['status']; ?></div>
				<div class="left-col"><?php echo $column_total; ?></div>
				<div class="right-col"><?php echo $order['total']; ?></div>
				<div class="my-account__order-btn">
                    <a href="<?php echo $order['href']; ?>" data-toggle="tooltip" title="<?php echo $button_view; ?>" class="btn btn-primary">Открыть
                    </a>
                </div>
            </div>
            <?php } ?>
          </div>
      </div>
      <div class="text-right"><?php echo $pagination; ?></div>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
      <div class="my-account__buttons">
	  <a href="/my-account" class="btn btn-default">Назад</a>
	  <a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a>
        <div class="pull-right"></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>