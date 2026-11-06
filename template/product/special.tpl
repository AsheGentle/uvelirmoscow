<?php echo $header; ?>
<div class="container">
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>">
			<ul class="breadcrumb" vocab="http://schema.org/" typeof="BreadcrumbList"><?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?><li property="itemListElement" typeof="ListItem"><?php if($i+1<count($breadcrumbs)) { ?><span><a href="<?php echo $breadcrumb['href']; ?>" property="item" typeof="WebPage"><?php echo $breadcrumb['text']; ?></a></span></li> <?php } else { ?><span><?php echo $breadcrumb['text']; ?></span></li><?php } ?><?php } ?></ul>
            <h1><?php echo $heading_title; ?></h1>
            <div><?php echo $content_top; ?></div>
            <div class="all-content">
                <?php if ($products) { ?>
                <div class="row">
                    <div class="margin-auto sort col-md-12">
                        <div class="col-md-4 col-sm-4 text-right hidden-xs">
                            <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
                        </div>
                        <div class="col-md-4 col-sm-4 text-right col-xs-6">
                            <select id="input-limit" class="form-control" onchange="location = this.value;">
                                <?php foreach ($limits as $limits) { ?>
                                <?php if ($limits['value'] == $limit) { ?>
                                <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                                <?php } else { ?>
                                <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                                <?php } ?>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                </div>
                <br />


                <div class="row product_block">
                    <?php foreach ($products as $product) { ?>

                    <div class="product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-6">

                            <div class="product-thumb" itemscope itemtype="http://schema.org/Product">
                                <div class="product-name"><a itemprop="url" href="<?php echo $product['href']; ?>"><span itemprop="name"><?php echo $product['name']; ?></span></a></div>
                                <div class="image">
                                    <a href="<?php echo $product['href']; ?>" rel="nofollow">
                                        <div class="product-model-category"><?php echo $text_model; ?> <?php echo $product['model']; ?></div>
                                        <img itemprop="image" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
                                        <?php if ($product['special']) { ?>
                                        <div class="percent"><i class="promo-stone"></i></div>
                                        <?php } ?>
                                        <?php if ($product['video_review']) { ?>
                                        <div class="video-icon"><i class="fa fa-video-camera" aria-hidden="true"></i></div>
                                        <?php } ?>
                                        <?php if ($product['rating']) { ?>
                                        <div class="rating">
                                            <?php for ($i = 1; $i <= 5; $i++) { ?>
                                            <?php if ($product['rating'] < $i) { ?>
                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                            <?php } else { ?>
                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                            <?php } ?>
                                            <?php } ?>
                                        </div>
                                        <?php } ?>
                                    </a>
                                </div>
                                <div>
                                    <div class="caption">
                                        <div itemprop="offers" itemscope itemtype="http://schema.org/Offer" class="text-center"><meta itemprop="price" content="<?php echo str_replace(array('руб', " "), '', $product['price']); ?>"><meta itemprop="priceCurrency" content="RUB"><link itemprop="availability" href="http://schema.org/InStock">
                                            <div class="price-work"><?php echo $price_work; ?><br><span><?php echo $product['price_works']; ?></span></div>
                                            <?php if ($product['price']) { ?>
                                            <p class="price_small">
                                                <?php echo $price_product; ?><br>
                                                <?php if (!$product['special']) { ?>
                                                <span><?php echo $product['price']; ?></span>
                                                <?php } else { ?>
                                                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                                                <?php } ?>
                                                <?php if ($product['tax']) { ?>
                                                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                                <?php } ?>
                                            </p>
                                            <?php } ?>
                                        </div>
                                        <? if(isset($product['options'])) { ?>
                                        <div itemprop="description" class="options">
                                            <?php foreach ($product['options'] as $option) { ?>
                                            <?php foreach ($option['product_option_value'] as $option_value) { ?>
                                            <? if($option_value['default_value'] == 1) { ?>
                                            <? $optionName = $option['name']; ?>
                                            <? $optionVal = $option_value['name']; ?>
                                            <?
                                            if($option['name'] == 'Металл') $classOption = 'metal';
                                            elseif($option['name'] == 'Проба') $classOption = 'proba';
                                            elseif($option['name'] == 'Размер') $classOption = 'size';
                                            elseif($option['name'] == 'Вставка') $classOption = 'past';
                                            ?>

                                            <p class="option-<?php echo $classOption ?>"><span class="option-name"><?php echo "$optionName"?>:</span><span class="option-val"> <?php echo "$optionVal"?></span></p>
                                            <? } ?>
                                            <? } ?>
                                            <? } ?>
                                            <? if(isset($product['weight'])) {
                                            $weight = $product['weight']
                                            ?>
                                            <p class="option-weight"><span class="option-name">Вес: </span><span class="option-val"><?php echo $product['weight']; ?> г.</span></p>
                                            <? } ?>
                                        </div>
                                        <? } ?>
                                    </div>
                                    <!--noindex--><div class="button-red"><a class="btn" href="<?php echo $product['href']; ?>" rel="nofollow" title="<?php echo $product['name']; ?>"><?php echo $text_more_info; ?></a></div><!--/noindex-->
                                </div>
                            </div>


                    </div>
                    <?php } ?>

                </div>
                <script>
                    $('.caruselka').owlCarousel({
                        items : 3,
                        autoPlay: false,
                        navigation: true,
                        navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
                        pagination: false,
                        singleItem: true
                    });
                    $('.product-thumb a').on('click', function() {
                        yaCounter18227068.reachGoal('open_item');
                    })
                </script>
                <div class="row pb-30">
                    <div class="col-sm-12 text-center"><?php echo $pagination; ?></div>
                </div>
                <?php }else{ ?>
                <p><?php echo $text_empty; ?></p>
                <?php } ?>
                <div class="row quest pb-30">
                    <div class="col-sm-6 text-center"><h2>Не нашли нужную модель?</h2>
                        <p>Любое украшение можно изменить по Вашему желанию. <a href="/kak-zakazat#callback_page"><b>Напишите нам</b></a>: что Вы ищете? </p></div>
                    <div class="col-sm-6 text-center"><h2>Не устраивает цена?</h2>
                        <p>Стоимость изделия можно <b>значительно</b> снизить за счёт количества и размера драгоценных камней!</p></div>
                </div>

                <?php if (!$products) { ?>
                <div class="buttons">
                    <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
                </div>
                <?php } ?>
                <?php echo $content_bottom; ?>

                <div id="video-category"><h3>Изготовление украшений на заказ: видео.</h3>
                    <p>В видеоролике наш мастер производит закрепку бриллианта в помолвочное кольцо при помощи специального оборудования.</p>
                    <iframe width="85%" height="400" src="https://www.youtube.com/embed/a7TBnECDaG0?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
                </div>


            </div>
        </div>
        <?php echo $column_right; ?>
    </div>
    <?php echo $footer; ?>