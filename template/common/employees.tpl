<section class="employees-section">
    <h2>Наша команда</h2>
    <div class="employees swiper">
        <div class="swiper-wrapper">
            <?php foreach ($employees as $employee) { ?>
            <div class="employee swiper-slide">
                <div class="employee__inner">
                    <picture class="employee__image">
                        <img src="<?php echo htmlspecialchars($employee['image'], ENT_QUOTES, 'UTF-8'); ?>" alt="<?php echo htmlspecialchars($employee['name'], ENT_QUOTES, 'UTF-8'); ?>" width="480" height="592" loading="lazy">
                    </picture>
                    <div class="employee__description">
                        <div class="employee__name"><?php echo htmlspecialchars($employee['name'], ENT_QUOTES, 'UTF-8'); ?></div>
                        <div class="employee__position"><?php echo htmlspecialchars($employee['position'], ENT_QUOTES, 'UTF-8'); ?></div>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
        <div class="swiper-buttons beige">
            <a href="/o-studii" class="btn btn--big btn--border">О&nbsp;компании</a>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
            <div class="swiper-button-next"></div>
        </div>
    </div>
</section>
