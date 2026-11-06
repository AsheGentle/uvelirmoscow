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
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> login-page">
        <?php echo $content_top; ?>
      <h1 class="title-3"><?php echo $heading_title; ?></h1>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <legend><?php echo $text_password; ?></legend>
            <div class="my-account login-page__row">
                <div class="login-page__column">
                    <div class="form-group required">
                        <label class="tm-field form__label" for="input-password"><?php echo $entry_password; ?>
                            <input type="password" name="password" value="<?php echo $password; ?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="tm-field__input form__field" />
                          <?php if ($error_password) { ?>
                              <div class="text-danger"><?php echo $error_password; ?></div>
                          <?php } ?>
                        </label>
                    </div>
                </div>
                <div class="login-page__column">
                    <div class="form-group required">
                        <label class="tm-field form__label" for="input-confirm"><?php echo $entry_confirm; ?>
                            <input type="password" name="confirm" value="<?php echo $confirm; ?>" placeholder="<?php echo $entry_confirm; ?>" id="input-confirm" class="tm-field__input form__field" />
                          <?php if ($error_confirm) { ?>
                              <div class="text-danger"><?php echo $error_confirm; ?></div>
                          <?php } ?>
                        </label>
                    </div>
                </div>
            </div>
        </fieldset>
        <div class="my-account__buttons clearfix text-center">
		<a href="<?php echo $back; ?>" class="btn btn-default"><?php echo $button_back; ?></a>
		<input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary" />
          <div class="pull-left"></div>
          <div class="pull-right">
            
          </div>
        </div>
      </form>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>