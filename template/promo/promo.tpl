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
<div class="container promo__cat" id="content">
  <div class="wrapper">
    <div class="category__title"><h1><?php echo $name; ?></h1></div>
    <?php echo $content_top; ?>
    <?php if ($promo_singles) { ?>
    <div class="row">
      <?php foreach ($promo_singles as $promo_single) { ?>
      <div class="col-12 promo__cat-single">
        <a href="<?php echo $promo_single['href']; ?>" class="promo__cat-single-link">
          <div class="promo__cat-single-img">
            <img class="img-responsive lazyload" data-src="/image/<?php echo $promo_single['thumb']; ?>" alt="<?php echo $promo_single['name']; ?>">
          </div>
        </a>
      </div>
      <?php } ?>
    </div>
    <div class="promo__cat-pagination category__pagination"><?php echo $pagination; ?></div>
    <?php } ?>
    <?php if (!$promo_singles) { ?>
    <p><?php echo $text_empty; ?></p>
    <?php } ?>
    <?php echo $content_bottom; ?>
  </div>
</div>
<?php echo $footer; ?>