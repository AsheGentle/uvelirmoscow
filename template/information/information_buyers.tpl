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
        <div class="text">Мы&nbsp;создаём украшения на&nbsp;заказ с&nbsp;учётом всех ваших пожеланий&nbsp;&mdash; от&nbsp;эскиза до&nbsp;готового изделия. В&nbsp;этом разделе вы&nbsp;найдёте ответы на&nbsp;главные вопросы: как мы&nbsp;работаем, сколько стоит доставка, какие гарантии даём и&nbsp;что делать, если нужен срочный заказ. Выберите интересующий вас пункт&nbsp;&mdash; подробности внутри.</div>

        <div class="inner-links swiper">
            <div class="swiper-wrapper">
                <a href="/pokupatelyam/kak-zakazat" class="inner-link swiper-slide">
                    <img class="inner-link__icon" src="<?php echo $asset; ?>images/icons/icon-sketch.svg" alt="" width="48" height="48" loading="lazy">
                    <div class="h3">Как заказать</div>
                    <p>Пошаговая инструкция: от&nbsp;идеи до&nbsp;готового украшения. Узнайте, как согласовать дизайн, обсудить детали и&nbsp;получить своё изделие.</p>
                </a>
                <a href="/pokupatelyam/dostavka-i-oplata" class="inner-link swiper-slide">
                    <img class="inner-link__icon" src="<?php echo $asset; ?>images/icons/icon-delivery.svg" alt="" width="48" height="48" loading="lazy">
                    <div class="h3">Доставка и&nbsp;оплата</div>
                    <p>Какие способы оплаты доступны и&nbsp;как мы&nbsp;доставляем заказы по&nbsp;России и&nbsp;за&nbsp;рубеж. Все варианты&nbsp;&mdash; прозрачно и&nbsp;без скрытых комиссий.</p>
                </a>
                <a href="/pokupatelyam/garantii" class="inner-link swiper-slide">
                    <img class="inner-link__icon" src="<?php echo $asset; ?>images/icons/icon-shield.svg" alt="" width="48" height="48" loading="lazy">
                    <div class="h3">Гарантии</div>
                    <p>Мы&nbsp;уверены в&nbsp;качестве наших украшений. Какие гарантийные обязательства действуют и&nbsp;на&nbsp;какой срок&nbsp;&mdash; читайте в&nbsp;этом разделе.</p>
                </a>
                <a href="/pokupatelyam/sertifikaty-studii" class="inner-link swiper-slide">
                    <img class="inner-link__icon" src="<?php echo $asset; ?>images/icons/icon-document.svg" alt="" width="48" height="48" loading="lazy">
                    <div class="h3">Сертификаты студии</div>
                    <p>Подтверждение проб металлов, сертификаты на&nbsp;камни и&nbsp;соответствие ГОСТ. Мы&nbsp;работаем только с&nbsp;проверенными материалами.</p>
                </a>
                <a href="/pokupatelyam/zakaz-v-moskve" class="inner-link swiper-slide">
                    <img class="inner-link__icon" src="<?php echo $asset; ?>images/icons/icon-map.svg" alt="" width="48" height="48" loading="lazy">
                    <div class="h3">Заказ в&nbsp;Москве</div>
                    <p>Особые условия для московских клиентов: личный визит в&nbsp;студию, примерка, консультация ювелира. А&nbsp;также доставка по&nbsp;Москве.</p>
                </a>
                <a href="/pokupatelyam/zakaz-onlajn-s-dostavkoj" class="inner-link swiper-slide">
                    <img class="inner-link__icon" src="<?php echo $asset; ?>images/icons/icon-earth.svg" alt="" width="48" height="48" loading="lazy">
                    <div class="h3">Заказ онлайн с&nbsp;доставкой</div>
                    <p>Как заказать украшение, если вы&nbsp;живёте в&nbsp;другом городе или стране. Онлайн-консультации, 3D-визуализация и&nbsp;отправка почтой.</p>
                </a>
                <a href="/pokupatelyam/srochnyj-zakaz" class="inner-link swiper-slide">
                    <img class="inner-link__icon" src="<?php echo $asset; ?>images/icons/icon-clock.svg" alt="" width="48" height="48" loading="lazy">
                    <div class="h3">Срочный заказ</div>
                    <p>Нужно украшение к&nbsp;определённой дате? Рассказываем, какие сроки считаются срочными, и&nbsp;сколько это будет стоить.</p>
                </a>
            </div>
            <div class="swiper-buttons show-on-tab">
                <div class="swiper-button-prev"></div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-next"></div>
            </div>
        </div>
    </section>
<?php echo $information_faq_html; ?>
</main>
<?php echo $footer; ?>
