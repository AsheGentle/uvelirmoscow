<div class="examples swiper">
    <div class="swiper-wrapper">
        <?php foreach ($projects as $project) { ?>
        <div class="example swiper-slide">
            <a href="<?php echo htmlspecialchars($project['href'], ENT_QUOTES, 'UTF-8'); ?>" class="example__item">
                <picture class="example__image">
                    <img src="<?php echo htmlspecialchars($project['thumb'], ENT_QUOTES, 'UTF-8'); ?>" alt="<?php echo htmlspecialchars($project['name'], ENT_QUOTES, 'UTF-8'); ?>" width="490" height="490" loading="lazy">
                </picture>
                <div class="example__text"><span><?php echo htmlspecialchars($project['name'], ENT_QUOTES, 'UTF-8'); ?></span></div>
            </a>
        </div>
        <?php } ?>
    </div>
    <div class="swiper-buttons">
        <a href="<?php echo htmlspecialchars($all_projects_url, ENT_QUOTES, 'UTF-8'); ?>" class="btn btn--big btn--border btn--dark">Смотреть все работы</a>
        <div class="swiper-button-prev"></div>
        <div class="swiper-pagination"></div>
        <div class="swiper-button-next"></div>
    </div>
</div>
