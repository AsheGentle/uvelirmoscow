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
  <div class="row">
    <div id="content">
        <h1 class="hidden-xs"><?php echo $heading_title; ?></h1>
        <div class="hidden-xs"><?php echo $content_top; ?></div>
        <div class="all-content">
            <div class="article">
      <p>Приносим свои извинения!<br>Наш сайт обновился и некоторые товары теперь недоступны по старым адресам!<br>Воспользуйтесь формой поиска по сайту, чтобы найти интересующий Вас товар или оставьте заявку и мы перезвоним и ответим по стоимости и срокам изготовления интересующего Вас изделия.</p>

                </div>
      <?php echo $content_bottom; ?></div>
    </div>
  </div>
</div>
<?php echo $footer; ?>
