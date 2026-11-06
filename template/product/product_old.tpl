<?php echo $header; ?>
<?php
$url = ((!empty($_SERVER['HTTPS'])) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
$url = explode('?', $url);
$url = $url[0];
?>
<div class="container  product-card-container" style="background-color:#fff;">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div class="xleb"><ul class="breadcrumb" vocab="http://schema.org/" typeof="BreadcrumbList">
      <?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
        <li property="itemListElement" typeof="ListItem">
          <?php if($i+1<count($breadcrumbs)) { ?>
            <a href="<?php echo $breadcrumb['href']; ?>" property="item" typeof="WebPage">
              <span property="name"><?php echo $breadcrumb['text']; ?></span>
            </a>
            <meta property="position" content="<?php echo $i ?>">
          </li>
          <?php } else { ?>
            <span property="name"><?php echo $breadcrumb['text']; ?></span>
            <meta property="position" content="<?php echo $i ?>">
          </li>
        <?php } ?>
          <?php } ?> <!-- <link itemprop="url" href="<?php echo $breadcrumb['href']; ?>" /> --></ul></div>
    <div id="content" itemscope itemtype="http://schema.org/Product" class="<?php echo $class; ?>">
      <meta itemprop="brand" content="UvelirMoscow">
    <h1 itemprop="name"><?php echo $heading_title; ?></h1>
    <div class="all-content">

    <div class="container product-card-all-wrap row">
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-md-7'; ?>
        <?php } else { ?>
        <?php $class = 'col-md-8 col-sm-12'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?> width-slider">

            <?php if ($special) { ?>
            <div class="percent"><i class="promo-stone"></i></div>
            <?php } ?>
          <?php if ($thumb || $images) { ?>
          <div class="product-zoom-slider">
            <?php if ($thumb) { ?>

<style>
// div#ster {
    // width: 100%;
    // overflow: hidden; /* clearfix */
// }
div#ster:before {
    content: "";
    padding-top: 100%;
    float: left;
}
</style>
<div class="slider-nav-main-wrap">
			<div class="sliderd2" id='slider-nav'>
			<div>
				<div class="video-wrapper">
					<a href="<?php echo $popup; ?>" data-lightbox="<?php echo $heading_title; ?>"><img class="cloudzoom-gallery img-responsive lazyload" itemprop="image" alt ="<?php echo $heading_title; ?>" id ="zoom1" data-src="<?php echo $thumb; ?>" src="<?php echo $thumb; ?>" loading="lazy" data-cloudzoom='zoomSizeMode:"image",autoInside: 550,zoomPosition:"inside", zoomOffsetX:0 '></a>
				</div>
			</div>


            <?php if ($images) { ?>
                  <?php foreach ($images as $image) { ?>
			<div>
				<div class="video-wrapper">
          <a href="<?php echo $image['popup']; ?>" data-lightbox="<?php echo $heading_title; ?>"><img class="cloudzoom-gallery img-responsive lazyload" data-src="<?php echo $image['thumb']; ?>" src="<?php echo $image['thumb']; ?>" loading="lazy" data-image="<?php echo $image['thumb']; ?>" data-cloudzoom ="useZoom:'.cloudzoom', image:'<?php echo $image['popup']; ?>' " alt="<?php echo $heading_title; ?>" /></a>

				</div>
			</div>
                  <?php } ?>
              <?php } ?>

			  <?php if ($video_review) { ?>
			<div>
				<div class="video-wrapper" id=ster>
            <iframe class="yt-player" style='width:100%;position: absolute; height: 100%; max-width: 550px; max-height: 309.375px; border: none; top: 50%; transform: translateY(-50%);' src="https://www.youtube.com/embed/<?php echo $video_review; ?>?controls=1&rel=0&enablejsapi=1" allowfullscreen></iframe>
				</div>
			</div>
			  <?php } ?>

			</div>


			<div class="main-slider" id="main-slider">
			<div>
				<div class="video-wrapper" style='display: table;'>
					<img itemprop="image" style="width:100%;" alt ="<?php echo $heading_title; ?>" data-src="<?php echo $thumb; ?>" src="<?php echo $thumb; ?>" loading="lazy" class="lazyload"/>
				</div>
			</div>
            <?php if ($images) { ?>
                  <?php foreach ($images as $image) { ?>
			<div>
				<div class="video-wrapper" style='display: table;'>
                        <img data-src="<?php echo $image['thumb']; ?>" src="<?php echo $image['thumb']; ?>" loading="lazy" style="width:100%;" alt="<?php echo $heading_title; ?>" class="lazyload"/>
				</div>
			</div>
                  <?php } ?>
              <?php } ?>
			  <?php if ($video_review) { ?>
			<div>
				<div class="video-wrapper" style='display: table;'>
					<img data-src='//i1.ytimg.com/vi/<?php echo $video_review; ?>/hqdefault.jpg' src='//i1.ytimg.com/vi/<?php echo $video_review; ?>/hqdefault.jpg' loading="lazy" alt ="<?php echo $heading_title; ?>" style='width:90%' class="lazyload"/>
				</div>
			</div>
			  <?php } ?>

		</div>
</div>


		    <?php } ?>
		  </div>
          <?php } ?>
            <script>
				//document.oncontextmenu=new Function("return false;")
                        var tag = document.createElement('script');
        tag.id = 'iframe-demo';
        tag.src = 'https://www.youtube.com/iframe_api';
        var firstScriptTag = document.getElementsByTagName('script')[0];
        firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

        var player;
        function onYouTubeIframeAPIReady() {
            var elems1 = document.getElementsByClassName('yt-player');
            for(var i = 0; i < elems1.length; i++) {

                player = new YT.Player(elems1[i], {
                    events: {
                        //'onReady': onPlayerReady,
                        'onStateChange': onPlayerStateChange
                    }
                });
            }
        }
        function onPlayerReady(event) {

        }
        function handleVideo(playerStatus) {
            if (playerStatus == -1) {
                // unstarted
                $('#main-slider').slick('slickPause');
            } else if (playerStatus == 0) {
                // ended
                $('#main-slider').slick('slickPlay');

            } else if (playerStatus == 1) {
                // playing = green
                $('#main-slider').slick('slickPause');
            } else if (playerStatus == 2) {
                // paused = red
                $('#main-slider').slick('slickPlay');
            } else if (playerStatus == 3) {
                // buffering = purple
            } else if (playerStatus == 5) {
                // video cued
            }
        }
        function onPlayerStateChange(event) {
            handleVideo(event.data);
        }
        $('#main-slider').on('beforeChange', function(event, slick, currentSlide, nextSlide){
            $('.yt-player').each(function(){
                this.contentWindow.postMessage('{"event":"command","func":"' + 'pauseVideo' + '","args":""}', '*')
            });
        });
            </script>
        </div>
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-md-5'; ?>
        <?php } else { ?>
        <?php $class = 'col-md-4 col-sm-12'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?> width-info">
<div class="social-and-button">
          <div id="product" class="product-card-buy-wrap-first">
		  <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
                <div class="product-model" style='z-index:1;'>
                  <span class="product-card-buy-model" > Модель: <?php echo $model; ?> </span>
                  <meta itemprop="sku" content="<?php echo $model; ?>">
                </div>
                <?php if ($review_status) { ?>
                <?php if($count_rating){ ?>
                <div class="rating-box" itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating">
                  <meta itemprop="ratingValue"  content="<?php echo $rating; ?>">
                  <meta itemprop="ratingCount"  content="<?php echo $count_rating; ?>">
                </div>
              <?php } ?>
                <div class="rating">
                </div>
                <?php } ?>
	</div>

<div class="product-card-buy-wrap-second">
					<button type="button" onclick="wishlist.add('<?php echo $prod_id; ?>');" class="product-card-btn-izbrannoe product-card-btn-icon">
						<i class="far fa-heart"></i>
							<span>В избранное</span>
					</button>
					<button type="button" class="product-card-btn-hochy product-card-btn-icon" data-mfp-src="#modal-tovar">
						<i class="fas fa-gift"></i>
            <span>Хочу подарок</span>
					</button>
				</div>



<!-- <button style="display:block;padding: 10px 20px; margin: 10px;background: #65000b;color:#fff" id="fastorder" class="product-card-buy-btn-order product-card-buy-btn-order_cart">Заказать</button> -->
<?php echo $fastorder; ?>

<div class="btn btn-primary btn-chk btn-fastorder">
    <a class="" href="#" onclick="cart.add('<?php echo $prod_id; ?>');return false" >Положить в корзину</a>
</div>
</div>
<div class="price-wrapper-product">
<?php if ($price) { ?>
          <ul itemprop="offers" itemscope itemtype="http://schema.org/Offer" style='text-align:left;' class="list-unstyled text-center product-card-list-price">
              <?php if (!$special) { ?>
              <li>
                  <div class="price-main"><div style="float:left;" class="price-main-wrap"> <span class="price-main-wrap-first-span"><?php echo $price_main; ?> от</span> <?php $price = str_replace('руб', '', $price); ?><?php $pricenull = str_replace(' ', '', $price); ?><span itemprop="price" content="<?php echo $pricenull; ?>.00" class="price-main-wrap-second-span"><?php echo $price; ?></span><span class="price-main-wrap-third-span">руб</span> * <span data-toggle="tooltip" class="informer price-main-wrap-fourth-span" title="Стоимость работы за одно украшение, включая материалы (описаны в карточке)."><i class="fa fa-question-circle" style='font-size: 19px;'></i></span></div><span style='color: #ababab;font-size:14px;' class="price-main-wrap-sixth-span">Работа: <?php echo $price_works; ?> <span data-toggle="tooltip" class="informer price-main-wrap-seventh-span" title="Стоимость работы, из материалов заказчика (не включает угар и закрепку камней)."><i class="fa fa-question-circle" style='font-size: 19px;'></i></span><br />Материалы: <?php  echo $price_materials; ?><span data-toggle="tooltip" class="informer price-main-wrap-eighth-span" title="Стоимость драгоценных камней и металлов использованных для изготовления данного украшения. Если Вы выберете другие камни, либо украшение будет другого размера, эта цифра - изменится (как в большую, так и в меньшую сторону)."><i class="fa fa-question-circle" style='font-size: 19px;'></i></span> </span> </div>
          <meta itemprop="url" content="<?php echo $url; ?>">
          <meta itemprop="priceCurrency" content="RUB">
          <?php if($stock == 'На складе'): ?>
					<link itemprop="availability" href="http://schema.org/InStock">
          <?php else: ?>
          <link itemprop="availability" href="http://schema.org/PreOrder">
          <?php endif ?>
              </li>
              <?php } else { ?>
              <li>
                  <div class="price-main">
                    <div style="float:left;" class="price-main-wrap">
                      <span class="price-main-wrap-first-span"><?php echo $price_main; ?> от</span>
                       <?php $special = str_replace('руб', '', $special); ?>
                       <?php $specialnull = str_replace(' ', '', $special); ?>
                       <span itemprop="price" content="<?php echo $specialnull; ?>.00" class="price-main-wrap-second-span"><?php echo $special; ?></span>
                       <span class="price-main-wrap-third-span">руб</span>* <span data-toggle="tooltip" class="informer price-main-wrap-fourth-span" title="Стоимость работы за одно украшение, включая материалы (описаны в карточке)."><i class="fa fa-question-circle" style='font-size: 19px;'></i></span>
                       <span class="price-old">Старая цена: <?php echo $price; ?></span>                      
                     </div>
                     </div>
                  <meta itemprop="url" content="<?php echo $url; ?>">
                  <meta itemprop="priceCurrency" content="RUB">
                  <?php if($stock == 'На складе'): ?>
        					<link itemprop="availability" href="http://schema.org/InStock">
                  <?php else: ?>
                  <link itemprop="availability" href="http://schema.org/PreOrder">
                  <?php endif ?>
              </li>
              <?php } ?>
              <?php if ($tax) { ?>
              <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
              <?php } ?>
              <?php if ($points) { ?>
              <li><?php echo $text_points; ?> <?php echo $points; ?></li>
              <?php } ?>
              <?php if ($discounts) { ?>
              <li>
                  <hr>
              </li>
              <?php foreach ($discounts as $discount) { ?>
              <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
              <?php } ?>
              <?php } ?>

          </ul>
<?php } ?>
</div>
          </div>

<!-- <?php if ($price) { ?>
          <ul itemprop="offers" itemscope itemtype="http://schema.org/Offer" style='text-align:left;' class="list-unstyled text-center product-card-list-price">
              <?php if (!$special) { ?>
              <li>
                  <div class="price-main"><div style="float:left;" class="price-main-wrap"> <span class="price-main-wrap-first-span"><?php echo $price_main; ?> от</span> <?php $price = str_replace('руб', '', $price); ?><?php $pricenull = str_replace(' ', '', $price); ?><span itemprop="price" content="<?php echo $pricenull; ?>.00" class="price-main-wrap-second-span"><?php echo $price; ?></span><span class="price-main-wrap-third-span">руб</span> * <span data-toggle="tooltip" class="informer price-main-wrap-fourth-span" title="Стоимость работы за одно украшение, включая материалы (описаны в карточке)."><i class="fa fa-question-circle" style='font-size: 19px;'></i></span><span style="color: #000000;font-size: 11px;" class="price-main-wrap-fifth-span">* (цена указана за 1 изделие)</span></div><span style='color: #ababab;font-size:14px;' class="price-main-wrap-sixth-span">Работа: <?php echo $price_works; ?> <span data-toggle="tooltip" class="informer price-main-wrap-seventh-span" title="Стоимость работы, из материалов заказчика (не включает угар и закрепку камней)."><i class="fa fa-question-circle" style='font-size: 19px;'></i></span><br />Материалы: <?php  echo $price_materials; ?><span data-toggle="tooltip" class="informer price-main-wrap-eighth-span" title="Стоимость драгоценных камней и металлов использованных для изготовления данного украшения. Если Вы выберете другие камни, либо украшение будет другого размера, эта цифра - изменится (как в большую, так и в меньшую сторону)."><i class="fa fa-question-circle" style='font-size: 19px;'></i></span> </span> </div>
					<meta itemprop="priceCurrency" content="RUB">
					<link itemprop="availability" href="http://schema.org/InStock">
              </li>
              <?php } else { ?>
              <li>
                  <div class="price-main"><?php echo $price_main; ?><br><div class="price-comment single"><?php echo $price_comment_single; ?></div><?php $special = str_replace('руб', '', $special); ?><?php $pricenull = str_replace(' ', '', $special); ?><span itemprop="price" content="<?php echo $pricenull; ?>.00"><?php echo $special; ?></span><span>руб</span><span class="price-old" style="text-decoration: line-through;"><?php echo $price; ?></span></div>
                  <meta itemprop="priceCurrency" content="RUB">
                  <link itemprop="availability" href="http://schema.org/InStock">
              </li>
              <?php } ?>
              <?php if ($tax) { ?>
              <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
              <?php } ?>
              <?php if ($points) { ?>
              <li><?php echo $text_points; ?> <?php echo $points; ?></li>
              <?php } ?>
              <?php if ($discounts) { ?>
              <li>
                  <hr>
              </li>
              <?php foreach ($discounts as $discount) { ?>
              <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
              <?php } ?>
              <?php } ?>

          </ul>
<?php } ?> -->




<div class="product-card-desc-section">

          <div class="text-left col-xs-12 row">

<div class="product-card-desc-block <?php if ($alternatives) { echo 'col-md-8'; }else{ echo 'col-md-12';} ?> col-sm-12">
<span style='padding-left: 6px; font-size:16px' class="span-desc-product-x"><b>Характеристики товара</b></span>
                  <table class="table">
                      <tbody>
                      <?php foreach ($attribute_groups as $attribute_group) { ?>
                      <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
					  <?php if(!empty($attribute['attribute_hide'])){ continue ; }?>
                      <tr>
                          <td class="name-td-attr"><?php echo $attribute['name']; ?></td>
                          <td class="text-td-attr"><?php echo $attribute['text']; ?></td>
                      </tr>
                      <?php } ?>
                      <?php } ?>
