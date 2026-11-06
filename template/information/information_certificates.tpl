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
                <div class="text">Мы&nbsp;гарантируем подлинность и&nbsp;высокое качество каждого изделия. Все наши украшения проходят обязательную сертификацию, а&nbsp;драгоценные камни сопровождаются документами ведущих геммологических лабораторий. На&nbsp;этой странице вы&nbsp;можете ознакомиться с&nbsp;нашими сертификатами, лицензиями и&nbsp;наградами.</div>

                <div class="inner-block">
                    <h2>Сертификаты соответствия на&nbsp;ювелирные изделия</h2>
                    <div class="text">Все украшения, изготовленные в&nbsp;нашей студии, проходят обязательную сертификацию и&nbsp;соответствуют российским и&nbsp;международным стандартам. Каждое изделие сопровождается сертификатом качества, подтверждающим подлинность материалов и&nbsp;соответствие пробе.</div>
                    <div class="documents documents--nowrap swiper">
                        <div class="swiper-wrapper">
                            <?php foreach ($certificate_groups['jewelry'] as $certificate) { ?>
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
                </div>

                <div class="inner-block">
                    <h2>Сертификаты на&nbsp;бриллианты</h2>
                    <div class="text">Все бриллианты, используемые в&nbsp;наших украшениях, сертифицированы ведущими геммологическими лабораториями. Мы&nbsp;работаем с&nbsp;документами, подтверждающими подлинность и&nbsp;качество каждого камня.</div>
                    <h3>Лаборатория:</h3>
                    <div class="documents-laboratories">
                        <div class="laboratories">
                            <div class="laboratory">
                                <picture class="laboratory__image">
                                    <img src="<?php echo $asset; ?>images/content/lab-1.webp" alt="" loading="lazy">
                                </picture>
                                <div class="laboratory__title">GIA (Gemological Institute of&nbsp;America)&nbsp;&mdash; мировой лидер в&nbsp;области сертификации бриллиантов</div>
                            </div>
                            <div class="laboratory">
                                <picture class="laboratory__image">
                                    <img src="<?php echo $asset; ?>images/content/lab-2.webp" alt="" loading="lazy">
                                </picture>
                                <div class="laboratory__title">МГУ (Геммологический Центр МГУ)&nbsp;&mdash; авторитетная российская лаборатория</div>
                            </div>
                            <div class="laboratory">
                                <picture class="laboratory__image">
                                    <img src="<?php echo $asset; ?>images/content/lab-3.webp" alt="" loading="lazy">
                                </picture>
                                <div class="laboratory__title">YGL&nbsp;&mdash; российская геммологическая лаборатория</div>
                            </div>
                        </div>
                        <p><strong>Важно:</strong> Все наши бриллианты имеют российские сертификаты. При покупке вы&nbsp;получаете полный &laquo;паспорт&raquo; камня с&nbsp;описанием характеристик по&nbsp;системе&nbsp;4C (вес, цвет, чистота, огранка) .</p>
                    </div>

                    <h3>Сертификаты:</h3>
                    <div class="documents documents--nowrap swiper">
                        <div class="swiper-wrapper">
                            <?php foreach ($certificate_groups['diamonds'] as $certificate) { ?>
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
                        <div class="buttons">
                            <a href="" class="btn btn--big">Проверка сертификата GIA</a>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Сертификаты на&nbsp;драгоценные камни</h2>
                    <div class="text">Для цветных драгоценных камней (сапфиры, рубины, изумруды) мы&nbsp;используем сертификаты в&nbsp;ведущих мировых геммологических лабораториях. Это гарантирует подлинность, происхождение и&nbsp;характеристики камня.</div>
                    <h3>Лаборатория:</h3>
                    <div class="documents-laboratories">
                        <div class="laboratories laboratories--small">
                            <div class="laboratory">
                                <picture class="laboratory__image">
                                    <img src="<?php echo $asset; ?>images/content/lab-4.webp" alt="" loading="lazy">
                                </picture>
                                <div class="laboratory__title">GRS (Gem Research Swisslab)&nbsp;&mdash; швейцарская лаборатория, специализирующаяся на&nbsp;определении происхождения и&nbsp;подлинности драгоценных камней</div>
                            </div>
                            <div class="laboratory">
                                <picture class="laboratory__image">
                                    <img src="<?php echo $asset; ?>images/content/lab-1.webp" alt="" loading="lazy">
                                </picture>
                                <div class="laboratory__title">GIA (Gemological Institute of&nbsp;America)&nbsp;&mdash; документы на&nbsp;бриллианты и&nbsp;цветные камни</div>
                            </div>
                            <div class="laboratory">
                                <picture class="laboratory__image">
                                    <img src="<?php echo $asset; ?>images/content/lab-5.webp" alt="" loading="lazy">
                                </picture>
                                <div class="laboratory__title">МГУ&nbsp;/ МГЦ (Московский Геммологический Центр)&nbsp;&mdash; российская аккредитованная лаборатория</div>
                            </div>
                            <div class="laboratory">
                                <picture class="laboratory__image">
                                    <img src="<?php echo $asset; ?>images/content/lab-6.webp" alt="" loading="lazy">
                                </picture>
                                <div class="laboratory__title">GAIA&nbsp;/ GFCO&nbsp;/ ICA&nbsp;/ Bellerophon&nbsp;&mdash; дополнительные лаборатории для сертификации цветных камней</div>
                            </div>
                        </div>
                        <p>
                            <img src="<?php echo $asset; ?>images/icons/info-circle.svg" alt="" width="24" height="24" loading="lazy">
                            Сертификат выдаётся только аккредитованным органом по&nbsp;сертификации и&nbsp;содержит подробную информацию о&nbsp;массе, размерах, цвете, чистоте и&nbsp;происхождении камня .</p>
                    </div>

                    <h3>Сертификаты:</h3>
                    <div class="documents documents--nowrap swiper">
                        <div class="swiper-wrapper">
                            <?php foreach ($certificate_groups['gemstones'] as $certificate) { ?>
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
                </div>

                <div class="inner-block">
                    <h2>Документы на&nbsp;драгоценные металлы</h2>
                    <div class="text">Мы&nbsp;приобретаем золото, платину и&nbsp;палладий у&nbsp;крупных промышленных заводов и&nbsp;в&nbsp;Сбербанке России. У&nbsp;каждой партии есть соответствующие документы и&nbsp;сертификаты, подтверждающие пробу и&nbsp;подлинность металла.</div>
                    <div class="documents documents--nowrap swiper">
                        <div class="swiper-wrapper">
                            <?php foreach ($certificate_groups['metals'] as $certificate) { ?>
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
                </div>

                <div class="inner-block">
                    <h2>Проба и&nbsp;клеймение&nbsp;&mdash; подтверждение легальности</h2>
                    <div class="inner-wrap">
                        <div class="inner-wrap__description">
                            <div class="h3">Все наши изделия проходят обязательную проверку в&nbsp;Федеральной Пробирной Палате (ФПП) . На&nbsp;каждое украшение наносится:</div>
                            <ul class="inner-list">
                                <li>Проба&nbsp;&mdash; содержание драгоценного металла (например, 585, 750, 950)</li>
                                <li>Именник&nbsp;&mdash; клеймо производителя (нашей студии)</li>
                                <li>УИН&nbsp;&mdash; уникальный идентификационный номер, по&nbsp;которому можно проверить легальность и&nbsp;параметры изделия на&nbsp;сайте ФПП</li>
                            </ul>
                            <p>Студия является юридическим лицом с&nbsp;аккредитацией в&nbsp;Московской государственной инспекции пробирного надзора.</p>
                            <a href="" class="btn btn--big">Проверить УИН</a>
                        </div>
                        <picture class="inner-wrap__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-5.webp" alt="" width="718" height="500" loading="lazy">
                        </picture>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Дипломы, награды и&nbsp;членство в&nbsp;профессиональных организациях</h2>
                    <div class="text">Квалификация наших мастеров и&nbsp;дизайнеров подтверждена профессиональными дипломами и&nbsp;наградами. Мы&nbsp;активно участвуем в&nbsp;развитии ювелирной отрасли.</div>
                    <div class="documents documents--nowrap swiper">
                        <div class="swiper-wrapper">
                            <?php foreach ($certificate_groups['awards'] as $certificate) { ?>
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
                </div>

                <div class="inner-block">
                    <h2>Регистрационные документы</h2>
                    <div class="text">Студия &laquo;Ювелиры Москвы&raquo;&nbsp;&mdash; официально зарегистрированное юридическое лицо. Все документы соответствуют законодательству Российской Федерации.</div>
                    <div class="documents documents--nowrap swiper">
                        <div class="swiper-wrapper">
                            <?php foreach ($certificate_groups['registration'] as $certificate) { ?>
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
                </div>

                <div class="inner-block">
                    <h2>Как проверить подлинность сертификата и&nbsp;изделия</h2>
                    <div class="text">Мы&nbsp;максимально прозрачны для наших клиентов. Вы&nbsp;можете самостоятельно проверить подлинность наших изделий и&nbsp;сертификатов.</div>
                    <div class="inner-extras-4 dark counter rows">
                        <div class="inner-extra">
                            <div class="inner-extra__description">
                                <div class="h3">Шаг 1</div>
                                <p>Проверьте УИН на&nbsp;сайте Федеральной Пробирной Палаты (ФПП)&nbsp;&mdash; введите уникальный номер с&nbsp;бирки или изделия.</p>
                            </div>
                        </div>
                        <div class="inner-extra">
                            <div class="inner-extra__description">
                                <div class="h3">Шаг 2</div>
                                <p>Проверьте сертификат GIA на&nbsp;официальном сайте GIA&nbsp;&mdash; введите номер сертификата (лазерная гравировка на&nbsp;бриллианте).</p>
                            </div>
                        </div>
                        <div class="inner-extra">
                            <div class="inner-extra__description">
                                <div class="h3">Шаг 3</div>
                                <p>Проверьте сертификат МГУ&nbsp;/ МГЦ в&nbsp;базе данных лаборатории.</p>
                            </div>
                        </div>
                        <div class="inner-extra">
                            <div class="inner-extra__description">
                                <div class="h3">Шаг 4</div>
                                <p>Сравните характеристики из&nbsp;сертификата с&nbsp;характеристиками камня в&nbsp;изделии (при необходимости закажите независимую экспертизу в&nbsp;Московской геммологической лаборатории).</p>
                            </div>
                        </div>
                    </div>
                    <div class="buttons">
                        <a href="" class="btn btn--big">Проверка УИН</a>
                        <a href="" class="btn btn--big">Проверка сертификата GIA</a>
                        <a href="" class="btn btn--big">Заказать экспертизу</a>
                    </div>
                </div>
            </section>

            <?php echo $information_faq_html; ?>
        </main>
<?php echo $footer; ?>
