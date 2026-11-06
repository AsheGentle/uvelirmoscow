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
                <div class="text">У&nbsp;вас есть старые украшения, золото, драгоценные камни или другой материал? Мы&nbsp;переплавим, переработаем или дополним его и&nbsp;создадим уникальное украшение вашей мечты. Полная прозрачность процесса&nbsp;&mdash; от&nbsp;приёмки материала до&nbsp;выдачи готового изделия.</div>

                <div class="material-works__wrap">
                    <h2>Что мы&nbsp;предлагаем</h2>
                    <div class="text">Изготовление из&nbsp;вашего материала&nbsp;&mdash; это возможность создать новое украшение, используя ваши собственные драгоценные металлы и&nbsp;камни. Вы&nbsp;можете принести:</div>
                    <div class="material-works swiper">
                        <div class="swiper-wrapper">
                            <div class="material-work swiper-slide">
                                <picture class="material-work__image">
                                    <img src="<?php echo $asset; ?>images/content/material-work-1.webp" alt="" width="200" height="200">
                                </picture>
                                <div class="material-work__title">Старые украшения, которые больше не&nbsp;носите</div>
                            </div>
                            <div class="material-work swiper-slide">
                                <picture class="material-work__image">
                                    <img src="<?php echo $asset; ?>images/content/material-work-2.webp" alt="" width="200" height="200">
                                </picture>
                                <div class="material-work__title">Золото, серебро или платину в&nbsp;любом виде (слитки, лом, проволока)</div>
                            </div>
                            <div class="material-work swiper-slide">
                                <picture class="material-work__image">
                                    <img src="<?php echo $asset; ?>images/content/material-work-3.webp" alt="" width="200" height="200">
                                </picture>
                                <div class="material-work__title">Драгоценные и&nbsp;полудрагоценные камни (бриллианты, сапфиры, рубины, изумруды, жемчуг и&nbsp;другие)</div>
                            </div>
                            <div class="material-work swiper-slide">
                                <picture class="material-work__image">
                                    <img src="<?php echo $asset; ?>images/content/material-work-4.webp" alt="" width="200" height="200">
                                </picture>
                                <div class="material-work__title">Семейные реликвии, которые хотите превратить в&nbsp;современное украшение</div>
                            </div>
                        </div>
                        <div class="swiper-buttons">
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-pagination"></div>
                            <div class="swiper-button-next"></div>
                        </div>
                    </div>
                    <div class="text">Мы&nbsp;принимаем материалы от&nbsp;физических и&nbsp;юридических лиц с&nbsp;полным оформлением документов.</div>
                </div>

                <div class="material-benefits__wrap">
                    <h2>Как мы&nbsp;работаем</h2>
                    <div class="material-benefits swiper">
                        <div class="swiper-wrapper">
                            <div class="material-benefit swiper-slide">
                                <div class="material-benefit__title">Оценка материала</div>
                                <div class="material-benefit__text">Вы&nbsp;приносите или отправляете ваш материал в&nbsp;студию. Мы&nbsp;проводим бесплатную диагностику: определяем пробу металла, качество и&nbsp;вес камней .</div>
                            </div>
                            <div class="material-benefit swiper-slide">
                                <div class="material-benefit__title">Обсуждение дизайна</div>
                                <div class="material-benefit__text">Вместе с&nbsp;вами мы&nbsp;разрабатываем эскиз или выбираем модель из&nbsp;нашего каталога. Учитываем ваши пожелания, количество материала и&nbsp;бюджет.</div>
                            </div>
                            <div class="material-benefit swiper-slide">
                                <div class="material-benefit__title">Заключение договора</div>
                                <div class="material-benefit__text">Подписываем договор подряда с&nbsp;полной прозрачностью: фиксируем вес материала, стоимость работы и&nbsp;сроки изготовления.</div>
                            </div>
                            <div class="material-benefit swiper-slide">
                                <div class="material-benefit__title">Изготовление украшения</div>
                                <div class="material-benefit__text">Наши ювелиры выполняют все работы&nbsp;&mdash; от&nbsp;литья до&nbsp;финишной полировки. Каждый этап мы&nbsp;согласовываем с&nbsp;вами.</div>
                            </div>
                            <div class="material-benefit swiper-slide">
                                <div class="material-benefit__title">Выдача готового изделия</div>
                                <div class="material-benefit__text">Вы&nbsp;получаете украшение с&nbsp;полным пакетом документов: сертификат, квитанция, проба и&nbsp;именник.</div>
                            </div>
                        </div>
                        <div class="swiper-buttons show-on-tab">
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-pagination"></div>
                            <div class="swiper-button-next"></div>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Условия приёмки вашего материала</h2>
                    <div class="inner-picture">
                        <picture class="inner-picture__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-6.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <p>На&nbsp;все украшения, сделанные в&nbsp;нашей студии, действует пожизненная гарантия. Кроме того, мы&nbsp;осуществляем бесплатное сервисное обслуживание (чистку и&nbsp;полировку украшений) 1&nbsp;раз в&nbsp;6&nbsp;месяцев.</p>
                            <ul class="inner-list image">
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-tag.svg" alt="" width="32" height="32">
                                    <span>Проба металла: принимаем золото 375, 585, 750, 958, серебро 925, платину 999.</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-scales.svg" alt="" width="32" height="32">
                                    <span>Вес: минимальный вес для изготовления&nbsp;&mdash; от&nbsp;1&nbsp;грамма (зависит от&nbsp;сложности изделия).</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-materials.svg" alt="" width="32" height="32">
                                    <span>Чистота: материал может быть в&nbsp;любом виде&nbsp;&mdash; слитки, проволока, лом, старые украшения.</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-diamond.svg" alt="" width="32" height="32">
                                    <span>Камни: принимаем любые камни&nbsp;&mdash; от&nbsp;бриллиантов до&nbsp;полудрагоценных вставок.</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-document.svg" alt="" width="32" height="32">
                                    <span>Документы: при сдаче материала мы&nbsp;оформляем акт приёмки-передачи с&nbsp;указанием веса, пробы и&nbsp;стоимости.</span>
                                </li>
                            </ul>
                            <p>Если у&nbsp;вас нет части материала или его недостаточно, вы&nbsp;можете докупить его у&nbsp;нас.</p>
                        </div>
                    </div>
                </div>
            </section>

            <section class="categories-section">
                <h2>Какие изделия мы&nbsp;создаём</h2>
                <div class="text center">Из&nbsp;вашего материала мы&nbsp;можем изготовить любые ювелирные украшения:</div>
                <div class="categories">
                    <div class="category">
                        <h3>Кольца</h3>
                        <picture class="category__image">
                            <source srcset="<?php echo $asset; ?>images/content/category-1-mobile.webp" media="(max-width: 599px)">
                            <img src="<?php echo $asset; ?>images/content/category-1.webp" alt="" width="587" height="587" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/kolca-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/kolca" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Серьги</h3>
                        <picture class="category__image">
                            <source srcset="<?php echo $asset; ?>images/content/category-2-mobile.webp" media="(max-width: 599px)">
                            <img src="<?php echo $asset; ?>images/content/category-2.webp" alt="" width="184" height="184" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/sergi-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/sergi" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Браслеты</h3>
                        <picture class="category__image">
                            <source srcset="<?php echo $asset; ?>images/content/category-3-mobile.webp" media="(max-width: 599px)">
                            <img src="<?php echo $asset; ?>images/content/category-3.webp" alt="" width="184" height="184" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/braslety-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/braslety" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Цепочки</h3>
                        <picture class="category__image">
                            <source srcset="<?php echo $asset; ?>images/content/category-4-mobile.webp" media="(max-width: 599px)">
                            <img src="<?php echo $asset; ?>images/content/category-4.webp" alt="" width="328" height="328" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/cepochki-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/cepochki" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Кулоны <br>и&nbsp;Подвески</h3>
                        <picture class="category__image">
                            <source srcset="<?php echo $asset; ?>images/content/category-5-mobile.webp" media="(max-width: 599px)">
                            <img src="<?php echo $asset; ?>images/content/category-5.webp" alt="" width="328" height="328" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/podveski-i-kulony-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/podveski-i-kulony" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Колье</h3>
                        <picture class="category__image">
                            <source srcset="<?php echo $asset; ?>images/content/category-6-mobile.webp" media="(max-width: 599px)">
                            <img src="<?php echo $asset; ?>images/content/category-6.webp" alt="" width="184" height="184" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/kolie-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/kole" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Запонки</h3>
                        <picture class="category__image">
                            <source srcset="<?php echo $asset; ?>images/content/category-7-mobile.webp" media="(max-width: 599px)">
                            <img src="<?php echo $asset; ?>images/content/category-7.webp" alt="" width="184" height="184" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/zaponki-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/zaponki" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Броши</h3>
                        <picture class="category__image">
                            <source srcset="<?php echo $asset; ?>images/content/category-8-mobile.webp" media="(max-width: 599px)">
                            <img src="<?php echo $asset; ?>images/content/category-8.webp" alt="" width="184" height="184" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/broshi-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/broshi" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Бодичейны</h3>
                        <picture class="category__image">
                            <source srcset="<?php echo $asset; ?>images/content/category-9-mobile.webp" media="(max-width: 599px)">
                            <img src="<?php echo $asset; ?>images/content/category-9.webp" alt="" width="184" height="184" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/bodichejny-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/bodichejny" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Диадемы <br>и&nbsp;тиары</h3>
                        <picture class="category__image">
                            <source srcset="<?php echo $asset; ?>images/content/category-10-mobile.webp" media="(max-width: 599px)">
                            <img src="<?php echo $asset; ?>images/content/category-10.webp" alt="" width="328" height="328" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/diademy-i-tiary-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/diademy-i-tiary" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Талисманы <br>и&nbsp;амулеты</h3>
                        <picture class="category__image">
                            <source srcset="<?php echo $asset; ?>images/content/category-11-mobile.webp" media="(max-width: 599px)">
                            <img src="<?php echo $asset; ?>images/content/category-11.webp" alt="" width="328" height="328" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/talismany-i-amulety-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/talismany-i-amulety" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Сувениры</h3>
                        <picture class="category__image">
                            <source srcset="<?php echo $asset; ?>images/content/category-12-mobile.webp" media="(max-width: 599px)">
                            <img src="<?php echo $asset; ?>images/content/category-12.webp" alt="" width="184" height="184" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/yuvelirnye-suveniry-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/yuvelirnye-suveniry" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                    <div class="category">
                        <h3>Брелоки</h3>
                        <picture class="category__image">
                            <source srcset="<?php echo $asset; ?>images/content/category-13-mobile.webp" media="(max-width: 599px)">
                            <img src="<?php echo $asset; ?>images/content/category-13.webp" alt="" width="184" height="184" loading="lazy">
                        </picture>
                        <div class="category__buttons">
                            <a href="/uslugi/izgotovlenie/breloki-na-zakaz" class="btn">Изготовление</a>
                            <a href="/katalog/breloki" class="btn btn--border">Каталог</a>
                        </div>
                    </div>
                </div>
            </section>

            <section class="material-pluses-section">
                <h2>Почему выгодно работать с&nbsp;нами</h2>
                <div class="material-pluses swiper">
                    <div class="swiper-wrapper">
                        <div class="material-pluse swiper-slide">
                            <picture class="material-pluse__image">
                                <img src="<?php echo $asset; ?>images/icons/icon-coins.svg" alt="" width="48" height="48" loading="lazy">
                            </picture>
                            <div class="h3">Экономия</div>
                            <p>Вы&nbsp;используете свой материал, а&nbsp;не&nbsp;покупаете новый. Это снижает стоимость готового изделия.</p>
                        </div>
                        <div class="material-pluse swiper-slide">
                            <picture class="material-pluse__image">
                                <img src="<?php echo $asset; ?>images/icons/icon-recycle.svg" alt="" width="48" height="48" loading="lazy">
                            </picture>
                            <div class="h3">Экологичность</div>
                            <p>Старые украшения получают новую жизнь, а&nbsp;не&nbsp;остаются в&nbsp;шкатулке.</p>
                        </div>
                        <div class="material-pluse swiper-slide">
                            <picture class="material-pluse__image">
                                <img src="<?php echo $asset; ?>images/icons/icon-ring.svg" alt="" width="48" height="48" loading="lazy">
                            </picture>
                            <div class="h3">Индивидуальный дизайн</div>
                            <p>Мы&nbsp;создаём украшение по&nbsp;вашему эскизу или выбору из&nbsp;каталога.</p>
                        </div>
                        <div class="material-pluse swiper-slide">
                            <picture class="material-pluse__image">
                                <img src="<?php echo $asset; ?>images/icons/icon-shield.svg" alt="" width="48" height="48" loading="lazy">
                            </picture>
                            <div class="h3">Полная прозрачность</div>
                            <p>Вы&nbsp;контролируете весь процесс: от&nbsp;приёмки материала до&nbsp;выдачи готового изделия.</p>
                        </div>
                    </div>
                    <div class="swiper-buttons show-on-tab">
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-pagination"></div>
                        <div class="swiper-button-next"></div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Документы и&nbsp;гарантии</h2>
                    <div class="inner-wrap">
                        <div class="inner-wrap__description">
                            <p>Мы&nbsp;официально работаем с&nbsp;драгоценными металлами и&nbsp;камнями, поэтому все процессы легальны и&nbsp;прозрачны.</p>
                            <div class="h3">Документы, которые вы&nbsp;получаете:</div>
                            <ul class="inner-list">
                                <li>Договор подряда&nbsp;&mdash; с&nbsp;указанием стоимости работы и&nbsp;сроков.</li>
                                <li>Акт приёмки-передачи материала&nbsp;&mdash; фиксация веса и&nbsp;пробы вашего металла.</li>
                                <li>Сертификат качества&nbsp;&mdash; на&nbsp;готовое изделие.</li>
                                <li>Проба и&nbsp;именник&nbsp;&mdash; клеймение в&nbsp;Федеральной Пробирной Палате.</li>
                                <li>Чеки и&nbsp;квитанции&nbsp;&mdash; все финансовые документы.</li>
                            </ul>
                            <div class="h3">Гарантия:</div>
                            <ul>
                                <li>На&nbsp;все изготовленные изделия действует пожизненная гарантия (в&nbsp;рамках нашей студии).</li>
                                <li>Бесплатное сервисное обслуживание&nbsp;&mdash; чистка и&nbsp;полировка 1&nbsp;раз в&nbsp;6&nbsp;месяцев.</li>
                            </ul>
                        </div>
                        <picture class="inner-wrap__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-7.webp" alt="" width="718" height="620" loading="lazy">
                        </picture>
                    </div>
                </div>
            </section>

            <section class="consultation-section">
                <div class="consultation-section__wrap">
                    <div class="consultation-section__description">
                        <h2>Заявка на&nbsp;изготовление из&nbsp;вашего материала</h2>
                        <div class="text">Расскажите, что у&nbsp;вас есть, и&nbsp;мы&nbsp;предложим идеи и&nbsp;стоимость</div>
                    </div>
                    <form class="consultation-section__form form">
                        <div class="form__row">
                            <label class="form__element error">
                                <input type="text" class="inputbox" placeholder="Ваше имя*" required>
                                <span class="error__text">Пожалуйста, укажите ваше имя</span>
                            </label>
                            <label class="form__element">
                                <input type="text" class="inputbox inputbox-phone" placeholder="+7 (___)___-__-__*" required>
                            </label>
                        </div>
                        <div class="form__row">
                            <label class="form__element">
                                <select class="inputbox">
                                    <option value="" selected disabled>Тип материала</option>
                                    <option value="1">Золото</option>
                                    <option value="2">Серебро</option>
                                    <option value="3">Платина</option>
                                    <option value="4">Драгоценные камни</option>
                                    <option value="5">Полудрагоценные камни</option>
                                </select>
                            </label>
                            <label class="form__element">
                                <input type="text" class="inputbox" placeholder="Вес материала (приблизительно)">
                            </label>
                        </div>
                        <div class="form__row">
                            <label class="form__element">
                                <textarea class="inputbox" placeholder="Желаемое изделие"></textarea>
                            </label>
                        </div>
                        <div class="form__row">
                            <button type="submit" class="btn btn--medium">Оставить заявку</button>
                        </div>
                        <div class="form__row form__checkbox">
                            <label class="checkbox error">
                                <input type="checkbox" required>
                                <span class="checkbox__label">Я&nbsp;даю согласие на&nbsp;<a href="/soglasie-na-obrabotku-dannyh">обработку персональных данных</a></span>

                                <span class="error__text">Пожалуйста, дайте согласие на обработку персональных данных</span>
                            </label>
                            <label class="checkbox">
                                <input type="checkbox" required>
                                <span class="checkbox__label">Я&nbsp;даю согласие на&nbsp;<a href="/soglasie-na-rassylku">получение рекламных рассылок</a></span>
                            </label>
                            <div class="checkbox">Оставляя текущую заявку, я&nbsp;соглашаюсь, что сайт носит информационный характер и&nbsp;не&nbsp;является публичной офертой.</div>
                            <div class="checkbox"><a href="/politika-obrabotku-personalnyh-dannyh">Политика обработки персональных данных</a></div>
                        </div>
                    </form>
                </div>
            </section>

            <?php echo $information_faq_html; ?>
        </main>
<?php echo $footer; ?>