<?php if ($main_category['text']) { ?>
                      <tr>
                          <td>Категории:</td>
                          <td><a href="<?php echo $main_category['href']; ?>"><?php echo $main_category['text']; ?></a>﻿﻿﻿﻿﻿﻿</td>
                      </tr>
<?php } ?>

                      </tbody>
                  </table>
<div class="product-card-tab-section">
			<ul class="product-card-tab-section__link-list">
				<li class="product-card-tab-section__link-item">
					<input id="product-card-tab-section__item_1" type="radio" name="tabs" checked>
					<label for="product-card-tab-section__item_1" class="label-product-card-tab-section__item_1" title="Описание"><span>Описание</span></label>
				</li>
				<li class="product-card-tab-section__link-item">
					<input id="product-card-tab-section__item_2" type="radio" name="tabs">
					<label for="product-card-tab-section__item_2" class="label-product-card-tab-section__item_2" title="Опции"><span>Опции</span></label>
				</li>
				<li class="product-card-tab-section__link-item">
					<input id="product-card-tab-section__item_3" type="radio" name="tabs">
					<label for="product-card-tab-section__item_3" class="label-product-card-tab-section__item_3" title="Условия доставки"><span>Условия доставки</span></label>
				</li>
				<li class="product-card-tab-section__link-item">
					<input id="product-card-tab-section__item_4" type="radio" name="tabs">
					<label for="product-card-tab-section__item_4" class="label-product-card-tab-section__item_4" title="Условия оплаты"><span>Условия оплаты</span></label>
				</li>
			</ul>
			<ul class="product-card-tab-section__list">
				<li class="product-card-tab-section__item product-card-tab-section__item_1 dis-block" id="product-card-tab-section__content-item_1" itemprop="description">
					<h4 class="product-card-tab-section__suptitle">
						Описания товара:
					</h4>
                    <?php $description = preg_replace('~style="[^"]*"~i', '', $description);
						  $description = strip_tags($description,'<strong><a><p><h1><h2><h3><ul><li><br><span>');
						  echo $description; ?>
				</li>
				<li class="product-card-tab-section__item" id="product-card-tab-section__content-item_2">
					<h4 class="product-card-tab-section__suptitle">
						Опции доступные для этого изделия:
					</h4>
					<ul class="product-card-tab-section__suplist">
						<li class="product-card-tab-section__supitem">
							<p class="product-card-tab-section__text">
								- Бесплатное изменение дизайна под Ваш вкус
							</p>
						</li>
						<li class="product-card-tab-section__supitem">
							<p class="product-card-tab-section__text">
								- Анатомическое 3D-моделирование
							</p>
						</li>
						<li class="product-card-tab-section__supitem">
							<p class="product-card-tab-section__text">
								- Защита от истирания полным анодированием
							</p>
						</li>
						<li class="product-card-tab-section__supitem">
							<p class="product-card-tab-section__text">
								- Качество исполнения High-jewelry (самый высокий класс)
							</p>
						</li>
						<li class="product-card-tab-section__supitem">
							<p class="product-card-tab-section__text">
								- Пожизненная гарантия, бесплатная чистка и полировка
							</p>
						</li>
						<li class="product-card-tab-section__supitem">
							<p class="product-card-tab-section__text">
								- Изготовление из Ваших материалов
							</p>
						</li>
					</ul>
				</li>
				<li class="product-card-tab-section__item" id="product-card-tab-section__content-item_3">
					<h4 class="product-card-tab-section__suptitle">
						Условия доставки:
					</h4>
					<p class="product-card-tab-section__text">
	<span class="title">Доставка заказа осуществляется следующими способами:</span>
