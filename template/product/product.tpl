<?php echo $header; ?>
<?php
$asset = 'catalog/view/theme/uvelirmoscow_new/assets_new/';
$product_name = html_entity_decode($heading_title, ENT_QUOTES, 'UTF-8');
$spec_attributes = array();
$insert_attributes = array();
$insert_ids = array(20, 21, 23, 37);

foreach ($attribute_groups as $attribute_group) {
    if ((int)$attribute_group['attribute_group_id'] !== 7) {
        continue;
    }

    foreach ($attribute_group['attribute'] as $attribute) {
        if (!empty($attribute['attribute_hide'])) {
            continue;
        }

        if (in_array((int)$attribute['attribute_id'], $insert_ids)) {
            $insert_attributes[] = $attribute;
        } else {
            $spec_attributes[] = $attribute;
        }
    }
}
?>



<main>
    <section class="product-section" itemscope itemtype="https://schema.org/Product">
        <ul class="breadcrumbs" itemscope itemtype="https://schema.org/BreadcrumbList">
            <?php $breadcrumb_count = count($breadcrumbs); ?>
            <?php foreach ($breadcrumbs as $index => $breadcrumb) { ?>
            <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                <?php if ($index + 1 < $breadcrumb_count) { ?>
                <a href="<?php echo htmlspecialchars($breadcrumb['href'], ENT_QUOTES, 'UTF-8'); ?>" class="breadcrumbs__link" itemprop="item">
                    <span itemprop="name"><?php echo html_entity_decode($breadcrumb['text'], ENT_QUOTES, 'UTF-8'); ?></span>
                </a>
                <?php } else { ?>
                <span class="breadcrumbs__link"><span itemprop="name"><?php echo html_entity_decode($breadcrumb['text'], ENT_QUOTES, 'UTF-8'); ?></span></span>
                <?php } ?>
                <meta itemprop="position" content="<?php echo $index + 1; ?>">
            </li>
            <?php } ?>
        </ul>

        <?php echo $content_top; ?>
        <div class="product">
            <h1 itemprop="name"><?php echo $product_name; ?></h1>

            <?php if ($thumb || $images) { ?>
            <div class="product__gallery">
                <div class="product__gallery-wrap">
                    <div class="product-thumbs-wrap">
                        <div class="product-thumbs swiper">
                            <div class="swiper-wrapper">
                                <?php if ($thumb) { ?>
                                <div class="product-thumbs__item swiper-slide"><img src="<?php echo $thumb; ?>" alt="<?php echo htmlspecialchars($product_name, ENT_QUOTES, 'UTF-8'); ?>" width="100" height="100"></div>
                                <?php } ?>
                                <?php foreach ($images as $image) { ?>
                                <div class="product-thumbs__item swiper-slide"><img src="<?php echo $image['thumb']; ?>" alt="<?php echo htmlspecialchars($product_name, ENT_QUOTES, 'UTF-8'); ?>" width="100" height="100" loading="lazy"></div>
                                <?php } ?>
                                <?php if ($video_review) { ?><div class="product-thumbs__item swiper-slide"><img src="https://i.ytimg.com/vi/<?php echo htmlspecialchars($video_review, ENT_QUOTES, 'UTF-8'); ?>/hqdefault.jpg" alt="Видео <?php echo htmlspecialchars($product_name, ENT_QUOTES, 'UTF-8'); ?>" width="100" height="100" loading="lazy"></div><?php } ?>
                            </div>
                        </div>
                        <?php if ($images) { ?><div class="swiper-button-next"></div><?php } ?>
                    </div>
                    <div class="product-main swiper">
                        <div class="swiper-wrapper">
                            <?php if ($thumb) { ?>
                            <div class="product-main__item swiper-slide">
                                <a href="<?php echo $popup; ?>" data-fancybox="product"><img src="<?php echo $thumb; ?>" alt="<?php echo htmlspecialchars($product_name, ENT_QUOTES, 'UTF-8'); ?>" width="600" height="600" itemprop="image"></a>
                            </div>
                            <?php } ?>
                            <?php foreach ($images as $image) { ?>
                            <div class="product-main__item swiper-slide">
                                <a href="<?php echo $image['popup']; ?>" data-fancybox="product"><img src="<?php echo $image['thumb']; ?>" alt="<?php echo htmlspecialchars($product_name, ENT_QUOTES, 'UTF-8'); ?>" width="600" height="600" loading="lazy"></a>
                            </div>
                            <?php } ?>
                            <?php if ($video_review) { ?><div class="product-main__item swiper-slide"><iframe src="https://www.youtube.com/embed/<?php echo htmlspecialchars($video_review, ENT_QUOTES, 'UTF-8'); ?>" title="Видео <?php echo htmlspecialchars($product_name, ENT_QUOTES, 'UTF-8'); ?>" width="600" height="600" loading="lazy" allowfullscreen></iframe></div><?php } ?>
                        </div>
                    </div>
                </div>
            </div>
            <?php } ?>

            <div class="product__content">
                <div class="product-block product-order" itemprop="offers" itemscope itemtype="https://schema.org/Offer">
                    <div class="product-order__top">
                        <button type="button" class="product-order__favorite" data-wishlist-product-id="<?php echo (int)$prod_id; ?>" onclick="wishlist.add('<?php echo (int)$prod_id; ?>');">
                            <span>В&nbsp;избранное</span>
                            <svg aria-hidden="true"><use href="<?php echo $asset; ?>images/icons/icons.svg#favorite"></use></svg>
                        </button>
                        <div class="product-order__manufacturer">
                            <div class="product-order__manufacturer-title">Производитель:</div>
                            <div class="product-order__manufacturer-value"><?php echo $manufacturer ? $manufacturer : 'UvelirMoscow'; ?></div>
                        </div>
                    </div>
                    <div class="product-order__meta"><span class="product-order__meta-title">Модель (Артикул):</span> <span class="product-order__meta-value"><?php echo $model; ?></span></div>
                    <?php if ($price) { ?>
                    <div class="product-order__price">
                        <span><?php echo $special ? $special : $price; ?></span>
                        <div class="tooltip"><div class="tooltip__icon"><svg class="tooltip__svg" role="img" aria-label="Подсказка"><use href="<?php echo $asset; ?>images/icons/icons.svg#tooltip"></use></svg><svg class="tooltip__svg-hover" role="img" aria-label="Подсказка"><use href="<?php echo $asset; ?>images/icons/icons.svg#tooltip-fill"></use></svg></div><div class="tooltip__text">Цена данного изделия с&nbsp;работой и&nbsp;материалами, описанными в&nbsp;карточке.</div></div>
                    </div>
                    <div class="product-order__prices">
                        <?php if ($price_works) { ?><div class="product-order__prices-item"><span>Работа: <?php echo $price_works; ?></span><div class="tooltip"><div class="tooltip__icon"><svg class="tooltip__svg" role="img" aria-label="Подсказка"><use href="<?php echo $asset; ?>images/icons/icons.svg#tooltip"></use></svg><svg class="tooltip__svg-hover" role="img" aria-label="Подсказка"><use href="<?php echo $asset; ?>images/icons/icons.svg#tooltip-fill"></use></svg></div><div class="tooltip__text">Стоимость работы из&nbsp;материалов заказчика.</div></div></div><?php } ?>
                        <?php if ($price_materials) { ?><div class="product-order__prices-item"><span>Материалы: <?php echo $price_materials; ?></span><div class="tooltip"><div class="tooltip__icon"><svg class="tooltip__svg" role="img" aria-label="Подсказка"><use href="<?php echo $asset; ?>images/icons/icons.svg#tooltip"></use></svg><svg class="tooltip__svg-hover" role="img" aria-label="Подсказка"><use href="<?php echo $asset; ?>images/icons/icons.svg#tooltip-fill"></use></svg></div><div class="tooltip__text">Стоимость драгоценных камней и&nbsp;металлов, использованных для изготовления.</div></div></div><?php } ?>
                        <div class="product-order__prices-item"><span>Цена зависит от&nbsp;курса</span><div class="tooltip"><div class="tooltip__icon"><svg class="tooltip__svg" role="img" aria-label="Подсказка"><use href="<?php echo $asset; ?>images/icons/icons.svg#price"></use></svg><svg class="tooltip__svg-hover" role="img" aria-label="Подсказка"><use href="<?php echo $asset; ?>images/icons/icons.svg#price-fill"></use></svg></div><div class="tooltip__text">Актуальная стоимость может отличаться из-за изменения стоимости металлов и&nbsp;курсов валют.</div></div></div>
                    </div>
                    <?php } ?>
                    <div class="product-order__term">Срок изготовления 18&nbsp;&mdash; 25&nbsp;дней</div>
                    <div class="product-order__note">
                        <p>Данная модель изделия изготавливается индивидуально с&nbsp;учетом пожеланий заказчика. На&nbsp;данной странице представлена стоимость и&nbsp;характеристики модели, изображенной на&nbsp;фото.</p>
                        <p>Цены на&nbsp;сайте указаны для предварительного ознакомления и&nbsp;не&nbsp;являются публичной офертой (ст.&nbsp;437&nbsp;ГК РФ). Окончательная стоимость рассчитывается индивидуально, с&nbsp;учётом текущих рыночных цен на&nbsp;металлы и&nbsp;курсов валют. Для получения точного расчёта обратитесь к&nbsp;нашему менеджеру</p>
                    </div>
                    <button type="button" class="btn btn--medium" data-modal="#modal-3" data-modal-title="Рассчитать стоимость">Рассчитать стоимость</button>
                    <meta itemprop="priceCurrency" content="RUB">
                    <link itemprop="availability" href="https://schema.org/<?php echo $stock == 'На складе' ? 'InStock' : 'PreOrder'; ?>">
                </div>

                <?php if ($options) { ?>
                <div class="product-block product-options">
                    <div class="product-block__title"><span><?php echo $text_option; ?></span><svg class="product-block__arrow" aria-hidden="true"><use href="<?php echo $asset; ?>images/icons/icons.svg#chevron"></use></svg></div>
                    <div class="product-block__content">
                        <?php foreach ($options as $option) { ?>
                        <div class="form__element<?php echo $option['required'] ? ' required' : ''; ?>">
                            <label for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
                            <?php if ($option['type'] == 'select') { ?>
                            <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="inputbox">
                                <option value=""><?php echo $text_select; ?></option>
                                <?php foreach ($option['product_option_value'] as $option_value) { ?><option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?><?php echo $option_value['price'] ? ' (' . $option_value['price_prefix'] . $option_value['price'] . ')' : ''; ?></option><?php } ?>
                            </select>
                            <?php } elseif ($option['type'] == 'radio' || $option['type'] == 'image') { ?>
                            <div id="input-option<?php echo $option['product_option_id']; ?>">
                                <?php foreach ($option['product_option_value'] as $option_value) { ?><label><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>"> <?php if ($option['type'] == 'image') { ?><img src="<?php echo $option_value['image']; ?>" alt="" width="50" height="50"> <?php } ?><?php echo $option_value['name']; ?><?php echo $option_value['price'] ? ' (' . $option_value['price_prefix'] . $option_value['price'] . ')' : ''; ?></label><?php } ?>
                            </div>
                            <?php } elseif ($option['type'] == 'checkbox') { ?>
                            <div id="input-option<?php echo $option['product_option_id']; ?>">
                                <?php foreach ($option['product_option_value'] as $option_value) { ?><label><input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>"> <?php echo $option_value['name']; ?><?php echo $option_value['price'] ? ' (' . $option_value['price_prefix'] . $option_value['price'] . ')' : ''; ?></label><?php } ?>
                            </div>
                            <?php } elseif ($option['type'] == 'textarea') { ?>
                            <textarea name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="inputbox" rows="4"><?php echo $option['value']; ?></textarea>
                            <?php } elseif ($option['type'] == 'file') { ?>
                            <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn--border"><?php echo $button_upload; ?></button>
                            <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>">
                            <?php } else { ?>
                            <input type="<?php echo $option['type'] == 'date' ? 'date' : ($option['type'] == 'time' ? 'time' : ($option['type'] == 'datetime' ? 'datetime-local' : 'text')); ?>" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="inputbox">
                            <?php } ?>
                        </div>
                        <?php } ?>
                    </div>
                </div>
                <?php } ?>

                <input type="hidden" name="product_id" value="<?php echo (int)$product_id; ?>">
                <input type="hidden" name="quantity" value="<?php echo (int)$minimum; ?>">

                <div class="product-block product-info">
                    <div class="product-block__title"><span>Информация об&nbsp;изделии</span><svg class="product-block__arrow" aria-hidden="true"><use href="<?php echo $asset; ?>images/icons/icons.svg#chevron"></use></svg></div>
                    <div class="product-block__content js-tabs">
                        <?php if ($spec_attributes || $insert_attributes) { ?>
                        <div class="product-info__tabs">
                            <?php if ($spec_attributes) { ?><button type="button" class="product-info__tab js-tabs__btn active" data-tab="specs">Характеристики</button><?php } ?>
                            <?php if ($insert_attributes) { ?><button type="button" class="product-info__tab js-tabs__btn<?php echo !$spec_attributes ? ' active' : ''; ?>" data-tab="inserts">Вставки</button><?php } ?>
                        </div>
                        <?php if ($spec_attributes) { ?><div class="product-info__content js-tabs__pane active" data-tab="specs"><div class="product-specs"><?php foreach ($spec_attributes as $attribute) { ?><div class="product-specs__item"><div class="product-specs__name"><?php echo $attribute['name']; ?></div><div class="product-specs__value"><?php echo $attribute['text']; ?></div></div><?php } ?></div></div><?php } ?>
                        <?php if ($insert_attributes) { ?><div class="product-info__content js-tabs__pane<?php echo !$spec_attributes ? ' active' : ''; ?>" data-tab="inserts"><div class="product-specs"><?php foreach ($insert_attributes as $attribute) { ?><div class="product-specs__item"><div class="product-specs__name"><?php echo $attribute['name']; ?></div><div class="product-specs__value"><?php echo $attribute['text']; ?></div></div><?php } ?></div></div><?php } ?>
                        <?php } ?>
                        <?php if ($description) { ?><div class="product-info__description" itemprop="description"><div class="product-block__subtitle">Описание</div><div class="product-block__text"><?php echo $description; ?></div></div><?php } ?>
                        <button type="button" class="btn btn--medium" data-modal="#modal-1" data-modal-title="Заказать изделие">Заказать изделие</button>
                    </div>
                </div>

                <div class="product-block product-advantages">
                    <div class="product-block__title"><span>Преимущества</span><svg class="product-block__arrow" aria-hidden="true"><use href="<?php echo $asset; ?>images/icons/icons.svg#chevron"></use></svg></div>
                    <div class="product-block__content"><div class="product-advantages__list">
                        <div class="product-advantages__item"><img src="<?php echo $asset; ?>images/icons/icon-ring.svg" alt="" width="60" height="60"><span>Изменение дизайна под Ваш вкус</span></div>
                        <div class="product-advantages__item"><img src="<?php echo $asset; ?>images/icons/icon-expertise.svg" alt="" width="60" height="60"><span>Качество исполнения High-jewelry</span></div>
                        <div class="product-advantages__item"><img src="<?php echo $asset; ?>images/icons/icon-materials.svg" alt="" width="60" height="60"><span>Изготовление из&nbsp;Ваших материалов</span></div>
                    </div></div>
                </div>

                <?php if (!empty($alternatives)) { ?>
                <div class="product-block product-another">
                    <div class="product-block__title"><span>Другое исполнение</span><svg class="product-block__arrow" aria-hidden="true"><use href="<?php echo $asset; ?>images/icons/icons.svg#chevron"></use></svg></div>
                    <div class="product-block__content"><div class="product-another__list">
                        <?php foreach ($alternatives as $alternative) { ?><a href="<?php echo $alternative['href']; ?>" class="product-another__item"><?php if ($alternative['thumb']) { ?><picture class="product-another__image"><img src="<?php echo $alternative['thumb']; ?>" alt="<?php echo htmlspecialchars(html_entity_decode($alternative['name'], ENT_QUOTES, 'UTF-8'), ENT_QUOTES, 'UTF-8'); ?>" width="80" height="80" loading="lazy"></picture><?php } ?><div class="product-another__description"><div class="product-another__title"><?php echo html_entity_decode($alternative['name'], ENT_QUOTES, 'UTF-8'); ?></div><div class="product-another__price"><?php if ($alternative['special'] || $alternative['price']) { echo ($alternative['special'] ? $alternative['special'] : $alternative['price']) . ' (₽)'; } ?></div></div></a><?php } ?>
                    </div></div>
                </div>
                <?php } ?>

                <div class="product-block product-stones">
                    <div class="product-block__title"><span>Камни</span><svg class="product-block__arrow" aria-hidden="true"><use href="<?php echo $asset; ?>images/icons/icons.svg#chevron"></use></svg></div>
                    <div class="product-block__content">
                        <div class="product-block__text">В&nbsp;таблице представлены камни, пользующиеся спросом. Не&nbsp;нашли нужный? Отправьте запрос&nbsp;&mdash; подберем.</div>
                        <div class="product-stones__palette collapsed">
                            <?php
                            $stone_groups = array(
                                'Алмаз / Бриллиант' => array('Алмаз', 'Бриллиант', 'Бриллиант розовый', 'Бриллиант голубой', 'Бриллиант зеленый', 'Бриллиант желтый', 'Бриллиант черный'),
                                'Драгоценные камни' => array('Рубин', 'Изумруд', 'Сапфир', 'Александрит'),
                                'Полудрагоценные камни' => array('Аквамарин', 'Аметист', 'Бирюза', 'Горный хрусталь', 'Гранат', 'Лазурит', 'Лунный камень', 'Малахит', 'Нефрит', 'Оникс', 'Опал', 'Раухтопаз', 'Сердолик', 'Танзанит', 'Турмалин', 'Хризолит', 'Хризопраз', 'Циркон', 'Цитрин', 'Шпинель', 'Агат', 'Авантюрин', 'Гематит', 'Карельский камень (Кахолонг)', 'Кошачий глаз', 'Муассанит'),
                                'Органические камни' => array('Жемчуг', 'Коралл', 'Янтарь', 'Перламутр')
                            );
                            $stone_image = 1;
                            ?>
                            <?php foreach ($stone_groups as $stone_group => $stones) { ?>
                            <div class="product-stones__group">
                                <div class="product-block__subtitle"><span><?php echo $stone_group; ?></span></div>
                                <div class="product-stones__items">
                                    <?php foreach ($stones as $stone) { ?><div class="product-stones__item"><img src="<?php echo $asset; ?>images/content/stones-<?php echo $stone_image++; ?>.webp" alt="" width="60" height="60" loading="lazy"><span><?php echo $stone; ?></span></div><?php } ?>
                                </div>
                            </div>
                            <?php } ?>
                        </div>
                        <div class="product-stones__toggle-wrap"><button type="button" class="product-stones__toggle">Развернуть палитру</button></div>
                    </div>
                </div>

                <div class="product-banner"><span>&laquo;У&nbsp;вас есть свой камень?&raquo;</span><button type="button" class="btn" data-modal="#modal-3" data-modal-title="Обсудить детали">Обсудить детали</button></div>

                <div class="product-block product-metal">
                    <div class="product-block__title"><span>Металл</span><svg class="product-block__arrow" aria-hidden="true"><use href="<?php echo $asset; ?>images/icons/icons.svg#chevron"></use></svg></div>
                    <div class="product-block__content"><div class="product-block__text">Выберите металл для изготовления из&nbsp;доступных</div><div class="product-metals">
                        <?php $metals = array('Желтое золото 585 и 750', 'Белое золото 585 и 750', 'Красное золото 585 и 750', 'Платина 950 пробы', 'Серебро 925 пробы'); ?>
                        <?php foreach ($metals as $metal_index => $metal) { ?><div class="product-metals__item"><img src="<?php echo $asset; ?>images/content/material-<?php echo $metal_index + 1; ?>.webp" alt="" width="60" height="60"><span><?php echo $metal; ?></span></div><?php } ?>
                    </div></div>
                </div>

                <div class="product-banner"><span>Изготовим изделие из&nbsp;вашего металла</span><button type="button" class="btn" data-modal="#modal-3" data-modal-title="Обсудить детали">Обсудить детали</button></div>

                <div class="product-block product-delivery">
                    <div class="product-block__title"><span>Доставка</span><svg class="product-block__arrow" aria-hidden="true"><use href="<?php echo $asset; ?>images/icons/icons.svg#chevron"></use></svg></div>
                    <div class="product-block__content"><div class="product-block__ol"><div class="product-block__ol-item"><span>Самовывоз из&nbsp;нашего офиса в&nbsp;Москве</span></div><div class="product-block__ol-item"><span>Курьерской службой по&nbsp;всей России</span></div><div class="product-block__ol-item"><span>Курьерской службой по&nbsp;Москве и&nbsp;Санкт-Петербургу</span></div><div class="product-block__ol-item"><span>По&nbsp;всему миру</span></div></div><a href="/pokupatelyam/dostavka-i-oplata" class="product-block__link">Подробнее</a></div>
                </div>

                <div class="product-block">
                    <div class="product-block__title"><span>Оплата</span><svg class="product-block__arrow" aria-hidden="true"><use href="<?php echo $asset; ?>images/icons/icons.svg#chevron"></use></svg></div>
                    <div class="product-block__content"><div class="product-block__text"><p>Наличный и&nbsp;безналичный расчет, онлайн-платеж. Предоплата за&nbsp;заказ составляет 30-50% от&nbsp;общей стоимости, остальная сумма оплачивается при получении.</p></div><a href="/pokupatelyam/dostavka-i-oplata" class="product-block__link">Подробнее</a></div>
                </div>

                <div class="product-block">
                    <div class="product-block__title"><span>Гарантии и&nbsp;Сервис</span><svg class="product-block__arrow" aria-hidden="true"><use href="<?php echo $asset; ?>images/icons/icons.svg#chevron"></use></svg></div>
                    <div class="product-block__content"><div class="product-block__text">На&nbsp;украшения нашей студии действует пожизненная гарантия и&nbsp;бесплатное сервисное обслуживание.</div><div class="product-guarantees"><div class="product-guarantees__item"><img src="<?php echo $asset; ?>images/icons/icon-guarantees-1.svg" alt="" width="60" height="60"><div class="product-guarantees__title">Апробирование ювелирных изделий</div><div class="product-guarantees__text">Каждое изделие имеет клеймо пробы и&nbsp;проверяется государственной пробирной инспекцией.</div></div><div class="product-guarantees__item"><img src="<?php echo $asset; ?>images/icons/icon-guarantees-2.svg" alt="" width="60" height="60"><div class="product-guarantees__title">Сертифицированные драгоценные камни</div><div class="product-guarantees__text">Подлинность камней подтверждается сертификатами.</div></div></div></div>
                </div>
            </div>
        </div>

            <div class="catalog-showcases">
                <div class="catalog-showcase"><div class="catalog-showcase__description"><div class="catalog-showcase__title">Нужен уникальный дизайн?</div><div class="catalog-showcase__text">Сделаем на&nbsp;заказ</div><a href="<?php echo htmlspecialchars($manufacturing_category_href, ENT_QUOTES, 'UTF-8'); ?>" class="btn btn--more btn--fill"><svg role="img" aria-label="Подробнее"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-long"></use></svg></a></div><picture class="catalog-showcase__image"><img src="<?php echo $asset; ?>images/content/catalog-showcase-1.webp" alt="" width="125" height="125" loading="lazy"></picture></div>
                <div class="catalog-showcase"><div class="catalog-showcase__description"><div class="catalog-showcase__title">Примеры работ</div><div class="catalog-showcase__text">Смотрите реальные фото изготовленных украшений</div><a href="<?php echo htmlspecialchars($our_project_href, ENT_QUOTES, 'UTF-8'); ?>" class="btn btn--more btn--fill"><svg role="img" aria-label="Подробнее"><use href="<?php echo $asset; ?>images/icons/icons.svg#arrow-long"></use></svg></a></div><picture class="catalog-showcase__image"><img src="<?php echo $asset; ?>images/content/catalog-showcase-2.webp" alt="" width="125" height="125" loading="lazy"></picture></div>
            </div>

            <?php if ($product_params) { ?>
            <div class="product-block">
                <div class="product-block__title">Изготовим с&nbsp;любыми характеристиками</div>
                <div class="product-block__content"><div class="product-params">
                    <?php foreach ($product_params as $product_param) { ?>
                    <div class="product-params__item"><div class="product-params__name"><?php echo $product_param['name']; ?></div><div class="product-params__dots"></div><div class="product-params__value"><?php echo $product_param['text']; ?></div></div>
                    <?php } ?>
                </div></div>
            </div>
            <?php } ?>
        <?php echo $content_bottom; ?>
    </section>

    <section class="process-section">
        <h2>Как мы&nbsp;изготавливаем ювелирные изделия</h2>
        <div class="text">От&nbsp;эскиза до&nbsp;финишной полировки&nbsp;&mdash; полный цикл производства в&nbsp;нашей студии.</div>
        <div class="process swiper"><div class="swiper-wrapper">
            <?php
            $process = array(
                array('Разработка эскиза и 3D-модели', 'Художник создает эскиз вашей идеи, а затем 3D-дизайнер превращает его в объемную модель.'),
                array('Выращивание восковки (3D-печать)', 'Восковая модель будущего украшения выращивается на высокоточном 3D-принтере.'),
                array('Литье металла', 'В форму заливается расплавленное золото, платина или серебро.'),
                array('Ручная работа и шлифовка', 'Ювелир вручную обрабатывает отливку, подгоняет детали и полирует поверхность.'),
                array('Пробирование и клеймение', 'Каждое изделие проходит контроль в Пробирной палате.'),
                array('Закрепка камней под микроскопом', 'Мастер закрепляет каждый камень в оправе под микроскопом.'),
                array('Финишная обработка и полировка', 'Финальная доводка изделия: придание блеска, матирование или нанесение покрытия.')
            );
            ?>
            <?php foreach ($process as $process_index => $process_item) { ?><div class="process-item swiper-slide"><div class="process-item__inner"><picture class="process-item__image"><img src="<?php echo $asset; ?>images/content/process-<?php echo $process_index + 1; ?>.webp" alt="" width="1010" height="595" loading="lazy"></picture><div class="process-item__desription"><h3><?php echo $process_item[0]; ?></h3><p><?php echo $process_item[1]; ?></p></div></div></div><?php } ?>
        </div><div class="swiper-buttons beige"><div class="swiper-button-prev"></div><div class="swiper-pagination"></div><div class="swiper-button-next"></div></div></div>
    </section>

    <?php if ($products) { ?>
    <section class="catalog-slider-section">
        <h2>Вас может заинтересовать</h2>
        <div class="catalog-slider swiper"><div class="swiper-wrapper">
            <?php foreach ($products as $related) { ?>
            <div class="item swiper-slide">
                <div class="item__buttons"><button type="button" class="btn btn--prices" data-modal="#modal-3" data-modal-title="Рассчитать стоимость">Рассчитать стоимость</button><button type="button" class="item__favorite" data-wishlist-product-id="<?php echo (int)$related['product_id']; ?>" onclick="wishlist.add('<?php echo (int)$related['product_id']; ?>');"><span>В избранное</span><svg aria-hidden="true"><use href="<?php echo $asset; ?>images/icons/icons.svg#favorite"></use></svg></button><a href="<?php echo $related['href']; ?>" class="btn btn--border btn--dark btn--item-more">Подробнее</a></div>
                <picture class="item__image"><a href="<?php echo $related['href']; ?>"><img src="<?php echo $related['thumb']; ?>" alt="<?php echo htmlspecialchars(html_entity_decode($related['name'], ENT_QUOTES, 'UTF-8'), ENT_QUOTES, 'UTF-8'); ?>" width="235" height="235" loading="lazy"></a></picture>
                <div class="item__description">
                    <a href="<?php echo $related['href']; ?>" class="item__title"><?php echo html_entity_decode($related['name'], ENT_QUOTES, 'UTF-8'); ?></a>
                    <?php if ($related['price']) { ?>
                    <div class="item__price">
                        <span><?php echo $related['special'] ? $related['special'] : $related['price']; ?></span>
                        <div class="tooltip">
                            <div class="tooltip__icon"><svg class="tooltip__svg" role="img" aria-label="Подсказка"><use href="<?php echo $asset; ?>images/icons/icons.svg#tooltip"></use></svg><svg class="tooltip__svg-hover" role="img" aria-label="Подсказка"><use href="<?php echo $asset; ?>images/icons/icons.svg#tooltip-fill"></use></svg></div>
                            <div class="tooltip__text">Стоимость работы из&nbsp;материалов заказчика.</div>
                        </div>
                    </div>
                    <?php } ?>
                    <?php if ($related['price_works']) { ?><div class="item__price-sub"><?php echo $related['price_works']; ?> с&nbsp;материалами заказчика</div><?php } ?>
                    <div class="item__prices">
                        <?php if ($related['price_works']) { ?>
                        <div class="item__prices-item">
                            <span>Работа: <?php echo $related['price_works']; ?></span>
                            <div class="tooltip"><div class="tooltip__icon"><svg class="tooltip__svg" role="img" aria-label="Подсказка"><use href="<?php echo $asset; ?>images/icons/icons.svg#tooltip"></use></svg><svg class="tooltip__svg-hover" role="img" aria-label="Подсказка"><use href="<?php echo $asset; ?>images/icons/icons.svg#tooltip-fill"></use></svg></div><div class="tooltip__text">Стоимость работы из&nbsp;материалов заказчика.</div></div>
                        </div>
                        <?php } ?>
                        <?php if ($related['price_materials']) { ?>
                        <div class="item__prices-item">
                            <span>Материалы: <?php echo $related['price_materials']; ?></span>
                            <div class="tooltip"><div class="tooltip__icon"><svg class="tooltip__svg" role="img" aria-label="Подсказка"><use href="<?php echo $asset; ?>images/icons/icons.svg#tooltip"></use></svg><svg class="tooltip__svg-hover" role="img" aria-label="Подсказка"><use href="<?php echo $asset; ?>images/icons/icons.svg#tooltip-fill"></use></svg></div><div class="tooltip__text">Стоимость драгоценных камней и&nbsp;металлов использованных для изготовления данного украшения. Если Вы&nbsp;выберете другие камни, либо украшение будет другого размера, эта цифра&nbsp;&mdash; изменится.</div></div>
                        </div>
                        <?php } ?>
                        <div class="item__prices-item">
                            <span>Цена зависит от&nbsp;курса</span>
                            <div class="tooltip"><div class="tooltip__icon"><svg class="tooltip__svg" role="img" aria-label="Подсказка"><use href="<?php echo $asset; ?>images/icons/icons.svg#price"></use></svg><svg class="tooltip__svg-hover" role="img" aria-label="Подсказка"><use href="<?php echo $asset; ?>images/icons/icons.svg#price-fill"></use></svg></div><div class="tooltip__text">Цена на&nbsp;сайте носит информационный характер. Из-за нестабильности курса валют и&nbsp;стоимости металлов актуальная стоимость может отличаться. Пожалуйста, уточняйте цену у&nbsp;менеджера&nbsp;&mdash; мы&nbsp;оперативно подготовим расчёт под текущий курс.</div></div>
                        </div>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div><div class="swiper-buttons"><div class="swiper-button-prev"></div><div class="swiper-pagination"></div><div class="swiper-button-next"></div></div></div>
    </section>
    <?php } ?>
</main>
<?php echo $footer; ?>
