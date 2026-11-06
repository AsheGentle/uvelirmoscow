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
                <div class="text">Получите эксклюзивное украшение, не&nbsp;выходя из&nbsp;дома. Мы&nbsp;работаем с&nbsp;клиентами из&nbsp;любой точки мира&nbsp;&mdash; от&nbsp;идеи до&nbsp;доставки готового изделия.</div>

                <div class="inner-block">
                    <h2>Получите заказ в&nbsp;любой точке мира!</h2>
                    <div class="inner-picture inner-picture--left">
                        <picture class="inner-picture__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-9.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <p>Дистанционный заказ&nbsp;&mdash; это так&nbsp;же надёжно, как личный визит. Показываем изделие на&nbsp;фото и&nbsp;видео, согласовываем каждую деталь онлайн, страхуем доставку и&nbsp;отслеживаем её&nbsp;вместе с&nbsp;вами. Мы&nbsp;уже отправили сотни заказов в&nbsp;разные города России, СНГ и&nbsp;за&nbsp;рубеж.</p>
                            <blockquote>
                                <p>Клиенты из&nbsp;любой точки мира получают украшение, которое ждали</p>
                            </blockquote>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>4&nbsp;причины заказать онлайн</h2>
                    <div class="inner-extras-4 swiper">
                        <div class="swiper-wrapper">
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-health-care.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Заботимся об&nbsp;удобстве клиента</h3>
                                    <p>Как первое обращение, так и&nbsp;дальнейшая коммуникация по&nbsp;вашему заказу происходит удобным для вас образом: по&nbsp;телефону, email или в&nbsp;любом мессенджере.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-document.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Предоставляем электронный договор</h3>
                                    <p>Многие клиенты готовы начать сотрудничество с&nbsp;нашей компанией, получив электронную версию договора и&nbsp;квитанции (оригиналы высылаем вместе с&nbsp;изделием).</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-necklaces.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Используем визуальные приёмы</h3>
                                    <p>Иногда, чтобы утвердить определённый габарит изделия, мы&nbsp;используем визуальные приёмы. Кольца&nbsp;&mdash; самое простое. В&nbsp;любом ювелирном магазине можно снять мерку с&nbsp;пальца. Для сережек сложных моделей мы&nbsp;иногда просим прислать фото мочки уха.</p>
                                </div>
                            </div>
                            <div class="inner-extra swiper-slide">
                                <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-medal.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="inner-extra__description">
                                    <h3>Заботимся о&nbsp;качестве изделий</h3>
                                    <p>Мы&nbsp;стараемся делать изделия наивысшего качества, поэтому добавляем 5&ndash;7 дней к&nbsp;стандартному сроку. Это позволяет вам дистанционно корректировать заказ, не&nbsp;смотря на&nbsp;разницу во&nbsp;времени, и&nbsp;включает время доставки (обычно 2&ndash;4&nbsp;дня).</p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-buttons show-on-tab">
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-pagination"></div>
                            <div class="swiper-button-next"></div>
                        </div>
                    </div>
                    <div class="buttons">
                        <button type="button" class="btn btn--big" data-modal="#modal-1" data-modal-title="Получить консультацию">Получить консультацию</button>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Как происходит дистанционный заказ</h2>
                    <div class="inner-picture">
                        <picture class="inner-picture__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-16.webp" alt="" width="1010" height="640" loading="lazy">
                        </picture>
                        <div class="inner-picture__info">
                            <h3>Что нужно для дистанционного заказа в&nbsp;дизайн-студии &laquo;Ювелиры Москвы&raquo;</h3>
                            <ol>
                                <li>Обратиться к&nbsp;нам любым удобным способом: по&nbsp;телефону, через форму на&nbsp;сайте, онлайн-чат или мессенджер</li>
                                <li>Утвердить дизайн, определиться с&nbsp;используемыми металлами и&nbsp;вставками</li>
                                <li>Заключить договор (оригиналы будут направлены почтой или курьерской службой к&nbsp;вам)</li>
                                <li>Внести предоплату 30&ndash;50% (в&nbsp;зависимости от&nbsp;материалов) за&nbsp;изделие</li>
                            </ol>
                        </div>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Доставка онлайн-заказов</h2>
                    <div class="inner-wrap">
                        <div class="inner-wrap__description">
                            <p>Мы&nbsp;доставляем украшения по&nbsp;всей России и&nbsp;в&nbsp;любую точку мира надёжными транспортными службами.</p>
                            <ul class="inner-list image">
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-calendar.svg" alt="" width="32" height="32">
                                    <span>Сроки доставки: Обычно 2&ndash;4 дня (в&nbsp;зависимости от&nbsp;региона)</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-shield.svg" alt="" width="32" height="32">
                                    <span>Страхование: Все отправления страхуются на&nbsp;полную стоимость изделия</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-box.svg" alt="" width="32" height="32">
                                    <span>Упаковка: Каждое украшение упаковывается в&nbsp;подарочную коробку и&nbsp;надёжный внешний конверт/коробку для пересылки</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-location.svg" alt="" width="32" height="32">
                                    <span>Трекинг: Вы&nbsp;получаете трек-номер для отслеживания вашего заказа на&nbsp;всех этапах пути</span>
                                </li>
                                <li>
                                    <img src="<?php echo $asset; ?>images/icons/icon-camera.svg" alt="" width="32" height="32">
                                    <span>Фото/видео перед отправкой: Перед отправкой мы&nbsp;делаем фото и&nbsp;видео готового изделия и&nbsp;отправляем вам на&nbsp;утверждение</span>
                                </li>
                            </ul>
                            <p>Примерка на&nbsp;месте: При получении вы&nbsp;можете примерить изделие. Если оно не&nbsp;подходит по&nbsp;размеру&nbsp;&mdash; мы&nbsp;внесём корректировки (условия обсуждаются индивидуально).</p>
                            <a href="" class="btn btn--big">Подробнее о&nbsp;доставке</a>
                        </div>
                        <picture class="inner-wrap__image">
                            <img src="<?php echo $asset; ?>images/content/static/detail-17.webp" alt="" width="718" height="620" loading="lazy">
                        </picture>
                    </div>
                </div>

                <div class="inner-block">
                    <h2>Свяжитесь с&nbsp;нами онлайн</h2>
                    <div class="text">Мы&nbsp;всегда на&nbsp;связи и&nbsp;готовы ответить на&nbsp;любые вопросы. Выберите удобный способ связи:</div>
                    <div class="inner-extras-4 dark rows">
                        <div class="inner-extra">
                            <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-phone.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-extra__description">
                                <div class="inner-extra__sup">Телефон:</div>
                                <?php if ($header_contacts_phone) { ?><div class="h3"><a href="<?php echo htmlspecialchars($header_contacts_phone_href, ENT_QUOTES, 'UTF-8'); ?>"><?php echo htmlspecialchars($header_contacts_phone, ENT_QUOTES, 'UTF-8'); ?></a></div><?php } ?>
                            </div>
                        </div>
                        <div class="inner-extra">
                            <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-device-message.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-extra__description">
                                <div class="inner-extra__sup">Онлайн-чат на&nbsp;сайте</div>
                                <div class="h3"><a href="#" onclick="if (window.jivo_api && typeof window.jivo_api.open === 'function') { window.jivo_api.open(); } return false;">JivoSite</a></div>
                            </div>
                        </div>
                        <div class="inner-extra">
                            <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-messages.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-extra__description">
                                <div class="inner-extra__sup">Мессенджеры:</div>
                                <div class="socials">
                                    <?php foreach ($header_contacts_socials as $social) { ?>
                                    <a href="<?php echo htmlspecialchars($social['link'], ENT_QUOTES, 'UTF-8'); ?>" target="_blank" rel="noopener noreferrer" class="socials__item">
                                        <img src="<?php echo htmlspecialchars($social['icon'], ENT_QUOTES, 'UTF-8'); ?>" alt="" width="30" height="30" loading="lazy">
                                    </a>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                        <div class="inner-extra">
                            <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-email.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-extra__description">
                                <div class="inner-extra__sup">Email:</div>
                                <?php if ($header_contacts_email) { ?><div class="h3"><a href="mailto:<?php echo htmlspecialchars($header_contacts_email, ENT_QUOTES, 'UTF-8'); ?>"><?php echo htmlspecialchars($header_contacts_email, ENT_QUOTES, 'UTF-8'); ?></a></div><?php } ?>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="consultation-section">
                <div class="consultation-section__wrap">
                    <div class="consultation-section__description">
                        <h2>Заявка на&nbsp;консультацию</h2>
                        <div class="text">Мы&nbsp;свяжемся с&nbsp;вами и&nbsp;ответим на&nbsp;все интересующие вопросы</div>
                    </div>
                    <form class="consultation-section__form form">
                        <div class="form__row">
                            <label class="form__element">
                                <input type="text" class="inputbox" placeholder="Ваше имя*" required>
                            </label>
                        </div>
                        <div class="form__row">
                            <label class="form__element">
                                <input type="text" class="inputbox inputbox-phone" placeholder="+7 (___)___-__-__*" required>
                            </label>
                        </div>
                        <div class="form__row">
                            <button type="submit" class="btn btn--medium">Оставить заявку</button>
                        </div>
                        <div class="form__row form__checkbox">
                            <label class="checkbox">
                                <input type="checkbox">
                                <span class="checkbox__label">Я&nbsp;даю согласие на&nbsp;<a href="/soglasie-na-obrabotku-dannyh">обработку персональных данных</a></span>
                            </label>
                            <label class="checkbox">
                                <input type="checkbox">
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
