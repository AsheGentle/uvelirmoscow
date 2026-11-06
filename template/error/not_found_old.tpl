<?php echo $header; ?>
<div class="container">
  <div class="row">

    <div id="content" class="col-sm-12">
        <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
        <h1 class="hidden-xs"><?php echo $heading_title; ?></h1>
        <div class="hidden-xs"><?php echo $content_top; ?></div>
        <div class="all-content">
            <div class="article" style="text-align:center">
      <p><?php echo $text_error; ?></p>

                </div>
      <?php echo $content_bottom; ?></div></div>
</div>
<?php echo $footer; ?>
