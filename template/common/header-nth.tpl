<!DOCTYPE html>
<html lang="ru-RU">

<head>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?></title>
    <?php if ($description) { ?>
    <meta name="description"
        content="<?php echo $description; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>" />
    <meta name="robots" content="noindex, nofollow" />
    <meta name="yandex-verification" content="698cb79bf208169a" />

    <?php } ?>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="/apple-touch-icon.png" />
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="/apple-touch-icon-76x76.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="/apple-touch-icon-120x120.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="/apple-touch-icon-152x152.png" />
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon-180x180.png" />
    <meta name="author" content="Ювелиры Москвы">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="<?php echo $base; ?>" />


    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap" rel="stylesheet">

    <meta property="og:type" content="product" />
    <meta property="og:product:brand" content="Uvelir Moscow Jewellery" />
    <meta property="og:product:condition" content="new" />
    <meta property="og:title"
        content="<?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
    <meta property="og:description"
        content="<?php echo $description; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?>" />
    <meta property="og:url" content="<?php echo $og_url; ?>" />
    <?php if ($og_image) { ?>
    <meta property="og:image" content="<?php echo $og_image; ?>" />
    <?php } else { ?>
    <meta property="og:image" content="<?php echo $logo; ?>" />
    <?php } ?>

    <meta name="application-name" content="UvelirMoscow.Ru - Эксклюзивные ювелирные украшения в Вашем смартфоне!" />
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="apple-mobile-web-app-title" content="UM: украшения Вашей мечты!">
    <meta name="apple-mobile-web-app-capable" content="yes">

    <meta name="copyright" lang="ru" content="uvelirmoscow.ru">
    <meta name="format-detection" content="telephone=no">
    <meta name="google-site-verification" content="HGy-a3yHfqqyBUw46k4ceWgSbMAbeNZQFC6AZL8kSzc" />

    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js"></script>
<script src="https://uvelirmoscow.ru/catalog/view/theme/uvelirmoscow/stylesheet/slick-new/jquery-3.4.1.min.js"></script>
<script src="https://uvelirmoscow.ru/catalog/view/theme/uvelirmoscow/stylesheet/slick-new/slick.min.js"></script>
    <script src="catalog/view/javascript/articmodal/jquery.arcticmodal-0.3.min.js"></script>
	<script src="catalog/view/javascript/tcal.js"></script>
    <script src="catalog/view/javascript/main.js?v1"></script>

    <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>"></script>
    <?php } ?>
    <script>
        function resizeIframe(obj) {
            obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
        }
    </script>

    <?php foreach ($styles as $style) { ?>
    <link href="<?php echo $style['href']; ?>" rel="<?php echo $style['rel']; ?>"
        media="<?php echo $style['media']; ?>" />
    <?php } ?>
    <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
    <?php } ?>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" /><?php } ?>
    <link rel="stylesheet" href="catalog/view/theme/uvelirmoscow/bootstrap3/css/bootstrap.css">
    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://uvelirmoscow.ru/catalog/view/theme/uvelirmoscow/stylesheet/font-awesome-new/css/all.css">
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css?v02" rel="stylesheet" media="screen" />
    <link href="catalog/view/javascript/articmodal/jquery.arcticmodal-0.3.css" rel="stylesheet">
	<link href="catalog/view/javascript/lightbox/lightbox.css" rel="stylesheet">
    <link href="catalog/view/theme/uvelirmoscow/stylesheet/stylesheet.css?v10027" rel="stylesheet">

    <link href="catalog/view/theme/uvelirmoscow/stylesheet/style.css" rel="stylesheet">
    <link rel="stylesheet"
        href="https://uvelirmoscow.ru/catalog/view/theme/uvelirmoscow/owlcarus2/libs/owlcarusel2/assets/owl.carousel.min.css">
    <link rel="stylesheet"
        href="https://uvelirmoscow.ru/catalog/view/theme/uvelirmoscow/owlcarus2/libs/owlcarusel2/assets/owl.theme.default.css">
    <style>
        #catalog-category img {
            width: 100%;
            max-width: 210px;
            margin: 0 auto
        }
    </style>
    <script>
        (function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({
                'gtm.start': new Date().getTime(),
                event: 'gtm.js'
            });
            var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s),
                dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src =
                'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-MV3TG5D');
    </script>