</p>
<p class="product-card-tab-section__text">
	<span>1. Доставка курьерской службой по Москве и Санкт-Петербургу</span>
</p>
<p class="product-card-tab-section__text">
	Передав Ваш заказ службе доставки, Вы сможете получить его уже на следующий день. Перед доставкой мы в любом случае ОБЯЗАТЕЛЬНО свяжемся с Вами и подтвердим, что курьер к Вам выехал.
</p>
<p class="product-card-tab-section__text">
	<span>2. Самовывозом из нашего офиса в г.Москва (м. Кузнецкий мост)</span>
</p>
<p class="product-card-tab-section__text">
	Для вашего удобства, Вы можете самостоятельно забрать Ваш заказ у нас в офисе с 11:00 до 20:00 в рабочие дни.
</p>
<p class="product-card-tab-section__text">
	Наш адрес: г.Москва, ул. Кузнецкий мост, дом 7, строение 3, этаж 2 (меньше 5 минут от метро Кузнецкий мост)
</p>
<p class="product-card-tab-section__text">
	<span>3. Доставка курьерской службой по всей России</span>
</p>
<p class="product-card-tab-section__text">
	Мы с радостью сообщаем Вам, что Вы можете получить ваш заказ по удобному для Вас адресу в любом населенном пункте на территории Российской Федерации. Доставку в регионы России осуществляет компания СПСР-ЭКСПРЕСС.
