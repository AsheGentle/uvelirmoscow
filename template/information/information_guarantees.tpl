<?php echo $header; ?>
<?php $asset = 'catalog/view/theme/uvelirmoscow_new/assets_new/'; ?>
<main>
    <section class="inner-section">
        <ul class="breadcrumbs" itemscope itemtype="https://schema.org/BreadcrumbList">
            <?php $breadcrumb_count = count($breadcrumbs); ?>
            <?php foreach ($breadcrumbs as $index => $breadcrumb) { ?>
            <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                <?php if ($index + 1 < $breadcrumb_count) { ?>
                <a href="<?php echo htmlspecialchars($breadcrumb['href'], ENT_QUOTES, 'UTF-8'); ?>" class="breadcrumbs__link" itemprop="item">
                    <span itemprop="name"><?php echo htmlspecialchars($breadcrumb['text'], ENT_QUOTES, 'UTF-8'); ?></span>
                    <meta itemprop="position" content="<?php echo $index + 1; ?>">
                </a>
                <?php } else { ?>
                <span class="breadcrumbs__link">
                    <span itemprop="name"><?php echo htmlspecialchars($breadcrumb['text'], ENT_QUOTES, 'UTF-8'); ?></span>
                    <meta itemprop="position" content="<?php echo $index + 1; ?>">
                </span>
                <?php } ?>
            </li>
            <?php } ?>
        </ul>
        <h1><?php echo htmlspecialchars($heading_title, ENT_QUOTES, 'UTF-8'); ?></h1>
        <div class="text">Мы&nbsp;уверены в&nbsp;качестве наших украшений и&nbsp;предоставляем надёжные гарантии. Каждое изделие подтверждено сертификатами, а&nbsp;вы&nbsp;можете быть уверены в&nbsp;его подлинности и&nbsp;долговечности.</div>

        <div class="guarantee-details">
            <div class="guarantee-detail">
                <h2>Пожизненная гарантия и&nbsp;бесплатное сервисное обслуживание</h2>
                <div class="guarantee-detail__wrap">
                    <picture class="guarantee-detail__image">
                        <img src="<?php echo $asset; ?>images/content/static/detail-30.webp" alt="" width="1010" height="640" loading="lazy">
                    </picture>
                    <div class="guarantee-detail__info">
                        <p>На&nbsp;все украшения, сделанные в&nbsp;нашей студии, действует пожизненная гарантия. Кроме того, мы&nbsp;осуществляем бесплатное сервисное обслуживание (чистку и&nbsp;полировку украшений) 1&nbsp;раз в&nbsp;6&nbsp;месяцев.</p>
                        <div class="h3">Что вы&nbsp;получаете при заказе:</div>
                        <ul class="inner-list">
                            <li>Кассовый чек</li>
                            <li>Чек банковского терминала (при оплате картой)</li>
                            <li>Сертификат GIA</li>
                            <li>Подарочная упаковка: коробка, пакет, конверт для документов</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="guarantee-detail">
                <h2>Сертификаты на&nbsp;бриллианты</h2>
                <div class="guarantee-detail__wrap">
                    <picture class="guarantee-detail__image">
                        <img src="<?php echo $asset; ?>images/content/static/detail-3.webp" alt="" width="1010" height="640" loading="lazy">
                    </picture>
                    <div class="guarantee-detail__info">
                        <p>Мы&nbsp;доверяем только лучшим геммологическим лабораториям, таким как GIA (Gemological Institute of&nbsp;America). Именно сертификатами GIA подтверждается подлинность наших бриллиантов.</p>
                    </div>
                </div>
            </div>
            <div class="guarantee-detail">
                <h2>Сертификаты на&nbsp;драгоценные камни</h2>
                <div class="guarantee-detail__wrap">
                    <picture class="guarantee-detail__image">
                        <img src="<?php echo $asset; ?>images/content/static/detail-4.webp" alt="" width="1010" height="640" loading="lazy">
                    </picture>
                    <div class="guarantee-detail__info">
                        <p>Подлинность драгоценных камней подтверждают сертификаты GRS (Gem Research Swisslab)&nbsp;&mdash; частной исследовательской геммологической лаборатории Швейцарии, которая специализируется на&nbsp;определении происхождения и&nbsp;подлинности рубинов, сапфиров, изумрудов и&nbsp;других драгоценных камней, а&nbsp;также сертификатами Геммологического Центра МГУ.</p>
                    </div>
                </div>
            </div>
            <div class="guarantee-detail">
                <h2>Проба на&nbsp;всех наших украшениях</h2>
                <div class="guarantee-detail__wrap">
                    <picture class="guarantee-detail__image">
                        <img src="<?php echo $asset; ?>images/content/static/detail-5.webp" alt="" width="1010" height="640" loading="lazy">
                    </picture>
                    <div class="guarantee-detail__info">
                        <p>Федеральная Пробирная Палата (ФПП) проверяет содержание драгоценного металла в&nbsp;каждом изделии. Затем ставит пробу и&nbsp;подтверждает УИН&nbsp;&mdash; уникальный идентификационный номер, по&nbsp;которому легко проверить легальность и&nbsp;основные параметры произведённых украшений.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="documents-section">
        <h2>Гарантии легитимности</h2>
        <div class="text">Студия является юридическим лицом с&nbsp;аккредитацией в&nbsp;Московской государственной инспекции пробирного надзора.</div>
        <?php if ($manufacturing_certificates) { ?>
        <div class="documents swiper">
            <div class="swiper-wrapper">
                <?php foreach ($manufacturing_certificates as $certificate) { ?>
                <div class="document swiper-slide">
                    <a href="<?php echo htmlspecialchars($certificate['full'], ENT_QUOTES, 'UTF-8'); ?>" class="document__link" data-fancybox="documents">
                        <img src="<?php echo htmlspecialchars($certificate['thumb'], ENT_QUOTES, 'UTF-8'); ?>" alt="" width="228" height="323" loading="lazy">
                    </a>
                </div>
                <?php } ?>
            </div>
            <div class="swiper-buttons show-on-tab">
                <div class="swiper-button-prev"></div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-next"></div>
            </div>
        </div>
        <?php } ?>
    </section>

    <section class="consultation-section">
        <h2>Хотите заказать украшение с&nbsp;полной гарантией качества?</h2>
        <div class="text">Наши специалисты ответят на&nbsp;все вопросы, помогут с&nbsp;выбором и&nbsp;изготовят изделие вашей мечты.</div>
        <div class="consultation__buttons">
            <button type="button" class="btn btn--big" data-modal="#modal-1">Заказать звонок</button>
        </div>
        <div class="consultation__contacts">
            <?php if ($header_contacts_phone) { ?>
            <a href="<?php echo htmlspecialchars($header_contacts_phone_href, ENT_QUOTES, 'UTF-8'); ?>" class="consultation__phone">
                <svg aria-hidden="true"><use href="<?php echo $asset; ?>images/icons/icons.svg#phone"></use></svg>
                <span><?php echo htmlspecialchars($header_contacts_phone, ENT_QUOTES, 'UTF-8'); ?></span>
            </a>
            <?php } ?>
            <?php $work_time = array_filter(array(trim(strip_tags($header_contacts_work_weekdays)), trim(strip_tags($header_contacts_work_weekend)))); ?>
            <div class="consultation__time">Время работы: <strong><?php echo htmlspecialchars(implode(', ', $work_time), ENT_QUOTES, 'UTF-8'); ?></strong></div>
        </div>
    </section>

    <?php echo $information_faq_html; ?>
</main>
<?php echo $footer; ?>
