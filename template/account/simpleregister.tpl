<?php if (!$ajax && !$popup && !$as_module) { ?>
<?php $simple_page = 'simpleregister'; include $simple_header; ?>
<?php } ?>
    <?php if (!$ajax || ($ajax && $popup)) { ?>
    <script type="text/javascript">
        <?php if ($popup) { ?>
            var simpleScriptsInterval = window.setInterval(function(){
                if (typeof jQuery !== 'undefined' && jQuery.isReady) {
                    window.clearInterval(simpleScriptsInterval);

                    if (typeof Simplepage !== "function") {
                        <?php foreach ($simple_scripts as $script) { ?>
                            jQuery("head").append('<script src="' + '<?php echo $script ?>' + '"></' + 'script>');
                        <?php } ?>

                        <?php foreach ($simple_styles as $style) { ?>
                            jQuery("head").append('<link href="' + '<?php echo $style ?>' + '" rel="stylesheet"/>');
                        <?php } ?>
                    }
                }
            },0);
        <?php } ?>

        var startSimpleInterval = window.setInterval(function(){
            if (typeof jQuery !== 'undefined' && typeof Simplepage === "function" && jQuery.isReady) {
                window.clearInterval(startSimpleInterval);

                var simplepage = new Simplepage({
                    additionalParams: "<?php echo $additional_params ?>",
                    additionalPath: "<?php echo $additional_path ?>",
                    mainUrl: "<?php echo $action; ?>",
                    mainContainer: "#simplepage_form",
                    useAutocomplete: <?php echo $use_autocomplete ? 1 : 0 ?>,
                    useGoogleApi: <?php echo $use_google_api ? 1 : 0 ?>,
                    loginLink: "<?php echo $login_link ?>",
                    scrollToError: <?php echo $scroll_to_error ? 1 : 0 ?>,
                    notificationDefault: <?php echo $notification_default ? 1 : 0 ?>,
                    notificationToasts: <?php echo $notification_toasts ? 1 : 0 ?>,
                    notificationCheckForm: <?php echo $notification_check_form ? 1 : 0 ?>,
                    notificationCheckFormText: "<?php echo $notification_check_form_text ?>",
                    languageCode: "<?php echo $language_code ?>",
                    popup: <?php echo ($popup || $as_module) ? 1 : 0 ?>,
                    javascriptCallback: function() {<?php echo $javascript_callback ?>}
                });

                if (typeof toastr !== 'undefined') {
                    toastr.options.positionClass = "<?php echo $notification_position ? $notification_position : 'toast-top-right' ?>";
                    toastr.options.timeOut = "<?php echo $notification_timeout ? $notification_timeout : '5000' ?>";
                    toastr.options.progressBar = true;
                }

                simplepage.init();
            }
        },0);
    </script>
    <?php } ?>
    <div class="container">
    <div class="wrapper login-page">
        <div class="login-page__row">
            <div class="login-page__column first">
                <div class="category__title"><h1>Создать аккаунт</h1></div>
                <div class="login-page__description">
                    Создание учетной записи поможет делать следующие заказы быстрее, видеть состояние заказа, а также
                    видеть заказы, сделанные ранее.
                </div>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="simplepage_form" class="login-page__form">
        <div class="simpleregister" id="simpleregister">
            <div class="simpleregister-block-content">
                <?php foreach ($rows as $row) { ?>
                  <?php echo $row ?>
                <?php } ?>
                <?php foreach ($hidden_rows as $row) { ?>
                  <?php echo $row ?>
                <?php } ?>
            </div>

            <?php if ($display_agreement_checkbox) { ?>
                <div class="alert alert-danger simpleregister-warning-block" id="agreement_warning" <?php if ($error_agreement) { ?>data-error="true"<?php } else { ?>style="display:none;"<?php } ?>>
                    <div class="agreement_all">
                        <?php foreach ($error_warning_agreement as $agreement_id => $warning_agreement) { ?>
                            <div class="agreement_<?php echo $agreement_id ?>"><?php echo $warning_agreement ?></div>
                        <?php } ?>
                    </div>
                </div>
            <?php } ?>
            <?php if ($display_agreement_checkbox) { ?>
                        <span id="agreement_checkbox">
                            <?php foreach ($text_agreements as $agreement_id => $text_agreement) { ?>
                                <div class="checkbox">
                                <label class="tm-checkbox form__processing">
                                <input type="checkbox" class="tm-checkbox__input" name="agreements[]" value="<?php echo $agreement_id ?>" <?php echo in_array($agreement_id, $agreements) ? 'checked="checked"' : '' ?> />
                                <span class="tm-checkbox__box form__checkbox"></span>
                                <span class="form__processing-text"><?php echo $text_agreement; ?></span>
                                </label>
                                </div>
                            <?php } ?>
                        </span>
                    <?php } ?>
            <a class="btn login-page__btn" data-onclick="submit" id="simpleregister_button_confirm"><?php echo $button_continue; ?></a>
        </div>
        <?php if ($redirect) { ?>
            <input type="hidden" id="simple_redirect_url" value="<?php echo $redirect ?>">
        <?php } ?>
    </form>
    <span>Уже зарегистрированы?</span>
    <a href="/login" class="login-page__option">Войти</a>
</div>
<div class="login-page__column back">
    <img src="catalog/view/theme/uvelirmoscow/assets/img/login/login-back.png">
</div>
</div>
</div>
</div>
<?php if (!$ajax && !$popup && !$as_module) { ?>
</div>
<?php include $simple_footer ?>
<?php } ?>