</p>
<p class="product-card-tab-section__text">
	Уточнить о возможных способах доставки Вы можете у нашего менеджера:
</p>
<p class="product-card-tab-section__text">
	телефон в Москве: 8 (499) 688-91-49
</p>
<p class="product-card-tab-section__text">
	Время работы: с 11.00 до 20.00, выходной воскресенье.
</p>
<p class="product-card-tab-section__text">
	Россия велика и бывают случаи, когда курьеры не могут доставить Ваш заказ в труднодоступные места. В такой ситуации Вы можете забрать заказ самостоятельно в ближайшем районном центре после получения уведомления.
</p>
				</li>
				<li class="product-card-tab-section__item" id="product-card-tab-section__content-item_4">
					<h4 class="product-card-tab-section__suptitle">
						Условия оплаты:
					</h4>
					<p class="product-card-tab-section__text">
	После оформления заказа в ювелирной студии UvelirMoscow, формируется счет на оплату.
</p>
<p class="product-card-tab-section__text">
	<span class="title">Оплатить</span>
</p>
<p class="product-card-tab-section__text">
	- на счет в банке;
</p>
<p class="product-card-tab-section__text">
	- любым переводом;
</p>
<p class="product-card-tab-section__text">
	- банковской картой;
</p>
<p class="product-card-tab-section__text">
	- электронными деньгами:
