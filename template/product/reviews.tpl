<?php echo $header; ?>
<?php $asset = 'catalog/view/theme/uvelirmoscow_new/assets_new/'; ?>
<main>
    <section class="inner-section">
        <ul class="breadcrumbs" itemscope itemtype="https://schema.org/BreadcrumbList">
            <?php foreach ($breadcrumbs as $index => $breadcrumb) { ?>
            <li class="breadcrumbs__item" itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
                <?php if ($index + 1 < count($breadcrumbs)) { ?>
                <a href="<?php echo htmlspecialchars(html_entity_decode($breadcrumb['href'], ENT_QUOTES, 'UTF-8'), ENT_QUOTES, 'UTF-8'); ?>" class="breadcrumbs__link" itemprop="item">
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
        <h1>Отзывы наших клиентов</h1>
        <div class="text">Лучше один раз увидеть, чем сто раз услышать! Реальные отзывы и&nbsp;видео-благодарности от&nbsp;наших клиентов. Узнайте, почему нам доверяют создание самых важных украшений.</div>

        <div class="inner-block" id="video-reviews">
            <h2>Видеоотзывы клиентов</h2>
            <div class="text">Наши клиенты делятся своими впечатлениями о&nbsp;работе со&nbsp;студией &laquo;Ювелиры Москвы&raquo;. Посмотрите видео, чтобы узнать об&nbsp;их&nbsp;опыте создания украшений.</div>
            <?php if ($video_reviews) { ?>
            <div class="reviews reviews--grid">
                <?php foreach ($video_reviews as $review) { ?>
                <div class="review">
                    <a href="<?php echo htmlspecialchars($review['video'], ENT_QUOTES, 'UTF-8'); ?>" class="review__inner" data-fancybox="review-videos" data-width="853" data-height="480" data-autosize="true">
                        <picture class="review__image">
                            <img src="<?php echo htmlspecialchars($review['preview'], ENT_QUOTES, 'UTF-8'); ?>" alt="" width="698" height="300" loading="lazy">
                        </picture>
                        <div class="review__description">
                            <div class="review__title"><span>Отзыв от</span><span><?php echo htmlspecialchars($review['text'], ENT_QUOTES, 'UTF-8'); ?></span></div>
                        </div>
                    </a>
                </div>
                <?php } ?>
            </div>
            <?php if ($page_count > 1) { ?>
            <?php
            $page_href = function($target_page) use ($pagination_url) {
                $href = $target_page == 1 ? rtrim(str_replace('page={page}', '', $pagination_url), '?&') : str_replace('{page}', $target_page, $pagination_url);
                return htmlspecialchars($href, ENT_QUOTES, 'UTF-8');
            };
            $pages = array(1, $page_count);
            for ($number = max(1, $page - 1); $number <= min($page_count, $page + 2); $number++) $pages[] = $number;
            $pages = array_values(array_unique($pages));
            sort($pages);
            ?>
            <div class="pagination">
                <?php if ($page > 1) { ?><a href="<?php echo $page_href($page - 1); ?>" class="pagination__item prev" rel="prev"></a><?php } ?>
                <?php $previous = 0; foreach ($pages as $number) { ?>
                <?php if ($previous && $number - $previous > 1) { ?><span class="pagination__item">...</span><?php } ?>
                <?php if ($number == $page) { ?>
                <span class="pagination__item current" aria-current="page"><?php echo $number; ?></span>
                <?php } else { ?>
                <a href="<?php echo $page_href($number); ?>" class="pagination__item"><?php echo $number; ?></a>
                <?php } ?>
                <?php $previous = $number; } ?>
                <?php if ($page < $page_count) { ?><a href="<?php echo $page_href($page + 1); ?>" class="pagination__item next" rel="next"></a><?php } ?>
            </div>
            <?php } ?>
            <?php } else { ?>
            <p><?php echo htmlspecialchars($text_no_reviews, ENT_QUOTES, 'UTF-8'); ?></p>
            <?php } ?>
        </div>

        <div class="inner-block">
            <h2>Текстовые отзывы</h2>
            <div class="text">Наши клиенты также оставляют письменные отзывы о&nbsp;сотрудничестве. Мы&nbsp;ценим каждое слово и&nbsp;благодарны за&nbsp;доверие.</div>
            <?php if ($text_reviews) { ?>
            <div class="reviews-texts swiper">
                <div class="swiper-wrapper">
                    <?php foreach ($text_reviews as $review) { ?>
                    <div class="reviews-text swiper-slide">
                        <div class="reviews-text__head">
                            <div class="reviews-text__author">
                                <img class="reviews-text__photo" src="<?php echo $asset; ?>images/icons/icon-user-photo.svg" alt="" width="48" height="48" loading="lazy">
                                <div class="reviews-text__info">
                                    <div class="reviews-text__name"><?php echo htmlspecialchars($review['author'], ENT_QUOTES, 'UTF-8'); ?></div>
                                    <div class="reviews-text__date"><?php echo $review['date_added']; ?></div>
                                </div>
                            </div>
                            <div class="stars"><div class="stars-fill" style="width: <?php echo $review['rating'] * 20; ?>%"></div></div>
                        </div>
                        <div class="reviews-text__body"><?php echo nl2br(htmlspecialchars($review['text'], ENT_QUOTES, 'UTF-8')); ?></div>
                    </div>
                    <?php } ?>
                </div>
                <div class="swiper-buttons">
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-pagination"></div>
                    <div class="swiper-button-next"></div>
                </div>
            </div>
            <?php } else { ?>
            <p><?php echo htmlspecialchars($text_no_reviews, ENT_QUOTES, 'UTF-8'); ?></p>
            <?php } ?>
        </div>
    </section>

    <section class="consultation-section">
        <div class="consultation-section__wrap">
            <div class="consultation-section__description">
                <h2>Оставить отзыв</h2>
                <div class="text">Если вы&nbsp;уже пользовались нашими услугами, мы&nbsp;будем благодарны за&nbsp;ваш отзыв. Это помогает нам становиться лучше и&nbsp;помогает другим клиентам делать выбор.</div>
            </div>
            <form class="consultation-section__form form" id="reviews-form" action="<?php echo htmlspecialchars($write_url, ENT_QUOTES, 'UTF-8'); ?>" method="post">
                <div class="form__message" aria-live="polite"></div>
                <div class="form__row">
                    <label class="form__element"><input type="text" name="name" class="inputbox" placeholder="Ваше имя*" required></label>
                    <label class="form__element"><input type="email" name="email" class="inputbox" placeholder="Email"></label>
                </div>
                <div class="form__row"><textarea class="inputbox" name="text" rows="5" placeholder="Ваш отзыв*" required></textarea></div>
                <div class="form__row">
                    <div class="form__label">Ваша оценка</div>
                    <fieldset class="form__stars">
                        <?php for ($rating = 5; $rating >= 1; $rating--) { ?>
                        <input type="radio" id="rating-<?php echo $rating; ?>" name="rating" value="<?php echo $rating; ?>"<?php echo $rating == 5 ? ' checked' : ''; ?>>
                        <label for="rating-<?php echo $rating; ?>"><svg aria-hidden="true"><use href="<?php echo $asset; ?>images/icons/icons.svg#star"></use></svg> <?php echo $rating; ?></label>
                        <?php } ?>
                    </fieldset>
                </div>
                <?php echo $captcha; ?>
                <div class="form__row"><button type="submit" class="btn btn--medium">Оставить отзыв</button></div>
                <div class="form__row form__checkbox">
                    <label class="checkbox">
                        <input type="checkbox" required>
                        <span class="checkbox__label">Я&nbsp;даю согласие на&nbsp;<a href="/soglasie-na-obrabotku-dannyh">обработку персональных данных</a></span>
                    </label>
                    <div class="checkbox">Оставляя текущую заявку, я&nbsp;соглашаюсь, что сайт носит информационный характер и&nbsp;не&nbsp;является публичной офертой.</div>
                    <div class="checkbox"><a href="/politika-obrabotku-personalnyh-dannyh">Политика обработки персональных данных</a></div>
                </div>
            </form>
        </div>
    </section>

    <section class="inner-section">
        <h2>Нам доверяют</h2>
        <div class="reviews-trusts">
            <div class="reviews-trust">
                <img class="reviews-trust__logo" src="<?php echo $asset; ?>images/content/yandex.svg" alt="Яндекс." width="242" height="80" loading="lazy">
                <div class="reviews-trust__stars stars"><div class="stars-fill" style="width: 100%"></div></div>
                <div class="reviews-trust__score">5&nbsp;из&nbsp;5</div><div class="reviews-trust__text">Средний рейтинг</div>
            </div>
            <div class="reviews-trust">
                <img class="reviews-trust__logo" src="<?php echo $asset; ?>images/content/google.webp" alt="Google." width="120" height="40" loading="lazy">
                <div class="reviews-trust__stars stars"><div class="stars-fill" style="width: 80%"></div></div>
                <div class="reviews-trust__score">4&nbsp;из&nbsp;5</div><div class="reviews-trust__text">Средний рейтинг</div>
            </div>
            <div class="reviews-trust">
                <img class="reviews-trust__logo" src="<?php echo $asset; ?>images/content/2gis.svg" alt="2ГИС." width="120" height="40" loading="lazy">
                <div class="reviews-trust__stars stars"><div class="stars-fill" style="width: 100%"></div></div>
                <div class="reviews-trust__score">5&nbsp;из&nbsp;5</div><div class="reviews-trust__text">Средний рейтинг</div>
            </div>
        </div>
    </section>

    <section class="faq-section">
        <h2>Часто задаваемые вопросы</h2>
        <div class="faq-list">
            <div class="faq-item"><div class="faq-item__question"><h3>Как я&nbsp;могу оставить отзыв о&nbsp;работе студии?</h3></div><div class="faq-item__answer">Вы&nbsp;можете оставить отзыв через форму на&nbsp;этой странице или написать нам в&nbsp;мессенджеры/по электронной почте.</div></div>
            <div class="faq-item"><div class="faq-item__question"><h3>Публикуете&nbsp;ли вы&nbsp;все отзывы?</h3></div><div class="faq-item__answer"></div></div>
            <div class="faq-item"><div class="faq-item__question"><h3>Можно&nbsp;ли оставить отзыв анонимно?</h3></div><div class="faq-item__answer"></div></div>
            <div class="faq-item"><div class="faq-item__question"><h3>Как быстро появляется мой отзыв на&nbsp;сайте?</h3></div><div class="faq-item__answer"></div></div>
            <div class="faq-item"><div class="faq-item__question"><h3>Могу&nbsp;ли я&nbsp;приложить фото к&nbsp;отзыву?</h3></div><div class="faq-item__answer"></div></div>
            <div class="faq-item"><div class="faq-item__question"><h3>Что делать, если я&nbsp;хочу оставить отзыв, но&nbsp;не&nbsp;нашёл свою услугу в&nbsp;списке?</h3></div><div class="faq-item__answer"></div></div>
        </div>
    </section>
</main>
<?php echo $footer; ?>
