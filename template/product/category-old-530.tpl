<?php echo $header; ?>
<div class="container" style="background-color:#fff;">
  <div class="row">
    <div id="content" class="col-sm-12 contact-page category-main">
      <ul class="breadcrumb" vocab="http://schema.org/" typeof="BreadcrumbList">
        <?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
          <li property="itemListElement" typeof="ListItem"><?php if($i+1<count($breadcrumbs)) { ?>
              <a href="<?php echo $breadcrumb['href']; ?>" property="item" typeof="WebPage">
                <span property="name">
              <?php if($breadcrumb['text'] == '<i class="fa fa-home"></i>'){
                echo 'Главная';
              }else{
                echo $breadcrumb['text'];
              } ?></span></a>
              <meta property="position" content="<?php echo $i ?>">
            </li>
          <?php } else { ?><span><?php echo $breadcrumb['text']; ?></span></li><?php } ?><?php } ?>
          </ul>


      <div class="all-content">
      <div class="izdeliya-v-nalichii">
            <h1 class="izdeliya-v-nalichii-title"><?php echo $heading_title; ?></h1>

        <div class="row">
          <div class="margin-auto sort col-md-12">

            <div class="izdeliya-v-nalicii__sort">
                    <?php foreach ($sorts as $sorts) { ?>
                        <?php if ($sorts['sort'] == $sort and $sorts['order'] == $order) { ?>
                        <span><?php echo $sorts['text']; ?></span>
                        <?php } else { ?>
                        <a href="<?php echo $sorts['href']; ?>" style="text-decoration:underline"><?php echo $sorts['text']; ?></a>
                        <?php } ?>
                    <?php } ?>
          </div>
          </div>
        </div>


            <?php if ($products_all) { ?>
          <?php foreach($products_all as $key => $products) { ?>
              <?php if(isset($products[1])) { ?>
                  <?php foreach($products[1] as $k => $product) { ?>
                    <?php array_push($products_all[$key], $product); ?>
                  <?php } ?>
          <?php unset($products_all[$key][1]) ?>
          <?php } ?>
          <?php } ?>

          <ul class="izdeliya-v-nalichii-list">
            <?php foreach ($products_all as $k => $products) { ?>

            <li class="izdeliya-v-nalichii-list__item">
                 <?php if(count($products)>1){ ?>
                    <ul class="izdeliya-v-nalichii-list-img-list">
                <?php } ?>

                <?php foreach ($products as $key => $product) { ?>

                    <?php if(count($products)>1){ ?>
                        <li class="izdeliya-v-nalichii-list-img-list-item">
                        <a href="<?php echo $product['href']; ?>">
                    <?php } else { ?>
                        <a href="<?php echo $product['href']; ?>">
                            <?php } ?>

                    <img data-src="<?php echo $product['thumb']; ?>" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="izdeliya-v-nalichii-list__img-list-pic lazyload" loading="lazy">
                    <h4 class="izdeliya-v-nalichii-list__title">
                        <?php echo $product['name']; ?>
                    </h4>
                    <span class="izdeliya-v-nalichii-list__price">
                        <?php echo str_replace('руб', 'Р', $product['price']); ?>
                    </span>

                <?php if(count($products)>1){ ?>
                </a>
                </li>
                <?php } else { ?>
                </a>
                <?php } ?>
                <?php } ?>

                    <?php if(count($products)>1){ ?>
                    </ul>
                <?php }?>

                </li>
            <?php } ?>

        </ul>

        <div class="row pb-30">
            <div class="col-sm-12 text-center"><?php echo $pagination; ?></div>
        </div>
        <?php } else { ?>

           <center> Ничего не найдено! </center>

            <?php } ?>


        <h2 class="izdeliya-v-nalichii-suptitle">
            Оставьте заявку
        </h2>
        <p class="izdeliya-v-nalichii-suptext">
            Если Вы не нашли подходящее изделие - оставьте заявку, <br>мы в ближайшее время предложим Вам дополнительные варианты
        </p>
        <form action="" method="post" name="Изделия в наличии" class="repairs-form izdeliya-v-nalichii-form send-form" id="in-stock">
			<input class="form" name="form" type="hidden" value="Изделия в наличии">
            <div class="repairs-form__input-wrap izdeliya-v-nalichii-form__input-wrap">
                <p class="repairs-form__input-text izdeliya-v-nalichii-form__input-text">Имя:</p>
                <input type="text" name="name" class="repairs-form__input izdeliya-v-nalichii-form__input form-name">
            </div>
            <div class="repairs-form__input-file-wrap izdeliya-v-nalichii-form__input-file-wrap">
                <p class="repairs-form__input-text izdeliya-v-nalichii-form__input-text">Ваше фото или эскиз изделия:</p>
                <div class="field__wrapper">
                    <input name="file" type="file" name="file" id="izdeliya-v-nalichii-form__input-field" class="repairs-form__input-field izdeliya-v-nalichii-form__input-field form-file" multiple>
                    <label class="repairs-form__input-field-label izdeliya-v-nalichii-form__input-field-label" for="izdeliya-v-nalichii-form__input-field">
                        <div class="repairs-form__input-field-fake izdeliya-v-nalichii-form__input-field-fake">
                            <div class="repairs-form__input-field-img-wrap izdeliya-v-nalichii-form__input-field-img-wrap">
                                <img src="/catalog/view/theme/uvelirmoscow/image/forms/input-file.png" alt="" class="repairs-form__input-field-img izdeliya-v-nalichii-form__input-field-img">
                                <p class="repairs-form__input-field-img-text izdeliya-v-nalichii-form__input-field-img-text">Добавить файл</p>
                            </div>
                            <p>Файл не выбран</p>
                        </div>
                    </label>
                </div>
            </div>
            <div class="repairs-form__input-wrap izdeliya-v-nalichii-form__input-wrap">
                <p class="repairs-form__input-text izdeliya-v-nalichii-form__input-text">Телефон<span>*</span>:</p>
                <input type="tel" name="phone" placeholder="+7(___)-(___)-(___)" class="repairs-form__input izdeliya-v-nalichii-form__input form-phone" required>
            </div>
            <div class="repairs-form__textarea-wrap izdeliya-v-nalichii-form__textarea-wrap">
                <p class="repairs-form__input-text izdeliya-v-nalichii-form__input-text ">Комментарий:</p>
                <textarea name="comment" class="form-comment"></textarea>
            </div>
            <button type="submit" class="repairs-form__btn izdeliya-v-nalichii-form__btn form-submit">Отправить</button>
        </form>



      </div>
      </div>
    </div>
</div></div>
<?php echo $footer; ?>
