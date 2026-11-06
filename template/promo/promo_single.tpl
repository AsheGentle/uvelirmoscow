<?php echo $header; ?>
<div class="container">
  <div class="breadcrumbs row wrapper">
    <ul class="breadcrumbs__list" itemscope itemtype="https://schema.org/BreadcrumbList">
      <?php $bread_count = count($breadcrumbs); ?>
      <?php foreach ($breadcrumbs as $i => $breadcrumb) { ?>
      <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
        <?php if($i+1 > $bread_count) { ?>
        <span class="breadcrumbs__link" itemprop="name"><?php echo $breadcrumb['text']; ?></span>
        <?php } else { ?>
        <a class="breadcrumbs__link" href="<?php echo $breadcrumb['href']; ?>" itemprop="item">
          <span itemprop="name"><?php echo $breadcrumb['text']; ?></span>
        </a>
        <?php } ?>
        <meta itemprop="position" content="<?php echo $i+1; ?>" />
      </li>
      <?php } ?>
    </ul>
  </div>
</div>
<div class="container">
  <div class="row">
    <div id="content" class="<?php echo $class; ?> col-sm-12 akciya">
        <div class="promo-single__title">
			<h1><?php echo $heading_title; ?></h1>
		</div>
        <?php echo $content_top; ?>
        <div class="all-content">
            <div class="col-sm-12 article">
                <div class="article-subtitle">
                    <?php
                                  $deadline = date("YYYY-mm-dd", strtotime($date));
                                  $datenow = date('YYYY-mm-dd');
                                  if($deadline<$datenow) { ?>
                    <span class="promo-date closed"><?php echo $text_closed; ?><?php echo $date; ?></span>
                    <?php } else { ?>
                    <span class="promo-date current"><?php echo $text_current; ?><?php echo $date ; ?></span>
                    <?php } ?>
                </div>
                <?php echo $description; ?>
            </div>
        <?php echo $content_bottom; ?>
        </div>
        </div>
  </div>
</div>
<?php echo $footer; ?>