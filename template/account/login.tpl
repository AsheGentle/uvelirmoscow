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
<?php if ($success) { ?>
<div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
<?php } ?>
<div class="container" id="content">
        <?php echo $content_top; ?>
        <div class="wrapper login-page">
            <div class="login-page__row">
                <div class="login-page__column first line-right">
                    <div class="category__title"><h1>Войти</h1></div>
                    <div class="login-page__description">
                        Пожалуйста, выполните вход в ваш аккаунт.
                    </div>
                    <form class="login-page__form" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                        <label class="tm-field form__label">
                            <span>E-mail</span>
                            <input type="text" class="tm-field__input form__field" name="email" placeholder="Ваш e-mail" required="" value="<?php echo $email; ?>" id="input-email">
                        </label>
                        <label class="tm-field form__label">
                            <span>Пароль</span>
                            <input type="password" class="tm-field__input form__field" name="password" placeholder="Ваш пароль" required="" value="<?php echo $password; ?>" id="input-password">
                        </label>
                        <button class="btn login-page__btn" type="submit">Войти</button>
                        <?php if ($redirect) { ?>
                        <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                        <?php } ?>
                    </form>
                    <a href="<?php echo $forgotten; ?>" class="login-page__option">Забыли пароль?</a>
                </div>
                <div class="login-page__column second">
                    <div class="category__title"><h1>Создать аккаунт</h1></div>
                    <div class="login-page__description">
                        Создание учетной записи поможет делать следующие покупки быстрее (не надо будет снова вводить адрес и
                        контактную информацию), видеть состояние заказа, а также видеть заказы, сделанные ранее. Вы также
                        сможете накапливать при покупках призовые баллы (на них тоже можно что-то купить), а постоянным
                        покупателям мы предлагаем систему скидок.
                    </div>
                    <a href="<?php echo $register; ?>" class="btn login-page__btn" type="submit">Создать аккаунт</a>
                </div>
            </div>
        </div>
      <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>
