
<?php echo $header; ?>

<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row">
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
    </div>
  </div>
</div>
<style>
  .product-thumb{
    position: relative;
  }
  .product-thumb .button_delete{
    position: absolute;
    top: 10px;
    left: 10px;
  }
</style>
<script type="text/javascript"><!--
  $('#content').load('index.php?route=product/ocd_viewed/getProducts', {limit: <?php echo $limit; ?>, page: <?php echo $page; ?>});
  //-->
</script>
<?php echo $footer; ?>