</p>
<p class="product-card-tab-section__text">
	Предоплата за заказ составляет 30% от общей стоимости заказа. Остальная сумма оплачивается при получении заказа.
</p>
				</li>
			</ul>
		</div>
</div>
<?php if ($alternatives) { ?>
<div class="recommended-carousel2-container col-md-4 col-sm-12 text-center">
<h4 class="recommended-carousel2-title">С этим товаром обычно покупают</h4>
      <div id="recommended-carousel2" class="owl-carousel ">
      <?php $i = 0; ?>
      <?php foreach ($alternatives as $product) { ?>
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } else { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } ?>
      <div class="product-layout <?php echo $class; ?>">
        <div class="product-thumb recommended-list-product-card-item">
          <div class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
          <div class="image"><a href="<?php echo $product['href']; ?>"><img data-src="<?php echo $product['thumb']; ?>" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive lazyload" loading="lazy" /></a></div>
          <div class="caption">
            <?php if ($product['rating']) { ?>
            <div class="rating">
              <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($product['rating'] < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>
              <?php } ?>
            </div>
            <?php } ?>
            <?php if ($product['price']) { ?>
            <p class="price">
              <?php if (!$product['special']) { ?>
              <?php echo $product['price']; ?>.
              <?php } else { ?>
              <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
              <?php } ?>
              <?php if ($product['tax']) { ?>
              <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
              <?php } ?>
            </p>
            <?php } ?>
          </div>
            <div class="button-red"><a class="btn" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $text_more_info; ?></a></div>
        </div>
        <div class="home-latest__add-to-fav" data-toggle="tooltip" title="" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-original-title="В закладки"><i class="far fa-heart" style="font-size: 32px;" aria-hidden="true"></i></div>
      </div>

      <?php } ?>
        </div>
		</div>
     <?php } ?>
	 </div>






