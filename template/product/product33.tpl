<?php echo $header; ?>
<div class="container" style="background-color:#fff;">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" itemscope itemtype="http://schema.org/Product" class="<?php echo $class; ?>">
	<ul class="breadcrumb" vocab="http://schema.org/" typeof="BreadcrumbList"><?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?><li property="itemListElement" typeof="ListItem"><?php if($i+1<count($breadcrumbs)) { ?><span><a href="<?php echo $breadcrumb['href']; ?>" property="item" typeof="WebPage"><?php echo $breadcrumb['text']; ?></a></span></li> <?php } else { ?><span><?php echo $breadcrumb['text']; ?></span></li><?php } ?><?php } ?> <!-- <link itemprop="url" href="<?php echo $breadcrumb['href']; ?>" /> --></ul>
    <h1 itemprop="name"><?php echo $heading_title; ?></h1>
    <div class="all-content">
	<style>
	   .ya-share2 {
		   text-align:right;
	   }
	</style>
<script src="//yastatic.net/es5-shims/0.0.2/es5-shims.min.js"></script>
<script src="//yastatic.net/share2/share.js"></script>
<div class="ya-share2" data-services="collections,vkontakte,facebook,viber,whatsapp,telegram"></div>
    <div class="row">
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-7'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-5'; ?>
        <?php } ?>
        <div class="col-sm-1">		
		</div>
        <div class="<?php echo $class; ?>">
            <div class="product-model" style='z-index:999;'>Модель: <?php echo $model; ?></div>
            <?php if ($special) { ?>
            <div class="percent"><i class="promo-stone"></i></div>
            <?php } ?>
          <?php if ($thumb || $images) { ?>
          <div class="product-zoom-slider">
            <?php if ($thumb) { ?>
			
<style>			
div#ster {
    width: 90%;
    overflow: hidden; /* clearfix */
}
div#ster:before {
    content: "";
    padding-top: 100%;
    float: left;
}
</style>			
			<div class="sliderd2" id='slider-nav'>
			<div>
				<div class="video-wrapper">
					<img class="cloudzoom-gallery img-responsive" itemprop="image" alt ="<?php echo $heading_title; ?>" id ="zoom1" src="<?php echo $popup; ?>" data-cloudzoom='zoomSizeMode:"image",autoInside: 550,zoomPosition:"inside", zoomOffsetX:0 '>
				</div>
			</div>
			

            <?php if ($images) { ?>
                  <?php foreach ($images as $image) { ?>
			<div>
				<div class="video-wrapper">
                        <img class="cloudzoom-gallery img-responsive" src="<?php echo $image['popup']; ?>" data-image="<?php echo $image['popup']; ?>" data-cloudzoom ="useZoom:'.cloudzoom', image:'<?php echo $image['popup']; ?>' " alt="<?php echo $heading_title; ?>" />
				</div>
			</div>          
                  <?php } ?>
              <?php } ?>

			  <?php if ($video_review) { ?>
			<div>
				<div class="video-wrapper" id=ster>
					<iframe class="yt-player" style='width:100%;position: absolute; height: 100%; border: none' src="https://www.youtube.com/embed/<?php echo $video_review; ?>?controls=1&rel=0&enablejsapi=1"></iframe>
				</div>
			</div>  
			  <?php } ?>

			</div>

			
			<div class="main-slider" id="main-slider">
			<div>
				<div class="video-wrapper" style='display: table;'>
					<img itemprop="image" style="width:100%;" alt ="<?php echo $heading_title; ?>" src="<?php echo $thumb; ?>" />
				</div>
			</div>
            <?php if ($images) { ?>
                  <?php foreach ($images as $image) { ?>			  
			<div>
				<div class="video-wrapper" style='display: table;'>
                        <img src="<?php echo $image['thumb']; ?>" style="width:100%;" alt="<?php echo $heading_title; ?>" />
				</div>
			</div>          
                  <?php } ?>
              <?php } ?>
			  <?php if ($video_review) { ?>
			<div>
				<div class="video-wrapper" style='display: table;'>
					<img src='//i1.ytimg.com/vi/<?php echo $video_review; ?>/hqdefault.jpg' style='width:90%' />
				</div>
			</div>          
			  <?php } ?>

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
        
        $(function() {
             $('#slider-nav').slick({
              slidesToShow: 1,
              slidesToScroll: 1,
              arrows: false,
              fade: true,
              asNavFor: '#main-slider'
            });
            $('#main-slider').slick({
              slidesToShow: 3,
              slidesToScroll: 1,
              dots: true,
			  asNavFor: '#slider-nav',
    		  centerMode: true,
              focusOnSelect: true
		    });
        });
        
        
        $('#main-slider').on('beforeChange', function(event, slick, currentSlide, nextSlide){
            $('.yt-player').each(function(){
                this.contentWindow.postMessage('{"event":"command","func":"' + 'pauseVideo' + '","args":""}', '*')
            });
        });
            </script>
        </div>
        <?php if ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-5'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <div id="product">

          <?php if ($price) { ?>
          <ul itemprop="offers" itemscope itemtype="http://schema.org/Offer" style='text-align:left;' class="list-unstyled text-center">
              <?php if (!$special) { ?>
              <li>
                  <div class="price-main"><span><?php echo $price_main; ?></span> <?php $price = str_replace('руб', '', $price); ?><?php $pricenull = str_replace(' ', '', $price); ?><span itemprop="price" content="<?php echo $pricenull; ?>.00"><?php echo $price; ?></span><span>руб</span> * <br><span style="color: #000000;font-size: 11px;">* (цена указана за 1 изделие)</span><br /><span style='color: #ababab;font-size:14px;'>Работа <?php echo $price_works; ?> <span data-toggle="tooltip" class="informer" title="Стоимость работы зависит от сложности изготовления изделий."><i class="fa fa-question-circle" style='font-size: 19px;'></i></span><br />Материалы <?php  echo $price_materials; ?></span> <span data-toggle="tooltip" class="informer" title="Стоимость материалов зависит от материалов и выбранных камней и их параметров. Выбрав камни меньших размеров, можно значительно снизить стоимость изделия."><i class="fa fa-question-circle" style='font-size: 19px;'></i></span> </div>
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
          <?php } ?>
		  <br />
		  <span style='font-size:16px'>Стоимость указана за кольцо с характеристиками:</span>
          <div class="text-center" style='text-align:left;margin-top:8px;'>
                  <table class="table">
                      <?php if ($options) { ?>
                      <tbody>
                      <?php foreach ($options as $option) { ?>
                      <?php if ($option['type'] == 'select') { ?>
                      <?php foreach ($option['product_option_value'] as $option_value) { ?>
                      <? if($option_value['default_value'] == 1) { ?>
                      <tr>
                          <td><?php echo $option['name']; ?></td>
                          <td><?php echo $option_value['name']; ?></td>
                      </tr>
                      <? } ?>
                      <?php } ?>
                      <?php } ?>
                      <?php } ?>
                      </tbody>
                      <?php } ?>
                      <tbody>
                      <?php foreach ($attribute_groups as $attribute_group) { ?>
                      <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                      <tr>
                          <td><?php echo $attribute['name']; ?></td>
                          <td><?php echo $attribute['text']; ?></td>
                      </tr>
                      <?php } ?>
                      <?php } ?>
                      <?php if ($weight) { ?>
                      <tr>
                          <td><?php echo $text_weight; ?></td>
                          <td><?php echo $weight; ?> г</td>
                      </tr>
                      <?php } ?>
                      </tbody>
                  </table>
			  <?php echo $fastorder; ?>
			  <!--noindex--><div class="btn btn-primary2 btn-chk btn-fastorder" style='padding: 7.5px 20px;'> <a class="" href="#fastorder" id="order2">Рассчитать под мой бюджет</a> </div> <div id="fastorder" class="mfp-hide white-popup"></div> <script><!--
    $('#order2').on('click', function() {
        $.ajax({
            url: 'index.php?route=module/fastorder/getform',
            data: {sub: 'Назначить встречу с менеджером'},
            success: function(html){
                $("#fastorder").html(html);
            }
        });
        yaCounter18227068.reachGoal('open_zak');
    });
    $(function () {
        $('#order2').magnificPopup({
            type: 'inline'
        });
    });
    --> </script><!--/noindex-->
          </div>
          <hr>
		  <div class="product-attribute">
                  <div class="h2">Почему стоит заказывать у нас?</div>
                  <div class="shadow"></div>
                  <table class="table">
					<thead>
                      <tr>
                          <td><strong>✔ Цена</strong><br> Гибкая ценовая политика - брилланты подбираются под конкретный бюджет клиента</td>
                      </tr>
                      <tr>
                          <td><strong>✔ Гарантия</strong><br>Мы даем <span style='border-bottom: 1px dashed;'>пожизненную гарантию</span> на свои изделия</td>
                      </tr>
                      <tr>
                          <td><strong>✔ Оперативные сроки</strong><br>Сроки изготовления изделий составляют от 3 до 21 дня</td>
                      </tr>
                      <tr>
                          <td><strong>✔ Бесплатная доставка</strong><br>Мы осуществляем бесплатную доставку по Москве и всей России</td>
                      </tr>
                      </thead>
                  </table>
              </div>

        </div>
      </div>
    </div>
  <div class="row" style='margin-top:30px;display: table;min-height: 100%;height: 100%;width: 100%;'>
      <div class="col-sm-6" style='padding-right: 0px;padding-left: 0px;'>
	    <img src='/image/kamen.jpg' style='width:100%' /> 
      </div>
      <div class="col-sm-6 hidden-xs hidden-xl" style="padding-right: 0px;padding-left: 0px;justify-content: center;align-items: center;height: 100%;display: flex;color: #000;text-align: center;font-family: 'Playfair Display',arial;font-weight: 700;font-size:20px;">
		<div>Бриллианты в кольцо подбираются под Ваш бюджет</div>
      </div>
  </div>
  <div class="row" style='display: table;min-height: 100%;height: 100%;width: 100%;'>
      <div class="col-sm-6 hidden-xs hidden-xl" style="padding-right: 0px;padding-left: 0px;justify-content: center;align-items: center;height: 100%;display: flex;color: #000;text-align: center;font-family: 'Playfair Display',arial;font-weight: 700;font-size:20px;">
		<div>Каждому брилланту от 0.3 карата <br /> прилагается международный <br /> сертификат качества от GIA <br /> (самой авторитетной геммологической <br /> лаборатории мира)</div>
      </div>
      <div class="col-sm-6" style='padding-right: 0px;padding-left: 0px;'>
	    <img src='/image/sert.jpg' style='width:100%' /> 
      </div>
  </div>
  <div class="row" style='display: table;min-height: 100%;height: 100%;    width: 100%;'>
      <div class="col-sm-6" style='padding-right: 0px;padding-left: 0px;'>
	    <img src='/image/upak.jpg' style='width:100%' /> 
      </div>
      <div class="col-sm-6 hidden-xs hidden-xl" style="padding-right: 0px;padding-left: 0px;justify-content: center;align-items: center;height: 100%;display: flex;color: #000;text-align: center;font-family: 'Playfair Display',arial;font-weight: 700;font-size:20px;">
		<div>Элегантный футляр с подсветкой</div>
      </div>
  </div>
    <div class="col-xs-12"><?php echo $content_top; ?></div>
  <div class="row">
      <div class="col-sm-12">
          <div class="product-description">
              <div class="h2"><h4><?php echo $tab_description; ?></h4></div>
              <div itemprop="description"><?php echo $description; ?></div>
          </div>
      </div>
      <div id="callback_page"></div>
      <div class="col-sm-12">
          <div class="h2"><h5><?php echo $tab_review; ?></h5></div>
          <?php if ($review_status) { ?>
          <div class="rating">
              <p>
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($rating < $i) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                  <?php } else { ?>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                  <?php } ?>
                  <?php } ?>
                  <a onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="#form-review-popup" class="popup-form"><?php echo $text_write; ?></a>
              </p>
          </div>
          <div class="product-review">
              <div id="review"></div>
              <div class="mfp-hide white-popup" id="form-review-popup">
                  <form class="form-horizontal" id="form-review">
                      <div class="h3" id="form-title"><?php echo $text_write; ?></div>
                      <?php if ($review_guest) { ?>
                      <div class="form-group required">
                          <div class="col-sm-12">
                              <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                              <input type="text" name="name" value="" id="input-name" class="form-control" />
                          </div>
                      </div>
                      <div class="form-group required">
                          <div class="col-sm-12">
                              <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                              <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                              <div class="help-block"><?php echo $text_note; ?></div>
                          </div>
                      </div>
                      <div class="form-group required">
                          <div class="col-sm-12">
                              <label class="control-label"><?php echo $entry_rating; ?></label>
                              &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                              <input type="radio" name="rating" value="1" />
                              &nbsp;
                              <input type="radio" name="rating" value="2" />
                              &nbsp;
                              <input type="radio" name="rating" value="3" />
                              &nbsp;
                              <input type="radio" name="rating" value="4" />
                              &nbsp;
                              <input type="radio" name="rating" value="5" />
                              &nbsp;<?php echo $entry_good; ?></div>
                      </div>
                      <?php echo $captcha; ?>
                      <div class="form-group" id="fom-privacy">
                          <label>
                              <input type="checkbox" name="privacy" class="privacy-otziv" id="privacy" value="1">&nbsp;Даю согласие на обработку персональных данных и ознакомлен с <a href="/politika-konfidencialnosti" target="_blank">Политикой конфиденциальности</a></label>
                      </div>
                      <div class="buttons clearfix">
                          <div class="pull-right">
                              <button type="button" disabled id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary otziv-btn"><?php echo $button_continue; ?></button>
                          </div>
                      </div>
                      <?php } else { ?>
                      <?php echo $text_login; ?>
                      <?php } ?>
                  </form>
              </div>
          </div>
          <?php } ?>
      </div>
  </div>
    <?php if ($products) { ?>
    <div class="h2"><?php echo $text_related; ?></div>
    <div class="row">
      <div id="recommended-carousel" class="owl-carousel">
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
        <div class="product-thumb">
          <div class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
          <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
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
              <?php echo $product['price']; ?>
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
      </div>

      <?php } ?>
        </div>
        <script>
            $('#recommended-carousel').owlCarousel({
                items : 3,
                itemsDesktop : [1200,3],
                itemsDesktopSmall : [992,2],
                itemsTablet:  [768,2],
                itemsMobile : [480,1],
                autoPlay: true,
                navigation: true,
                navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
                stopOnHover: true,
                pagination: true
            });
        </script>
    </div>
    <?php } ?>
    <?php echo $content_bottom; ?>
  </div>
  </div>
  <?php echo $column_right; ?></div>
