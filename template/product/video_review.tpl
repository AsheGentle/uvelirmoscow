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
<div class="container" id="content">
  <div class="category__title"><h1><?php echo $heading_title; ?></h1></div>

  <?php echo $content_top; ?>
  <div class="all-content reviews">
      <div class="reviews__head"><img alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" src="/image/catalog/info-icons/icon-videootzivi.png" /></div>
    <?php if ($videos) { ?>
    <div class="row reviews__video-galery">
      <?php foreach ($videos as $video) { ?>
      <div class="reviews__video col-4 col-xs-12">
          <!-- <a href="https://www.youtube.com/embed/<?php echo $video['url'];?>?rel=0&amp;showinfo=0" data-fancybox data-fancybox-type="iframe" class="fancybox"> -->
        <a href="javascript:;"
           onclick="openVideoModal('<?= $video['url']; ?>', '<?= $video['url_vk']; ?>')">

            <img data-src="<?php echo $video['photo']; ?>" alt="<?php echo $video['name']; ?>" class="img-responsive lazyload" />
          </a>
      </div>
      <?php } ?>
    </div>
    <script>

    </script>

    <!--<div class="row">
                <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
                <div class="col-sm-6 text-right"><?php echo $results; ?></div>
            </div>
            -->
    <?php } ?>
  </div>
  <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>
