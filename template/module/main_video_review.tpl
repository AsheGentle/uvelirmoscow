<section class="main__reviews">
    <div class="wrapper">
        <h2 class="main__reviews-title title-2">Истории и отзывы наших клиентов</h2>
    </div>
    <?php if ($videos) { ?>
    <div class="main__reviews-slider swiper-container">
        <div class="swiper-wrapper">

            <?php foreach ($videos as $video) { ?>

            <div class="main__reviews-slider-item swiper-slide">
                <div class="main__reviews-slider-item-back">
                    <a href="javascript:;" onclick="openVideoModal('<?= $video['url']; ?>', '<?= $video['url_vk']; ?>')">

                        <img data-src="<?php echo $video['photo']; ?>" alt="<?php echo $video['name']; ?>" class="img-responsive lazyload" />
                    </a>

                </div>
            </div>
<?}?>

        </div>

        <div class="main__reviews-slider-control">
            <div class="main__reviews-slider-control-btns">
                <div class="main__reviews-slider-control-btn-prev">&nbsp;</div>

                <div class="main__reviews-slider-control-btn-next">&nbsp;</div>
            </div>
        </div>
    </div>
    <?}?>

    <div class="main__reviews-slider-pagination swiper-pagination">&nbsp;</div>
</section>