</div>
        </div>
      </div>

</div>


    <div class="col-xs-12"><?php echo $content_top; ?></div>

    <?php if ($products) { ?>
    <div class="h2-suptitle-slider-card h2">Похожие товары<?php //echo $text_related; ?></div>
    <div class="slider-adaptiv-row">
      <div id="recommended-carousel" class="owl-carousel recommended-list-product-card">
      <?php $i = 0; ?>
      <?php foreach ($products as $product) { ?>
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } else { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } ?>
      <div class="product-layout <?php echo $class; ?>">
        <div class="product-thumb recommended-list-product-card-item">
          <div class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
          <div class="image"><a href="<?php echo $product['href']; ?>"><img data-src="<?php echo $product['thumb']; ?>" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive lazyload" loading="lazy"/></a></div>
          <div class="caption">
            <?php if ($product['rating']) { ?>
            <div class="rating">
              <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($product['rating'] < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>
              <?php } ?>
            </div>
            <?php } ?>
            <?php if ($product['price']) { ?>
            <p class="price">
              <?php if (!$product['special']) { ?>
              <?php echo $product['price']; ?>.
              <?php } else { ?>
              <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
              <?php } ?>
              <?php if ($product['tax']) { ?>
              <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
              <?php } ?>
            </p>
            <?php } ?>
          </div>
            <div class="button-red"><a class="btn" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $text_more_info; ?></a></div>
        </div>
       <div class="home-latest__add-to-fav" data-toggle="tooltip" title="" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" data-original-title="В закладки"><i class="far fa-heart" style="font-size: 32px;" aria-hidden="true"></i></div>
      </div>

      <?php } ?>
        </div>
    </div>
    <?php } ?>
    <?php echo $content_bottom; ?>
  </div>
  </div>
  <?php echo $column_right; ?>
