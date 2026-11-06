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
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> text-center login-page"><?php echo $content_top; ?>
      <h4 class="title-4"><?php echo $text_my_account; ?></h4>
      <ul class="list-unstyled">
        <li><a class="login-page__list-item" href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
        <li><a class="login-page__list-item" href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
        <li><a class="login-page__list-item" href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
      </ul>
      <h4 class="title-4"><?php echo $text_my_orders; ?></h4>
      <ul class="list-unstyled">
        <li><a class="login-page__list-item" href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
      </ul>
      <h4 class="title-4"><?php echo $text_my_newsletter; ?></h4>
      <ul class="list-unstyled">
        <li><a class="login-page__list-item" href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
      </ul>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
