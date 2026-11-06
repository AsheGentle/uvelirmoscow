<?php echo $header; ?>
<div class="container">
    <div class="breadcrumbs row wrapper">
    <ul class="breadcrumbs__list" vocab="http://schema.org/" typeof="BreadcrumbList">
      <?php $bread_count = count($breadcrumbs); ?>
      <?php foreach ($breadcrumbs as $i => $breadcrumb) { ?>
      <li class="breadcrumbs__item">
        <?php if($i+1 > $bread_count) { ?>
        <span class="breadcrumbs__link"><?php echo $breadcrumb['text']; ?></span>
        <meta property="position" content="<?php echo $i ?>">
        <? }else{ ?>
        <a class="breadcrumbs__link" href="<?php echo $breadcrumb['href']; ?>" property="item" typeof="WebPage"><?php echo $breadcrumb['text']; ?></a>
        <meta property="position" content="<?php echo $i ?>">
        <?php } ?>
      </li>
      <?php } ?>
    </ul>
  </div>
</div>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><?php echo $error_warning; ?></div>
  <?php } ?>
<div class="container" id="content">
  <?php echo $content_top; ?>
  <div class="wrapper login-page">
      <div class="login-page__row">
          <div class="login-page__column first">
              <div class="category__title"><h1><?php echo $heading_title; ?></h1></div>
              <div class="login-page__description">
                  Пожалуйста, введите адрес электронной почты и нажмите кнопку «Напомнить пароль». Мы отправим Ваш
                  пароль Вам на электронную почту.
              </div>
              <form class="login-page__form" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                  <label class="tm-field form__label" for="input-email">
                      <span>E-mail</span>
                      <input type="text" class="tm-field__input form__field"
                             name="email"
                             placeholder="Ваш e-mail"
                             required=""
                             id="input-email">
                  </label>
                  <button class="btn login-page__btn" type="submit">Напомнить пароль</button>
              </form>
          </div>
          <div class="login-page__column back">
              <img src="catalog/view/theme/uvelirmoscow/assets/img/login/login-back.png">
          </div>
      </div>
  </div>
  <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>
