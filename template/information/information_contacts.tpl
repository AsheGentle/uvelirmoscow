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
                <div class="text">Свяжитесь с&nbsp;нами любым удобным способом&nbsp;&mdash; мы&nbsp;всегда на&nbsp;связи и&nbsp;готовы ответить на&nbsp;все ваши вопросы.</div>

                <div class="inner-block">
                    <h2>Наши контакты</h2>
                    <div class="text">Если у&nbsp;вас возникли вопросы по&nbsp;оплате или реквизитам, свяжитесь с&nbsp;нами.</div>
                    <div class="inner-extras-5 dark rows">
                        <div class="inner-extra">
                            <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-phone.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-extra__description">
                                <div class="inner-extra__sup">Телефон:</div>
                                <?php if ($header_contacts_phone) { ?><div class="h3"><a href="<?php echo htmlspecialchars($header_contacts_phone_href, ENT_QUOTES, 'UTF-8'); ?>"><?php echo htmlspecialchars($header_contacts_phone, ENT_QUOTES, 'UTF-8'); ?></a></div><?php } ?>
                            </div>
                        </div>
                        <div class="inner-extra">
                            <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-whatsapp.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-extra__description">
                                <div class="inner-extra__sup">WhatsApp:</div>
                                <div class="h3">
                                    <?php foreach ($header_contacts_messengers as $index => $messenger) { ?>
                                    <?php if ($index) { ?><br><?php } ?><a href="<?php echo htmlspecialchars($messenger['href'], ENT_QUOTES, 'UTF-8'); ?>" target="_blank" rel="noopener noreferrer"><?php echo htmlspecialchars($messenger['phone'], ENT_QUOTES, 'UTF-8'); ?><?php if ($messenger['name']) { ?> (<?php echo htmlspecialchars($messenger['name'], ENT_QUOTES, 'UTF-8'); ?>)<?php } ?></a>
                                    <?php } ?>
                                </div>
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
                            <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-location.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-extra__description">
                                <div class="inner-extra__sup">Email:</div>
                                <?php if ($header_contacts_email) { ?><div class="h3"><a href="mailto:<?php echo htmlspecialchars($header_contacts_email, ENT_QUOTES, 'UTF-8'); ?>"><?php echo htmlspecialchars($header_contacts_email, ENT_QUOTES, 'UTF-8'); ?></a></div><?php } ?>
                            </div>
                        </div>

                        <div class="inner-extra">
                            <img class="inner-extra__icon" src="<?php echo $asset; ?>images/icons/icon-device-message.svg" alt="" width="48" height="48" loading="lazy">
                            <div class="inner-extra__description">
                                <div class="inner-extra__sup">Онлайн-чат на&nbsp;сайте</div>
                                <div class="h3"><a href="#" onclick="if (window.jivo_api && typeof window.jivo_api.open === 'function') { window.jivo_api.open(); } return false;">JivoSite</a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="buttons">
                    <a href="" class="btn btn--big">Заказать звонок</a>
                </div>
            </section>

            <section class="contacts-map-section">
                <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A6f7ce23971ee56e1fa1aef8eda263835efd7cd5166a010141cc41b247884f650&amp;width=100%25&amp;height=100%25&amp;lang=ru_RU&amp;scroll=false"></script>
                <div class="contacts-map">
                    <h3>Адрес:</h3>
                    <div class="contacts-map__item">
                        <img src="<?php echo $asset; ?>images/icons/icon-location.svg" alt="" width="48" height="48" loading="lazy">
                        <span>г. Москва, ул. Кузнецкий мост, дом&nbsp;7, строение&nbsp;3, этаж 2</span>
                    </div>
                    <div class="contacts-map__item">
                        <img src="<?php echo $asset; ?>images/icons/icon-metro.svg" alt="" width="48" height="48" loading="lazy">
                        <span>Станция метро: Охотный ряд или Кузнецкий мост</span>
                    </div>
                    <div class="contacts-map__item">
                        <span>Время работы:<br>
                            <?php echo htmlspecialchars(trim(strip_tags($header_contacts_work_weekdays)), ENT_QUOTES, 'UTF-8'); ?><br>
                            <?php echo htmlspecialchars(trim(strip_tags($header_contacts_work_weekend)), ENT_QUOTES, 'UTF-8'); ?></span>
                    </div>
                </div>
            </section>

            <section class="inner-section">
                <div class="contacts-find">
                    <h2>Как нас найти</h2>
                    <a href="https://vk.ru/clip_ext.php?oid=-46483382&id=456239589&autoplay=1" data-fancybox="contacts-find" class="contacts-find__video" data-width="450" data-height="800" data-autosize="true">
                        <picture class="contacts-find__video-img">
                            <img src="<?php echo $asset; ?>images/content/contacts-video.webp" alt="" width="360" height="642" loading="lazy">
                        </picture>
                    </a>
                    <div class="contacts-find__description">
                        <p>Здание напротив центрального входа в&nbsp;ЦУМ, вход в&nbsp;арку с&nbsp;улицы Неглинная.</p>
                        <p>Зайдите в&nbsp;арку, поверните направо. Зайдите в&nbsp;деревянную дверь и&nbsp;поднимайтесь на&nbsp;второй этаж.</p>
                    </div>
                </div>
            </section>

            <section class="consultation-section">
                <div class="consultation-section__wrap">
                    <div class="consultation-section__description">
                        <h2>Напишите нам</h2>
                        <div class="text">Наши специалисты свяжутся с&nbsp;вами в&nbsp;течение 2&nbsp;часов и&nbsp;ответят на&nbsp;все ваши вопросы.</div>
                    </div>
                    <form class="consultation-section__form form">
                        <div class="form__row">
                            <label class="form__element">
                                <input type="text" class="inputbox" placeholder="Ваше имя*" required>
                            </label>
                            <label class="form__element">
                                <input type="text" class="inputbox" placeholder="Email*" required>
                            </label>
                        </div>
                        <div class="form__row">
                            <label class="form__element">
                                <textarea class="inputbox" placeholder="Сообщение"></textarea>
                            </label>
                        </div>
                        <div class="form__row">
                            <button type="submit" class="btn btn--medium">Отправить сообщение</button>
                        </div>
                        <div class="form__row form__checkbox">
                            <label class="checkbox">
                                <input type="checkbox" required>
                                <span class="checkbox__label">Я&nbsp;даю согласие на&nbsp;<a href="/soglasie-na-obrabotku-dannyh">обработку персональных данных</a></span>
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
