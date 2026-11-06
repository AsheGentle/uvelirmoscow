<!DOCTYPE html>
<html lang="ru-RU">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $title; if (isset($_GET['page'])) { echo " - ". ((int) $_GET['page'])." ".$text_page;} ?></title>
    <?php if ($description) { ?>
    <meta name="description" content="<?php echo $description; if (isset($_GET['page'])) { echo " -
    ". ((int) $_GET['page'])." ".$text_page;} ?>" />
    <?php } ?>
    <?php if ($keywords) { ?>
    <meta name="keywords" content="<?php echo $keywords; ?>"/>
    <?php } ?>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="/apple-touch-icon.png"/>
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-57x57.png"/>
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-72x72.png"/>
    <link rel="apple-touch-icon" sizes="76x76" href="/apple-touch-icon-76x76.png"/>
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114x114.png"/>
    <link rel="apple-touch-icon" sizes="120x120" href="/apple-touch-icon-120x120.png"/>
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144x144.png"/>
    <link rel="apple-touch-icon" sizes="152x152" href="/apple-touch-icon-152x152.png"/>
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon-180x180.png"/>
    <meta name="author" content="Ювелиры Москвы">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="<?php echo $base; ?>"/>

    <meta property="og:type" content="product"/>
    <meta property="og:product:brand" content="Uvelir Moscow Jewellery"/>
    <meta property="og:product:condition" content="new"/>
    <meta property="og:title" content="<?php echo $title; if (isset($_GET['page'])) { echo " -
    ". ((int) $_GET['page'])." ".$text_page;} ?>" />
    <meta property="og:description" content="<?php echo $description; if (isset($_GET['page'])) { echo " -
    ". ((int) $_GET['page'])." ".$text_page;} ?>"/>
    <meta property="og:url" content="<?php echo $og_url; ?>"/>
    <?php if ($og_image) { ?>
    <meta property="og:image" content="<?php echo $og_image; ?>"/>
    <?php } else { ?>
    <meta property="og:image" content="<?php echo $logo; ?>"/>
    <?php } ?>

    <meta name="application-name" content="UvelirMoscow.Ru - Эксклюзивные ювелирные украшения в Вашем смартфоне!"/>
    <meta name="msapplication-TileColor" content="#ffffff"/>
    <meta name="apple-mobile-web-app-title" content="UM: украшения Вашей мечты!">
    <meta name="apple-mobile-web-app-capable" content="yes">

    <meta name="copyright" lang="ru" content="uvelirmoscow.ru">
    <meta name="format-detection" content="telephone=no">
    <meta name="google-site-verification" content="HGy-a3yHfqqyBUw46k4ceWgSbMAbeNZQFC6AZL8kSzc"/>

    <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js"></script>
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
          media="<?php echo $style['media']; ?>"/>
    <?php } ?>
    <?php foreach ($analytics as $analytic) { ?>
    <?php echo $analytic; ?>
    <?php } ?>
    <?php foreach ($links as $link) { ?>
    <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>"/>
    <?php } ?>
    <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
    <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css?v02" rel="stylesheet" media="screen"/>
    <link href="catalog/view/theme/uvelirmoscow/stylesheet/stylesheet.css?v10024" rel="stylesheet">
    <style>#catalog-category img {width:100%;max-width:210px;margin:0 auto}</style>
    <script>(function (w, d, s, l, i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
                })(window, document, 'script', 'dataLayer', 'GTM-MV3TG5D');</script>
</head>
<body class="test">
<noscript>
    <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MV3TG5D" height="0" width="0"
            style="display:none;visibility:hidden"></iframe>
</noscript>

<!-- Yandex.Metrika counter   class="<?php echo $class; ?>"-->
<script> (function (d, w, c) {
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
            } catch (e) {
            }
        });
        var n = d.getElementsByTagName("script")[0], s = d.createElement("script"), f = function () {
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
    })(document, window, "yandex_metrika_callbacks2"); </script>
<noscript>
    <div><img src="https://mc.yandex.ru/watch/18227068" style="position:absolute; left:-9999px;" alt=""/></div>
</noscript> <!-- /Yandex.Metrika counter -->
<script>!function (){var t=document.createElement("script");t.type="text/javascript",t.async=!0,t.src="https://vk.com/js/api/openapi.js?154",t.onload=function(){VK.Retargeting.Init("VK-RTRG-107671-5NEwN"),VK.Retargeting.Hit()},document.head.appendChild(t)}();</script>
<noscript><img src="https://vk.com/rtrg?p=VK-RTRG-107671-5NEwN" style="position:fixed; left:-999px;" alt=""/></noscript>
<script>
    !function (f, b, e, v, n, t, s)
            {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
            n.callMethod.apply(n,arguments):n.queue.push(arguments)};
            if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
            n.queue=[];t=b.createElement(e);t.async=!0;
            t.src=v;s=b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t,s)}(window, document, 'script',
        'https://connect.facebook.net/en_US/fbevents.js');
    fbq('init', '657628447771517');
    fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" alt="Facebookpixel" style="display:none"
               src="https://www.facebook.com/tr?id=657628447771517&ev=PageView&noscript=1"
    /></noscript>