</div>

<!-- Modal -->

	    <div class="white-popup mfp-hide" id="modal-tovar">
	        		<form action="#" class="modal-tovar-form">
				<h3 class="modal-tovar-form__title">
					Кому отправить
				</h3>
				<div class="modal-tovar-form__wrap-input modal-tovar-form__wrap-input_1">
					<input type="text" placeholder="Имя *" name="Имя получателя" class="modal-tovar-form__input" required>
					<input type="email" placeholder="E-mail *" name="Почта получателя" class="modal-tovar-form__input" required>
				</div>
				<h3 class="modal-tovar-form__title">
					От кого
				</h3>
				<div class="modal-tovar-form__wrap-input modal-tovar-form__wrap-input_2">
					<input type="text" placeholder="Имя *" name="Имя отправителя" class="modal-tovar-form__input" required>
					<input type="email" placeholder="E-mail *" name="Почта отправителя" class="modal-tovar-form__input" required>
					<input type="tel" placeholder="Телефон" name="Телефон отправителя" class="modal-tovar-form__input">
				</div>
				<button type="submit" class="modal-tovar-form__btn">
					Отправить
				</button>
			</form>
	    </div>

<script><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

    $('.privacy-otziv').click(function(){
        var privacy = $(".privacy-otziv:checked").val();
        if (privacy != 1) {
            $('.otziv-btn').prop('disabled', true);
        } else if (privacy == 1) {
            $('.otziv-btn').prop('disabled', false);
        }
    });

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');
$( document ).ready(function() {
$(".rating").awesomeRating({
	valueInitial	: <?php echo $rating; ?>,
  cssBase :'button-star-review fa',
  htmlBase : '<span></span>',
  eventName : 'rated'
});
$('.rating').on('rated', function(event, value){
  data = {
    rating: value
  };
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: data,
		beforeSend: function() {
		},
		complete: function() {
		},
		success: function(json) {
			if (json['error']) {
        $('.product-card-container').prepend('<div class="alert alert-danger"><i class="fa fa-check-circle"></i> ' + json['error'] + ' <button type="button" class="close" data-dismiss="alert">×</button></div>');
			}

			if (json['success']) {
      $('.product-card-container').prepend('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + ' <button type="button" class="close" data-dismiss="alert">×</button></div>');
			}
		}
	});
});
});
// $('#button-review').on('click', function() {
// 	$.ajax({
// 		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
// 		type: 'post',
// 		dataType: 'json',
// 		data: $("#form-review").serialize(),
// 		beforeSend: function() {
// 			$('#button-review').button('loading');
// 		},
// 		complete: function() {
// 			$('#button-review').button('reset');
// 		},
// 		success: function(json) {
// 			$('.alert-success, .alert-danger').remove();
//
// 			if (json['error']) {
// 				$('#form-title').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
// 			}
//
// 			if (json['success']) {
// 				$('#form-title').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
//
// 				$('input[name=\'name\']').val('');
// 				$('textarea[name=\'text\']').val('');
// 				$('input[name=\'rating\']:checked').prop('checked', false);
//                 setTimeout(function () {
//                     $("#form-review-popup .mfp-close").click();
//                 }, 3000);
// 			}
// 		}
// 	});
// });
    $(document).ready(function() {
        $('.popup-form').magnificPopup({
            type:'inline'
        });
        fbq('track', 'ProductView');
    });
//--></script>
<script>
  var productModel = document.querySelector('.product-card-buy-model').textContent;
  var dataLayer = window.dataLayer || [];
  dataLayer.push({
    'event': 'view_item',
    'items':[{
      'id': productModel,
      'google_business_vertical': 'retail'
    }]
  });
</script>

<?php echo $footer; ?>
