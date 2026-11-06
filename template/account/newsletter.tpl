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
    <div id="content" class="<?php echo $class; ?> text-center login-page">
        <?php echo $content_top; ?>
      <h1 class="title-3"><?php echo $heading_title; ?></h1>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <div class="newsletter-form">
            <label class="d-block control-label"><?php echo $entry_newsletter; ?></label>
            <div class="newsletter-form__radio">
              <?php if ($newsletter) { ?>
              <label class="radio-inline">
                <input type="radio" name="newsletter" value="1" checked="checked" />
                <?php echo $text_yes; ?> </label>
              <label class="radio-inline">
                <input type="radio" name="newsletter" value="0" />
                <?php echo $text_no; ?></label>
              <?php } else { ?>
              <label class="radio-inline">
                <input type="radio" name="newsletter" value="1" />
                <?php echo $text_yes; ?> </label>
              <label class="radio-inline">
                <input type="radio" name="newsletter" value="0" checked="checked" />
                <?php echo $text_no; ?></label>
              <?php } ?>
            </div>
          </div>
        </fieldset>
        <div class="my-account__buttons clearfix">
		<a href="<?php echo $back; ?>" class="btn btn-default"><?php echo $button_back; ?></a>
		<input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary" />
          <div class="pull-left"></div>
          <div class="pull-right">
            
          </div>
        </div>
      </form>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>