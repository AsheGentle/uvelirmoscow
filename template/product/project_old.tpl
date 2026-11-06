<?php echo $header; ?>
<div class="container">
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?> col-sm-12 nashi-raboti-card">
          <ul class="breadcrumb" vocab="http://schema.org/" typeof="BreadcrumbList">
            <?php foreach ($breadcrumbs as $i=> $breadcrumb) { ?>
              <li property="itemListElement" typeof="ListItem">
                <?php if($i+1<count($breadcrumbs)) { ?>
                  <a href="<?php echo $breadcrumb['href']; ?>" property="item" typeof="WebPage">
                    <span property="name">
                  <?php if($breadcrumb['text'] == '<i class="fa fa-home"></i>'){
                    echo 'Главная';
                  }else{
                    echo $breadcrumb['text'];
                  } ?></span></a>
                  <meta property="position" content="<?php echo $i ?>">
                </li>
              <?php } else { ?>
                <span property="name"><?php echo $breadcrumb['text']; ?></span>
                <meta property="position" content="<?php echo $i ?>">
              </li>
            <?php } ?><?php } ?>
              </ul>
             <h1><?php echo $heading_title; ?></h1>
            <?php echo $content_top; ?>
            <div class="all-content">
            <div class="row">
                <div class="col-sm-12 article">
                    <p class="date"><?php echo $products['date_added']; ?></p>
                        <div class="nashi-raboti-card-slider">
                            <?php foreach($project_photos as $photo) { ?>
                            <img src="/image/<?php echo($photo['photo'])?>" alt="<?php echo $products['name']; ?>" />
                            <?php } ?>
	<?php foreach($project_photos as $photo) { ?>
                            <img src="/image/<?php echo($photo['photo'])?>" alt="<?php echo $products['name']; ?>" />
                            <?php } ?>
<?php foreach($project_photos as $photo) { ?>
                            <img src="/image/<?php echo($photo['photo'])?>" alt="<?php echo $products['name']; ?>" />
                            <?php } ?>
<?php foreach($project_photos as $photo) { ?>
                            <img src="/image/<?php echo($photo['photo'])?>" alt="<?php echo $products['name']; ?>" />
                            <?php } ?>
                        </div>
                    <?php if($products['related_id']) { ?>
                        <div class="button-red nashi-raboti-btn-details">
                            <a href="<?php echo $products['href']; ?>" class="btn" title="<?php echo $name_of_product_relative['name'];?>">Смотреть в каталоге</a>
                        </div>
                    <?php } ?>
                    <div class="nashi-raboti-card-desc">
                        <?php if($products['description']){ ?>
                        <?php echo html_entity_decode($products['description']); ?>
                        <?php } ?>
                    </div>
	<div class="nashi-raboti-card-form-wrap">
	<h2 class="nashi-raboti-card-form-title">
		Оставьте заявку
	</h2>
	<form action="#"  method="post" name="Карточка наших работ" class="zakaz-sroch-form nashi-raboti-card-form send-form" id="our-projects">
	<input type="hidden" name="form" class="form" value="Наши работы">
		<div class="zakaz-sroch-form-inner-wrap nashi-raboti-card-form-inner-wrap">
			<div class="zakaz-sroch-form__left-wrap nashi-raboti-card-form__left-wrap">
				<div class="repairs-form__input-wrap nashi-raboti-card-form__input-wrap">
					<p class="repairs-form__input-text nashi-raboti-card-form__input-text">Телефон<span>*</span>:</p>
					<input type="tel" name="phone" placeholder="+7(___)-(___)-(___)" class="repairs-form__input nashi-raboti-card-form__input form-phone" required>
				</div>
				<div class="repairs-form__input-wrap nashi-raboti-card-form__input-wrap">
					<p class="repairs-form__input-text nashi-raboti-card-form__input-text">Имя<span>*</span>:</p>
					<input type="text" name="name" class="repairs-form__input nashi-raboti-card-form__input form-name">
				</div>
			</div>
			<div class="zakaz-sroch-form__right-wrap">
				<div class="repairs-form__input-wrap nashi-raboti-card-form__input-wrap">
					<p class="repairs-form__input-text nashi-raboti-card-form__input-text">Ваш e-mail:</p>
					<input type="email" name="mail" class="repairs-form__input nashi-raboti-card-form__input form-mail">
				</div>
				<div class="repairs-form__input-wrap nashi-raboti-card-form__input-wrap">
					<p class="repairs-form__input-text nashi-raboti-card-form__input-text">Комментарий:</p>
					<textarea name="comment" class="form-comment"></textarea>
				</div>
			</div>
		</div>
		<div class="zakaz-sroch-form__chekbox-wrap nashi-raboti-card-form__chekbox-wrap">
			<input type="checkbox" name="credits" id="nashi-raboti-card-form__credits" class="zakaz-sroch-form__chekbox nashi-raboti-card-form__chekbox" checked>
			<label for="nashi-raboti-card-form__credits" class="zakaz-sroch-form__chekbox-label nashi-raboti-card-form__chekbox-label">Даю согласие на обработку персональных данных и ознакомлен с <a href="#">Политикой конфиденциальности</a></label>
		</div>
		<button type="submit" class="zakaz-sroch-form__btn nashi-raboti-card-form__btn form-submit">
			Отправить
		</button>
	</form>
</div>
                </div>
            </div>
            </div>

            <?php echo $content_bottom; ?>
            </div>
        <?php echo $column_right; ?></div>
    </div>
</div>


<?php echo $footer; ?>
