<!DOCTYPE html>
<html lang="<?php echo $lang; ?>">
    <head>
        <meta charset="utf-8">
        <meta name="format-detection" content="telephone=no">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?php if (!empty($robots) || !empty($noindex_follow)) { ?><meta name="robots" content="<?php echo !empty($robots) ? $robots : 'noindex, follow'; ?>"><?php } ?>
        <base href="<?php echo $base; ?>">
        <title><?php echo $title; ?></title>
        <?php if ($description) { ?><meta name="description" content="<?php echo $description; ?>"><?php } ?>
        <?php if ($keywords) { ?><meta name="keywords" content="<?php echo $keywords; ?>"><?php } ?>
        <?php if (!empty($canonical)) { ?><link rel="canonical" href="<?php echo htmlspecialchars($canonical, ENT_QUOTES, 'UTF-8'); ?>"><?php } ?>
        <?php foreach ($links as $link) { ?><link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"><?php } ?>
        <link href="catalog/view/theme/uvelirmoscow_new/assets_new/fonts/onest-v9-cyrillic_latin-300.woff2" rel="preload" as="font" crossorigin>
        <link href="catalog/view/theme/uvelirmoscow_new/assets_new/fonts/onest-v9-cyrillic_latin-regular.woff2" rel="preload" as="font" crossorigin>
        <link href="catalog/view/theme/uvelirmoscow_new/assets_new/fonts/onest-v9-cyrillic_latin-600.woff2" rel="preload" as="font" crossorigin>
        <link href="catalog/view/theme/uvelirmoscow_new/assets_new/fonts/onest-v9-cyrillic_latin-700.woff2" rel="preload" as="font" crossorigin>
        <link rel="stylesheet" href="catalog/view/theme/uvelirmoscow_new/assets_new/css/styles.css?ver=13">
        <link rel="stylesheet" href="catalog/view/theme/uvelirmoscow_new/custom/css/custom.css?ver=8">
        <link rel="stylesheet" href="catalog/view/javascript/jivo/jivosite.css">
        <?php foreach ($styles as $style) { ?><link href="<?php echo $style['href']; ?>" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>"><?php } ?>
        <script src="catalog/view/theme/uvelirmoscow_new/assets_new/js/jquery.min.js"></script>
        <?php foreach ($scripts as $script) { ?><script src="<?php echo $script; ?>"></script><?php } ?>
        <?php foreach ($analytics as $analytic) { echo $analytic; } ?>
        <meta name="yandex-verification" content="698cb79bf208169a" />

        <!-- Yandex.Metrika counter -->
        <script type="text/javascript">
            (function(m,e,t,r,i,k,a){
                m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
                m[i].l=1*new Date();
                for (var j = 0; j < document.scripts.length; j++) {if (document.scripts[j].src === r) { return; }}
            k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)
            })(window, document,'script','https://mc.yandex.ru/metrika/tag.js?id=113878339', 'ym');

            ym(113878339, 'init', {ssr:true, webvisor:true, clickmap:true, ecommerce:"dataLayer", referrer: document.referrer, url: location.href, accurateTrackBounce:true, trackLinks:true});
        </script>
        <noscript><div><img src="https://mc.yandex.ru/watch/113878339" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
        <!-- /Yandex.Metrika counter -->

    </head>
    <body>
        <header>
            <div class="header-nav">
                <a href="<?php echo $home; ?>" class="logo">
                    <img src="<?php echo htmlspecialchars($header_contacts_header_logo_url, ENT_QUOTES, 'UTF-8'); ?>" alt="Логотип UvelirMoscow Jewellery." width="214" height="58">
                </a>
                <button type="button" class="header-toggle">
                    <span>Меню</span>
                </button>
            </div>
            <div class="header">
                <div class="header-top">
                    <ul class="top-menu">
                        <li class="top-menu__item">
                            <a href="/o-studii/otzyvy" class="top-menu__link">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-message-star.svg" alt="" width="24" height="24">
                                <span>Отзывы</span>
                            </a>
                        </li>
                        <li class="top-menu__item">
                            <a href="/pokupatelyam/dostavka-i-oplata" class="top-menu__link">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-truck.svg" alt="" width="24" height="24">
                                <span>Доставка и&nbsp;оплата</span>
                            </a>
                        </li>
                        <li class="top-menu__item">
                            <a href="/uslugi/sertifikaty-i-podarochnye-karty" class="top-menu__link">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-giftcard.svg" alt="" width="24" height="24">
                                <span>Подарочные карты</span>
                            </a>
                        </li>
                        <li class="top-menu__item has-submenu">
                            <a href="/o-studii" class="top-menu__link">
                                <img src="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icon-necklaces.svg" alt="" width="24" height="24">
                                <span>Студия</span>
                            </a>
                            <ul class="top-submenu">
                                <li class="top-submenu__item"><a href="/o-studii">О&nbsp;студии</a></li>
                                <li class="top-submenu__item"><a href="/o-studii/nashi-raboty">Наши работы</a></li>
                                <li class="top-submenu__item"><a href="/o-studii/obzory">Обзоры</a></li>
                                <li class="top-submenu__item"><a href="/o-studii/stati">Статьи</a></li>
                                <li class="top-submenu__item"><a href="/o-studii/sotrudnichestvo">Сотрудничество</a></li>
                                <li class="top-submenu__item"><a href="/o-studii/optovikam-i-b2b">Оптовикам и&nbsp;B2B сегменту</a></li>
                                <li class="top-submenu__item"><a href="/o-studii/rekvizity">Реквизиты</a></li>
                                <li class="top-submenu__item"><a href="/o-studii/kontakty">Контакты</a></li>
                            </ul>
                        </li>
                    </ul>
                    <button type="button" class="btn btn--small" data-modal="#modal-1">Заказать звонок</button>
                </div>
                <a href="<?php echo $home; ?>" class="logo">
                    <img src="<?php echo htmlspecialchars($header_contacts_header_logo_url, ENT_QUOTES, 'UTF-8'); ?>" alt="Логотип UvelirMoscow Jewellery." width="214" height="58">
                </a>
                <div class="header-contacts">
                    <a href="<?php echo htmlspecialchars($header_contacts_phone_href, ENT_QUOTES, 'UTF-8'); ?>" class="header-phone">
                        <svg aria-hidden="true"><use href="catalog/view/theme/uvelirmoscow_new/assets_new/images/icons/icons.svg#phone" /></svg>
                        <span><?php echo htmlspecialchars($header_contacts_phone, ENT_QUOTES, 'UTF-8'); ?></span>
                    </a>
                    <button type="button" class="btn btn--small" data-modal="#modal-1">Заказать звонок</button>
                    <div class="header-address">Москва, Кузнецкий мост, дом 7, стр. 3</div>
                    <div class="header-hours">
                        <div class="header-hours__title">Режим работы:</div>
                        <div class="header-hours__item"><?php echo htmlspecialchars($header_contacts_work_weekdays, ENT_QUOTES, 'UTF-8'); ?></div>
                        <div class="header-hours__item"><?php echo htmlspecialchars($header_contacts_work_weekend, ENT_QUOTES, 'UTF-8'); ?></div>
                    </div>
                </div>
                <nav class="header-bottom">
                    <ul class="menu">
                        <?php foreach ($site_menu_items as $menu_index => $menu_item) { ?>
                        <?php
                        $catalog_menu = !empty($menu_item['catalog']);
                        $static_menu = !empty($menu_item['static']);
                        $has_submenu = !$static_menu && ($catalog_menu ? !empty($site_menu_catalog_categories) : !empty($menu_item['children']));
                        ?>
                        <li class="menu__item<?php echo $has_submenu ? ' has-submenu' : ''; ?>">
                            <a href="<?php echo htmlspecialchars($menu_item['link'], ENT_QUOTES, 'UTF-8'); ?>" class="menu__link">
                                <?php if ($menu_item['icon_url']) { ?><img src="<?php echo htmlspecialchars($menu_item['icon_url'], ENT_QUOTES, 'UTF-8'); ?>" alt="" width="24" height="24"><?php } ?>
                                <span><?php echo htmlspecialchars($menu_item['name'], ENT_QUOTES, 'UTF-8'); ?></span>
                            </a>
                            <?php if ($has_submenu) { ?>
                            <div class="submenu">
                                <div class="submenu__wrap">
                                    <?php if ($menu_item['title'] !== '' || $menu_item['text'] !== '') { ?>
                                    <div class="submenu__description">
                                        <?php if ($menu_item['title'] !== '') { ?><div class="submenu__description-title"><?php echo htmlspecialchars($menu_item['title'], ENT_QUOTES, 'UTF-8'); ?></div><?php } ?>
                                        <?php if ($menu_item['text'] !== '') { ?><div class="submenu__description-text"><?php echo nl2br(htmlspecialchars($menu_item['text'], ENT_QUOTES, 'UTF-8')); ?></div><?php } ?>
                                    </div>
                                    <?php } ?>
                                    <div class="submenu__block">
                                        <?php if ($catalog_menu) { ?>
                                        <div class="submenu__aside">
                                            <?php foreach ($site_menu_catalog_categories as $category_index => $category) { ?>
                                            <a href="<?php echo htmlspecialchars(html_entity_decode($category['href'], ENT_QUOTES, 'UTF-8'), ENT_QUOTES, 'UTF-8'); ?>" class="submenu__category<?php echo $category_index === 0 ? ' active' : ''; ?>" data-category="catalog-<?php echo (int)$category['id']; ?>">
                                                <?php if ($category['icon']) { ?><img src="<?php echo htmlspecialchars($category['icon'], ENT_QUOTES, 'UTF-8'); ?>" alt="" width="32" height="32"><?php } ?>
                                                <span><?php echo htmlspecialchars($category['name'], ENT_QUOTES, 'UTF-8'); ?></span>
                                            </a>
                                            <?php } ?>
                                        </div>
                                        <?php foreach ($site_menu_catalog_categories as $category_index => $category) { ?>
                                        <div class="submenu__list<?php echo $category_index === 0 ? ' active' : ''; ?>" data-category="catalog-<?php echo (int)$category['id']; ?>">
                                            <?php $current_section = null; ?>
                                            <?php foreach ($category['children'] as $child) { ?>
                                            <?php if ($category['show_sections'] && $child['section_name'] !== '' && $child['section_name'] !== $current_section) { $current_section = $child['section_name']; ?>
                                            <div class="submenu__list-title"><?php echo htmlspecialchars($current_section, ENT_QUOTES, 'UTF-8'); ?></div>
                                            <?php } ?>
                                            <a href="<?php echo htmlspecialchars(html_entity_decode($child['href'], ENT_QUOTES, 'UTF-8'), ENT_QUOTES, 'UTF-8'); ?>" class="submenu__link">
                                                <?php if ($child['image']) { ?><img src="<?php echo htmlspecialchars($child['image'], ENT_QUOTES, 'UTF-8'); ?>" alt="" width="90" height="90" loading="lazy"><?php } ?>
                                                <span><?php echo htmlspecialchars($child['name'], ENT_QUOTES, 'UTF-8'); ?></span>
                                            </a>
                                            <?php } ?>
                                        </div>
                                        <?php } ?>
                                        <?php } else { ?>
                                        <div class="submenu__list active" data-category="menu-<?php echo (int)$menu_index; ?>">
                                            <?php foreach ($menu_item['children'] as $child) { ?>
                                            <a href="<?php echo htmlspecialchars($child['link'], ENT_QUOTES, 'UTF-8'); ?>" class="submenu__link">
                                                <?php if ($child['image_url']) { ?><img src="<?php echo htmlspecialchars($child['image_url'], ENT_QUOTES, 'UTF-8'); ?>" alt="" width="90" height="90" loading="lazy"><?php } ?>
                                                <span><?php echo htmlspecialchars($child['name'], ENT_QUOTES, 'UTF-8'); ?></span>
                                            </a>
                                            <?php } ?>
                                        </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                            <?php } ?>
                        </li>
                        <?php } ?>
                    </ul>
                </nav>
            </div>
        </header>
