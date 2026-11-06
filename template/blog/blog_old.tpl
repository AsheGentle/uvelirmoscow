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
    <div id="content" class="col-sm-12 <?php echo $class; ?> blog-page">

<?php if ($articles) {

	$tags = array("<p>", "</p>");
	$intro_text = str_replace($tags, "", $articles[0]['intro_text']);

?>
 <a href="<?php echo $articles[0]['href']; ?>" class="blog-first-item-link">
	<img class="blog-first-item-img" src="https://uvelirmoscow.ru/image/<?php echo $articles[0]['img']; ?>" alt="">
	<div class="blog-first-item-wrap">
		<h3 class="blog-first-item-title">
				<?php echo $articles[0]['name']; ?>
		</h3>
		<p class="blog-first-item-text">
				<?php echo $intro_text; ?>
		</p>
	</div>
</a>
<?php } ?>

<?php if ($categories) { ?>
<div class="row blog-row-wrapper">
	<div class="blog-categories">
	<?php foreach ($categories as $category) { ?>
		<a href="statya/<?php echo $category['alias']; ?>" class="blog-category-link<?php if ($current_category_id == $category['id']) { ?> active <?php } ?>">
			<?php echo $category['name']; ?>
		</a>
		<?php } }?>
	</div>
</div>

<?php if ($articles) { ?>
<div class="row blog-row-wrapper">
<?php foreach ($articles as $article) { ?>
<div class="col-xs-6 blog-item-mb">
	<a href="<?php echo $article['href']; ?>" class="blog-item-link">
		<img class="img-responsive blog-item-img" src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>">
		<h3 class="blog-item-title"><?php echo $article['name']; ?></h3>
	</a>
</div>
<?php } ?>


</div>
<div class="row">
<div class="col-xs-12 pagination-blog-page"><?php echo $pagination; ?></div>
</div>
<h2 class="blog-suptitle-form">
	О чем бы вы хотели прочитать?
</h2>
<form action="#"  method="post" name="Блог" class="zakaz-sroch-form nashi-raboti-card-form send-form" id="blog-form">
	<input type="hidden" name="form" class="form" value="О чем бы вы хотели прочитать?">
		<div class="zakaz-sroch-form-inner-wrap nashi-raboti-card-form-inner-wrap">
			<div class="zakaz-sroch-form__left-wrap nashi-raboti-card-form__left-wrap">
			<div class="repairs-form__input-wrap nashi-raboti-card-form__input-wrap">
					<p class="repairs-form__input-text nashi-raboti-card-form__input-text">Имя<span>*</span>:</p>
					<input type="text" name="name" class="repairs-form__input nashi-raboti-card-form__input form-name">
				</div>
				<div class="repairs-form__input-wrap nashi-raboti-card-form__input-wrap">
					<p class="repairs-form__input-text nashi-raboti-card-form__input-text">Телефон<span>*</span>:</p>
					<input type="tel" name="phone" placeholder="+7(___)-(___)-(___)" class="repairs-form__input nashi-raboti-card-form__input form-phone" required>
				</div>
			</div>
			<div class="zakaz-sroch-form__right-wrap">
				<div class="repairs-form__input-wrap nashi-raboti-card-form__input-wrap">
					<p class="repairs-form__input-text nashi-raboti-card-form__input-text">Ваш e-mail:</p>
					<input type="email" name="mail" class="repairs-form__input nashi-raboti-card-form__input form-mail">
				</div>
				<div class="repairs-form__input-wrap nashi-raboti-card-form__input-wrap">
					<p class="repairs-form__input-text nashi-raboti-card-form__input-text">Тема:</p>
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
<?php } ?>
<?php if (!$articles) { ?>
<p><?php echo $text_empty; ?></p>
<?php } ?>
</div>
</div>
</div>
</div>
<?php echo $footer; ?>
