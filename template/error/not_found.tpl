<?php echo $header; ?>
<?php $asset = 'catalog/view/theme/uvelirmoscow_new/assets_new/'; ?>
<main>
    <section class="inner-section">
        <ul class="breadcrumbs" itemscope itemtype="https://schema.org/BreadcrumbList">
            <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                <a href="/" class="breadcrumbs__link" itemprop="item">
                    <span itemprop="name">Главная</span>
                    <meta itemprop="position" content="1">
                </a>
            </li>
            <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                <span class="breadcrumbs__link">
                    <span itemprop="name"><?php echo htmlspecialchars($breadcrumb_title, ENT_QUOTES, 'UTF-8'); ?></span>
                    <meta itemprop="position" content="2">
                </span>
            </li>
        </ul>
        <div class="error-block">
            <h1><?php echo htmlspecialchars($heading_title, ENT_QUOTES, 'UTF-8'); ?></h1>
            <div class="subtitle">Что-то пошло не&nbsp;так...</div>
            <div class="text">Возможно, вы&nbsp;перешли по&nbsp;старой ссылке или допустили опечатку. Мы&nbsp;уже ищем страницу, но&nbsp;пока предлагаем перейти в&nbsp;нужный раздел ниже. Если вы&nbsp;не&nbsp;нашли&nbsp;то, что искали,&nbsp;&mdash; свяжитесь с&nbsp;нами.</div>
            <div class="buttons"><a href="/" class="btn btn--big">Перейти на&nbsp;главную</a></div>
        </div>
        <div class="inner-block">
            <h2>Наши услуги</h2>
            <div class="catalog-showcases">
                <div class="catalog-showcase">
                    <div class="catalog-showcase__description">
                        <div class="catalog-showcase__title">Изготовление ювелирных изделий</div>
                        <a href="/uslugi/izgotovlenie" class="btn btn--more btn--fill"><svg role="img" aria-label="Подробнее"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-long"></use></svg></a>
                    </div>
                    <picture class="catalog-showcase__image"><img src="<?php echo $asset; ?>images/content/service-1.webp" alt="" width="125" height="125" loading="lazy"></picture>
                </div>
                <div class="catalog-showcase">
                    <div class="catalog-showcase__description">
                        <div class="catalog-showcase__title">Ремонт ювелирных изделий</div>
                        <a href="/uslugi/remont-yuvelirnyh-izdeliy" class="btn btn--more btn--fill"><svg role="img" aria-label="Подробнее"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-long"></use></svg></a>
                    </div>
                    <picture class="catalog-showcase__image"><img src="<?php echo $asset; ?>images/content/catalog-showcase-1.webp" alt="" width="125" height="125" loading="lazy"></picture>
                </div>
                <div class="catalog-showcase">
                    <div class="catalog-showcase__description">
                        <div class="catalog-showcase__title">Проверка бриллиантов</div>
                        <a href="/uslugi/proverka-brilliantov-i-kamnej" class="btn btn--more btn--fill"><svg role="img" aria-label="Подробнее"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-long"></use></svg></a>
                    </div>
                    <picture class="catalog-showcase__image"><img src="<?php echo $asset; ?>images/content/service-3.webp" alt="" width="125" height="125" loading="lazy"></picture>
                </div>
                <div class="catalog-showcase">
                    <div class="catalog-showcase__description">
                        <div class="catalog-showcase__title">Дизайн ювелирных украшений</div>
                        <a href="/uslugi/dizajn-yuvelirnyh-izdeliy" class="btn btn--more btn--fill"><svg role="img" aria-label="Подробнее"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-long"></use></svg></a>
                    </div>
                    <picture class="catalog-showcase__image"><img src="<?php echo $asset; ?>images/content/idea-1.webp" alt="" width="125" height="125" loading="lazy"></picture>
                </div>
            </div>
        </div>
        <div class="inner-block">
            <h2>Наши работы</h2>
            <div class="catalog-showcases">
                <div class="catalog-showcase">
                    <div class="catalog-showcase__description">
                        <div class="catalog-showcase__title">Примеры изготовления</div>
                        <div class="catalog-showcase__text">Более 1000 реализованных проектов: кольца, серьги, браслеты, колье</div>
                        <a href="/o-studii/nashi-raboty" class="btn btn--more btn--fill"><svg role="img" aria-label="Подробнее"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-long"></use></svg></a>
                    </div>
                    <picture class="catalog-showcase__image"><img src="<?php echo $asset; ?>images/content/catalog-showcase-2.webp" alt="" width="125" height="125" loading="lazy"></picture>
                </div>
                <div class="catalog-showcase">
                    <div class="catalog-showcase__description">
                        <div class="catalog-showcase__title">Каталог украшений</div>
                        <div class="catalog-showcase__text">Готовые модели на&nbsp;любой вкус&nbsp;&mdash; от&nbsp;классики до&nbsp;авангарда</div>
                        <a href="/katalog" class="btn btn--more btn--fill"><svg role="img" aria-label="Подробнее"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-long"></use></svg></a>
                    </div>
                    <picture class="catalog-showcase__image"><img src="<?php echo $asset; ?>images/content/catalog-showcase-3.webp" alt="" width="125" height="125" loading="lazy"></picture>
                </div>
            </div>
        </div>
    </section>
</main>
<?php echo $footer; ?>