</div>
<script><!--
    if(document.documentElement.clientWidth > 767) {
        CloudZoom.quickStart();
    };
//-->
</script>
<script><!--
    if(document.documentElement.clientWidth < 768) {
        $(".cloudzoom-gallery").click(function(){
            var image = $(this).data('image');
            $(".cloudzoom").attr("src", image);
            $('.cloudzoom-gallery').removeClass('cloudzoom-gallery-active');
            $(this).addClass('cloudzoom-gallery-active');
        })
    };
    //-->
</script>
<script><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
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

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#form-title').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#form-title').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
                setTimeout(function () {
                    $("#form-review-popup .mfp-close").click();
                }, 3000);
			}
		}
	});
});
    $(document).ready(function() {
        $('.popup-form').magnificPopup({
            type:'inline'
        });
    });
//--></script>
<script>
    var a = $('.slider').attr("class");
    if (a) {
        $('.slider').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            asNavFor: '.slider-nav',
            prevArrow: '<i class="fa fa-chevron-left fa-5x"></i>',
            nextArrow: '<i class="fa fa-chevron-right fa-5x"></i>'
        });
        var count = $('.slider-nav > div').size();
        if (count == 2) {
            var slides = 4;
            var center = true;
        }
        if (count == 4) {
            var slides = 4;
            var center = false;
        }
        else if (count == 1 || count == 3) {
            var slides = 5;
            var center = true;
        }
        else if (count > 5) {
            var slides = 5;
            var center = true;
        }
        $('.slider-nav').slick({
            slidesToShow: slides,
            slidesToScroll: 1,
            arrows: false,
            dots: true,
            asNavFor: '.slider',
            centerMode: center,
            focusOnSelect: true
        });
    }
</script>
<?php echo $footer; ?>