<div class="body-bg">
    <div class='hidden-md hidden-lg'
         style="display:block;width:100%;bottom: 0px;height: 57px;position: fixed;z-index: 9999;background-color: #65000b;text-align: center;padding-top: 12px;color: #fff;font-size: 19px;padding-right:25%;">
        Звоните <a href="tel:<?php echo str_replace(" )", "", str_replace("(", "", str_replace("-", "", str_replace(" ",
        "", $telephone)))); ?>" style="color: #fff;border-bottom: 1px dashed;font-size: 22px;padding-top: 20px;"
        onclick="yaCounter18227068.reachGoal('phonemob'); return true;" ><?php echo $telephone; ?></a><br><span
                style="font-size: 14px;">Мы поможем Вам с выбором!</span></div>
    <header>
        <div itemscope itemtype="http://schema.org/JewelryStore" class="container">
            <div class="row">
                <div class="col-sm-3 col-xs-6 m-logo">
                    <div id="logo">
                        <?php if ($logo) { ?>
                        <?php if ($home == $og_url) { ?>
                        <a itemprop="url" href="/"><img itemprop="image" src="/image/logo.png"
                                                        title="<?php echo $name; ?>" alt="<?php echo $name; ?>"
                                                        class="img-responsive"/></a>
                        <?php } else { ?>
                        <a itemprop="url" href="/"><img itemprop="image" src="/image/logo.png"
                                                        title="<?php echo $name; ?>" alt="<?php echo $name; ?>"
                                                        class="img-responsive"/></a>
                        <?php } ?>
                        <?php } else { ?>
                        <h1><a href="/"><?php echo $name; ?></a></h1>
                        <?php } ?>
                    </div>
                </div>
                <div class="col-sm-6 hidden-xs"><span itemprop="geo" itemscope
                                                      itemtype="http://schema.org/GeoCoordinates"><meta
                                itemprop="latitude" content="55.761919"/><meta itemprop="longitude"
                                                                               content="37.619106"/></span>
                    <div class="site-slogan center hidden-xs companyname" itemprop="name">Ювелирная
                        дизайн-студия <?php echo $name; ?></div>
                    <div class="site-slogan center hidden-md hidden-sm" itemprop="description">Изготовление эксклюзивных
                        ювелирных изделий <br/>Ремонт и восстановление сложных украшений
                    </div>
                    <div class="adress center hidden-xs " itemprop="address" itemscope
                         itemtype="http://schema.org/PostalAddress">
                        <!-- <span style="color: #ccc;">Наш шоу-рум: </span><a href="/kontakti" style="color: #fff;border-bottom: 1px dashed;"><?php echo $address; ?></a> -->
                        <meta itemprop="addressLocality" content="Москва">
                        <meta itemprop="streetAddress" content="Кузнецкий Мост 7, строение 3">
                        <meta itemprop="postalCode" content="107031">
                    </div>
                    <meta itemprop="email" content="zakaz@uvelirmoscow.ru">
                </div>
                <div class="col-sm-3 col-xs-6 m-tel">
                    <meta itemprop="priceRange" content="RUB">
                    <div class="site-phone center"><a onclick="window.location.href = 'tel:<?php echo $telephone; ?>';"><span
                                    itemprop="telephone"><?php echo $telephone; ?></span></a></div>
                    <div class="site-open center hidden-md hidden-sm hidden-xs" itemprop="openingHours"
                         content="Mo-Fr 10:00-20:00">Время работы: <b style='color:#000'>с 10:00 до 20:00</b></div>
                    <?php echo $callback; ?>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 col-xs-12 hidden-sm hidden-md hidden-lg"
                     style="text-align: center;padding-top: 5px;padding-bottom: 5px;">
                    <span style="color: #ccc;font-size: 13px;">Шоу-рум: </span><a href="/kontakti"
                                                                                  style="color:#000;border-bottom:1px dashed;font-size:13px;">г.
                        Москва, ул. Кузнецкий Мост 7, стр. 3 (схема проезда)</a>
                </div>
            </div>
        </div>
    </header>
    <?php if ($categories) { ?>
    <div class="full-width-menu">
        <div class="container">
            <nav id="menu" class="navbar">
                <div class="navbar-header">
                    <!-- <span id="category" class="visible-xs"><?php echo $text_category; ?></span> -->
                    <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">
                        <?php foreach ($categories as $category) { ?>
                        <?php if ($category['children']) { ?>
                        <li class="dropdown"><a href="<?php echo str_replace('http://','//',$category['href']); ?>"
                                                class="dropdown-toggle"
                                                data-toggle="dropdown"><?php echo $category['name']; ?></a>
                            <div class="dropdown-menu">
                                <div class="dropdown-inner">
                                    <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                    <ul class="list-unstyled">
                                        <?php foreach ($children as $child) { ?>
                                        <li>
                                            <a href="<?php echo str_replace('http://','//',$child['href']); ?>"><?php echo $child['name']; ?></a>

                                            <?php if(count($child['children'])>0):?>
                                            <div class="child-category">
                                                <ul>
                                                    <?php foreach($child['children'] as $ch):?>
                                                    <li>
                                                        <a href="<?php echo str_replace('http://','//',$ch['href']);?>"><?php echo $ch['name']?></a>
                                                    </li>
                                                    <?php endforeach; ?>
                                                </ul>
                                            </div>
                                            <?php endif;?>
                                        </li>
                                        <?php } ?>
                                    </ul>
                                    <?php } ?>
                                </div>
                                <a href="<?php echo str_replace('http://','//',$category['href']); ?>"
                                   class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a></div>
                        </li>
                        <?php } else { ?>
                        <li>
                            <a href="<?php echo str_replace('http://','//',$category['href']); ?>"><?php echo $category['name']; ?></a>
                        </li>
                        <?php } ?>
                        <?php } ?>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
    <?php } ?>
    <?php echo $column_header; ?>