</head>

<body class="test">
    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MV3TG5D" height="0" width="0"
            style="display:none;visibility:hidden"></iframe></noscript>
    <!-- Yandex.Metrika counter   class="<?php echo $class; ?>"-->
    <script>
        (function (d, w, c) {
            (w[c] = w[c] || []).push(function () {
                try {
                    w.yaCounter18227068 = new Ya.Metrika2({
                        id: 18227068,
                        clickmap: true,
                        trackLinks: true,
                        accurateTrackBounce: true,
                        webvisor: true,
                        ecommerce: "dataLayer"
                    });
                } catch (e) {}
            });
            var n = d.getElementsByTagName("script")[0],
                s = d.createElement("script"),
                f = function () {
                    n.parentNode.insertBefore(s, n);
                };
            s.type = "text/javascript";
            s.async = true;
            s.src = "https://mc.yandex.ru/metrika/tag.js";
            if (w.opera == "[object Opera]") {
                d.addEventListener("DOMContentLoaded", f, false);
            } else {
                f();
            }
        })(document, window, "yandex_metrika_callbacks2");
    </script> <noscript>
        <div><img src="https://mc.yandex.ru/watch/18227068" style="position:absolute; left:-9999px;" alt="" /></div>
    </noscript> <!-- /Yandex.Metrika counter -->
    <script>
        ! function () {
            var t = document.createElement("script");
            t.type = "text/javascript", t.async = !0, t.src = "https://vk.com/js/api/openapi.js?154", t.onload =
                function () {
                    VK.Retargeting.Init("VK-RTRG-107671-5NEwN"), VK.Retargeting.Hit()
                }, document.head.appendChild(t)
        }();
    </script><noscript><img src="https://vk.com/rtrg?p=VK-RTRG-107671-5NEwN" style="position:fixed; left:-999px;"
            alt="" /></noscript>
    <!-- Facebook Pixel Code -->
    <script>
        ! function (f, b, e, v, n, t, s) {
            if (f.fbq) return;
            n = f.fbq = function () {
                n.callMethod ?
                    n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            };
            if (!f._fbq) f._fbq = n;
            n.push = n;
            n.loaded = !0;
            n.version = '2.0';
            n.queue = [];
            t = b.createElement(e);
            t.async = !0;
            t.src = v;
            s = b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t, s)
        }(window, document, 'script',
            'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '2704145669614818');
        fbq('track', 'PageView');
    </script>
    <noscript><img alt="facebook" height="1" width="1" style="display:none"
            src="https://www.facebook.com/tr?id=2704145669614818&ev=PageView&noscript=1" /></noscript>
    <!-- End Facebook Pixel Code -->
    <div class="body-bg">
        <div class="full-width-menu2 hidden-sm hidden-md hidden-lg"
            style="width: 100%;margin-bottom: 0px;background-color: #65000b;box-shadow: 0 1px 15px rgba(0,0,0,0.3);">
            <div class="container">
                <nav id="menu" class="navbar">
                    <div class="navbar-header">
                        <!-- <span id="category" class="visible-xs">Меню</span> --> <button type="button"
                            class="btn btn-navbar navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
                    </div>
                    <div class="navbar-collapse navbar-ex1-collapse collapse" role="navigation" aria-expanded="false"
                        style="height: 1px;">
                        <ul class="nav navbar-nav">
                           <?php if ($categories) { ?>
								<div class="container">
								  <nav id="menu" class="navbar">
								    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
								      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
								    </div>
								    <div class="collapse navbar-collapse navbar-ex1-collapse">
								      <ul class="nav navbar-nav">
								        <?php foreach ($categories as $category) { ?>
								        <?php if ($category['children']) { ?>
								        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
								          <div class="dropdown-menu">
								            <div class="dropdown-inner">
								              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
								              <ul class="list-unstyled">
								                <?php foreach ($children as $child) { ?>
								                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
								                <?php } ?>
								              </ul>
								              <?php } ?>
								            </div>
								            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
								        </li>
								        <?php } else { ?>
								        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
								        <?php } ?>
								        <?php } ?>
								      </ul>
								    </div>
								  </nav>
								</div>
								<?php } ?>

                            <li><a href="/pokupatelyam/kak-zakazat">Как заказать</a></li>
                            <li><a href="/uslugi/remont-yuvelirnyh-izdeliy">Ремонт</a></li>
                            <li><a href="/pokupatelyam/dostavka-i-oplata">Доставка и оплата</a></li>
                            <li><a href="https://uvelirmoscow.ru/garantii-all">Гарантии</a></li>
                            <li><a href="/nasha-rabota">Наши работы</a></li>
                            <li><a href="/statya">Блог</a></li>
                            <li><a href="/akciya">Акции</a></li>
                            <li><a href="/kontakti">Контакты</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <header>
                        <div id="global-header" class="global-header">

                                        <div class="global-header__top-bar">
                                            <div class="ra-wrapper">
                                
                                                <span class="global-header__top-bar_address">
                                                    г. Москва, ул. Кузнецкий мост д. 7, стр. 3.
                                                </span>
                                                <a href="mailto:zakaz@uvelirmoscow.ru" class="global-header__top-bar_email">
                                                    zakaz@uvelirmoscow.ru
                                                </a>
                                                <div class="global-header__top-bar_icon-group">
                                                    <a id="htb-account" class="global-header__top-bar_icon user-icon" href="/my-account" ></a>
                                                    <a id="htb-wishlist" class="global-header__top-bar_icon heart-icon" href="/wishlist">
                                                            <?php if($wishlist_count > 0): ?>
                                                            <span><?php echo $wishlist_count; ?></span>
                                                            <?php endif; ?>
                                                    </a>
                                                    <a id="htb-cart" class="global-header__top-bar_icon bag-icon" href="/cart">
                                                            <?php if($cart_items_count > 0): ?>
                                                            <span><?php echo $cart_items_count; ?></span>
                                                            <?php endif; ?>
                                                    </a>
                                                </div>
                                            </div>
                                
                                        </div>
                                        <div class="global-header__middle-content">
                                            <div class="ra-wrapper">
                                                <div class="global-header__description">
                                                    <p class="global-header__description-string">
                                                        Дизайн-студия <?php echo $name; ?>
                                                    </p>
                                                    <p class="global-header__description-string">
                                                        Изготовление ювелирных изделий
                                                    </p>
                                                    <p class="global-header__description-string">
                                                        Ремонт сложных украшений
                                                    </p>
                                
                                                </div>
                                
                                                <div class="global-header__logo">
                                                    <a href="/">
                                                        <img src="https://uvelirmoscow.ru/catalog/view/theme/uvelirmoscow/image/logo.svg" title="<?php echo $name; ?>"
                                                            alt="<?php echo $name; ?>">
                                                    </a>
                                                </div>
                                                <div class="global-header__contact-info">
                                                    <p class="global-header__working-time">
                                                        С 10:00 до 20:00
                                                    </p>
                                                    <p class="global-header__contact-phone">
                                                        <a href="tel:+74996889149">
                                                            <?php echo $telephone; ?>
                                                        </a>
                                                    </p>
                                                    <?php echo $callback; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
            <div class="full-width-menu hidden-xs hidden-xl">
                <div class="ra-wrapper">
                    <nav>
                        <ul class="topmenu">
                            <li><a href="https://uvelirmoscow.ru/katalog" class="active">КАТАЛОГ ИЗДЕЛИЙ</a>
                                <ul class="submenu">
                                    <li><a href="https://uvelirmoscow.ru/katalog/vse-ukrasheniya">Все украшения</a>
                                    </li>
                                    <li><a href="https://uvelirmoscow.ru/katalog/obruchalnye-kolca-10">Обручальные
                                            кольца<span class="fa fa-angle-right"></span></a>
                                        <ul class="submenu">
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/obruchalnye-kolca-bez-vstavok">
                                                    - Без вставок</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/klassicheskie-111"> -
                                                    Классические</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/mujskie-83"> - Мужские</a>
                                            </li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/neobychnye-124"> -
                                                    Необычные</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/parnye-98"> - Парные
                                                    обручальные кольца</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/s-brilliantami-88"> - С
                                                    бриллиантами</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/s-kamnyami-120"> - С
                                                    драгоценными камнями</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/shirokie-103"> -
                                                    Широкие</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/eksklyuzivnye-93"> -
                                                    Эксклюзивные</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/zolotye-obruchalnye-kolca">
                                                    - Золотые</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/obruchalnye-kolca-iz-zheltogo-zolota">
                                                    - Из желтого золота</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/beloe-zoloto-108"> - Из
                                                    белого золота</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/obruchalnye-kolca-iz-krasnogo-zolota">
                                                    - Из красного золота</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/obruchalnye-kolca-iz-kombinirovannogo-zolota">
                                                    - Из комбинированного золота</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/platina-118"> - Из
                                                    платины</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/serebro-119"> - Из
                                                    серебра</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="https://uvelirmoscow.ru/katalog/pomolvochnye-kolca-14">Помолвочные
                                            кольца<span class="fa fa-angle-right"></span></a>
                                        <ul class="submenu">
                                            <li><a href="https://uvelirmoscow.ru/katalog/cvetnie-brill"> - С
                                                    цветными бриллиантами</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/kolca-pomolvochnie-zolotie">
                                                    - Золотые</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/kolca-pomolvochnie-iz-belogo-zolota">
                                                    - Из белого золота</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/kolca-pomolvochnie-platinovie">
                                                    - Платиновые</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/pomolvochnie-kolca-s-1-brilliantom">
                                                    - С 1 бриллиантом</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/pomolvochnie-kolca-s-3-brilliantami">
                                                    - С 3 бриллиантами</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/kolca-graff"> - В стиле
                                                    Graff</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/kolca-tiffany-999"> - В
                                                    стиле Тиффани</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="https://uvelirmoscow.ru/katalog/kolca-52">Кольца<span
                                                class="fa fa-angle-right"></span></a>
                                        <ul class="submenu">
                                            <li><a href="https://uvelirmoscow.ru/katalog/kolca-cvet-brill"> - С
                                                    цветными бриллиантами</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/elitnye-kolca-s-brilliantami">
                                                    - Элитные</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/kolca-s-brilliantami-50">
                                                    - С бриллиантами</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/jenskie-kolca"> -
                                                    Женские</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/mujskie-kolca-154"> -
                                                    Мужские</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/kolca-bez-kamnei"> - Без
                                                    камней</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/kolca-s-sapfirami-51"> - С
                                                    драгоценными камнями</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/perstni-155"> -
                                                    Перстни</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/kolco-s-jemchugom-53"> - С
                                                    жемчугом</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/kolca-s-emalyu"> - С
                                                    эмалью</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/zolotye-kolca-152"> -
                                                    Золотые</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/kolca-iz-zheltogo-zolota">
                                                    - Из желтого золота</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/kolca-iz-belogo-zolota"> -
                                                    Из белого золота</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/kolca-iz-krasnogo-zolota">
                                                    - Из красного золота</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/kolca-iz-kombinirovannogo-zolota">
                                                    - Из комбинированного золота</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/kolca-iz-platiny"> - Из
                                                    платины</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/serebryanye-kolca-153"> -
                                                    Серебряные</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="https://uvelirmoscow.ru/katalog/sergi-11">Серьги<span
                                                class="fa fa-angle-right"></span></a>
                                        <ul class="submenu">
                                            <li><a href="https://uvelirmoscow.ru/katalog/sergi-pusety-gvozdiki"> -
                                                    Пусеты (гвоздики)</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/sergi-s-brilliantami"> - С
                                                    бриллиантами</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/sergi-kongo-kolca"> -
                                                    Конго (кольца)</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/sergi-visyulki-dlinnye"> -
                                                    Серьги длинные</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/sergi-s-zhemchugom"> - С
                                                    жемчугом</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/sergi-s-sapfirami"> - С
                                                    сапфирами</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/sergi-s-izumrudami"> - С
                                                    изумрудами</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/sergi-s-rubinami"> - С
                                                    рубинами</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/zolotye-sergi"> -
                                                    Золотые</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/sergi-iz-zheltogo-zolota">
                                                    - Из желтого золота</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/sergi-iz-belogo-zolota"> -
                                                    Из белого золота</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/sergi-iz-kombinirovannogo-zolota">
                                                    - Из комбинированного золота</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/sergi-iz-platiny"> - Из
                                                    платины</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="https://uvelirmoscow.ru/katalog/garnitury-8">Гарнитуры</a></li>
                                    <li><a href="https://uvelirmoscow.ru/katalog/cepi-i-braslety-12">Цепочки<span
                                                class="fa fa-angle-right"></span></a>
                                        <ul class="submenu">
                                            <li><a href="https://uvelirmoscow.ru/katalog/glidernye-cepochki-271"> -
                                                    Глидерные</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/mujskie-cepi-55"> -
                                                    Мужские</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/jenskie-cepi-64"> -
                                                    Женские</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/cepochki-bismark"> -
                                                    Цепочки «Бисмарк»</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/cepochki-yakornye"> -
                                                    Якорные</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/cepochki-lisij-xvost"> -
                                                    «Лисий хвост»</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/cepochki-pancirnye"> -
                                                    Панцирные</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/zolotye-cepochki-156"> -
                                                    Золотые</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/cepochki-iz-zheltogo-zolota">
                                                    - Из желтого золота</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/cepochki-iz-belogo-zolota">
                                                    - Из белого золота</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/cepochki-iz-krasnogo-zolota">
                                                    - Из красного золота</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/cepochki-iz-kombinirovannogo-zolota">
                                                    - Из комбинированного золота</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/cepochki-iz-platiny"> - Из
                                                    платины</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="https://uvelirmoscow.ru/katalog/braslety-73">Браслеты<span
                                                class="fa fa-angle-right"></span></a>
                                        <ul class="submenu">
                                            <li><a href="https://uvelirmoscow.ru/katalog/mujskie-braslety-142"> -
                                                    Мужские</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/jenskie-braslety-143"> -
                                                    Женские</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/braslety-s-brilliantami">
                                                    - C бриллиантами</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/braslety-s-devochkoi"> - С
                                                    девочкой</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/braslety-s-malchikom"> - С
                                                    мальчиком</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/braslety-s-figurkami-detei">
                                                    - С фигурками детей</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/ruchnye-braslety-75"> -
                                                    Ручные</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/braslety-so-vstakami-77">
                                                    - Cо вставками</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/braslety-glidernye-76"> -
                                                    Глидерные </a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/tennisnye-braslety"> -
                                                    Теннисные</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/jestkie-braslety"> -
                                                    Жесткие</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/zolotye-braslety-141"> -
                                                    Золотые</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/braslety-iz-zheltogo-zolota">
                                                    - Из желтого золота</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/braslety-iz-belogo-zolota">
                                                    - Из белого золота</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/braslety-iz-krasnogo-zolota">
                                                    - Из красного золота</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/braslety-iz-kombinirovannogo-zolota">
                                                    - Из комбинированного золота</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/braslety-iz-platiny"> - Из
                                                    платины</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/serebryanye-braslety-147">
                                                    - Серебряные</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="https://uvelirmoscow.ru/katalog/na-rojdenie-159">На рождение</a>
                                    </li>
                                    <li><a href="https://uvelirmoscow.ru/katalog/kolye">Колье</a></li>
                                    <li><a href="https://uvelirmoscow.ru/katalog/kulony-17">Кулоны / Подвески<span
                                                class="fa fa-angle-right"></span></a>
                                        <ul class="submenu">
                                            <li><a href="https://uvelirmoscow.ru/katalog/muzhskie-podveski-kulony">
                                                    - Мужские</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/zhenskie-podveski-kulony">
                                                    - Женские</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/podveski-kulony-s-brilliantami">
                                                    - C бриллиантами</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/podveski-kulony-bez-vstavok">
                                                    - Без вставок</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/podveski-krestiki"> -
                                                    Крестики</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/podveski-kulony-s-gravirovkoi">
                                                    - С гравировкой</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/podveski-kulony-iz-zolota">
                                                    - Золотые</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/podveski-kulony-iz-zheltogo-zolota">
                                                    - Из желтого золота</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/podveski-kulony-iz-belogo-zolota">
                                                    - Из белого золота</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/podveski-kulony-iz-krasnogo-zolota">
                                                    - Из красного золота</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/podveski-kulony-iz-platiny">
                                                    - Из платины</a></li>
                                            <li><a
                                                    href="https://uvelirmoscow.ru/katalog/podveski-kulony-iz-serebra">
                                                    - Серебряные</a></li>
                                        </ul>
                                    </li>
                                    <li class="zaponki"><a
                                            href="https://uvelirmoscow.ru/katalog/zaponki-41">Запонки<span
                                                class="fa fa-angle-right"></span></a>
                                        <ul class="submenu">
                                            <li><a href="https://uvelirmoscow.ru/katalog/zaponki-s-inicialami"> -
                                                    Запонки с инициалами</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="https://uvelirmoscow.ru/katalog/suveniry-i-podarki-13">Сувениры и
                                            подарки</a></li>
                                    <li class="zaponki"><a
                                            href="https://uvelirmoscow.ru/katalog/zaponki-41">Коллекции<span
                                                class="fa fa-angle-right"></span></a>
                                        <ul class="submenu">
                                            <li><a href="https://uvelirmoscow.ru/katalog/uvelirmoscow-premium-139">
                                                    - UvelirMoscow Premium</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/uvelirmoscow-rose-140"> -
                                                    UvelirMoscow Rose</a></li>
                                            <li><a href="https://uvelirmoscow.ru/katalog/detskaya-kollekciya-138">
                                                    - Детская коллекция</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            <li><a href="/pokupatelyam/kak-zakazat">Как заказать</a></li>
                            <li><a href="/uslugi/remont-yuvelirnyh-izdeliy">Ремонт</a></li>
                            <li><a href="/pokupatelyam/dostavka-i-oplata">Доставка и оплата</a></li>
                            <li class="top-menu__link1"><a href="https://uvelirmoscow.ru/garantii-all">Гарантии</a></li>
                            <li class="top-menu__link2"><a href="https://uvelirmoscow.ru/nasha-rabota">Наши работы</a></li>
                            <li class="top-menu__link3"><a href="https://uvelirmoscow.ru/statya">Блог</a></li>
                            <li class="top-menu__link4"><a href="https://uvelirmoscow.ru/akciya">Акции</a></li>
                            <li class="top-menu__link5"><a href="https://uvelirmoscow.ru/kontakti">Контакты</a></li>

                            <ul class="dropdown short-menu"><span class="dropdown-toggle" data-toggle="dropdown">Еще</span>
                            <div class="dropdown-menu submenu" >
                                <div class="dropdown-inner">
                                    <ul class="list-unstyled">
                                            <li class="short-menu__link1"><a href="https://uvelirmoscow.ru/garantii-all">Гарантии</a></li>
                                            <li class="short-menu__link2"><a href="https://uvelirmoscow.ru/nasha-rabota">Наши работы</a></li>
                                            <li class="short-menu__link3"><a href="https://uvelirmoscow.ru/statya">Блог</a></li>
                                            <li class="short-menu__link4"><a href="https://uvelirmoscow.ru/akciya">Акции</a></li>
                                            <li class="short-menu__link5"><a href="https://uvelirmoscow.ru/kontakti">Контакты</a></li>
                                    </ul></div></div></ul>
                        </ul>
                        <div class="search-header dropdown">
                            <div class="search-header-btn search-icon dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">             
                            </div>
                            <div class="dropdown-menu search-header-holder" style="left:-280px">
                                
                                    <form class="search-field" method="GET" action="/poisk">
                                            <input type="text" name="search" value="" placeholder="Поиск" class="form-control main-search-input" autocomplete="off">
                                            <input type="submit" value="Поиск" class="btn btn-contrast do-search main">
                                    </form>
                                    <div class="search-body-holder" style="display:none">

                                        </div>

                            </div>

                        </div>
                    </nav>
                </div>
            </div>
        </header>
        <?php if ($categories) { ?>
        <?php } ?>
        <?php echo $column_header; ?>