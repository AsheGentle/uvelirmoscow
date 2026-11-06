<?php
/**
 * All rights reserved.
 * User : Solonitskiy Alex
 * Skype: htc_storm
 * Date : 29.05.2016
 * Time : 10:00
 */
?>
<button class="mfp-close" type="button" title="Close (Esc)">×</button>
<form action="" method="post" enctype="multipart/form-data" id="form-send-callback">
    <div class="row">
        <div class="col-sm-12">
            <h2><?php echo $heading_title; ?></h2>
            <p><?php echo $text_description; ?></p>
            <div class="form-group required" id="fom-name">
                <label for="input-name" class="control-label"><?php echo $entry_name; ?></label>
                <input type="text" class="form-control" id="input-name" placeholder="<?php echo $entry_name; ?>" value="" name="name">
            </div>
            <div class="form-group required" id="fom-phone">
                <label for="input-phone" class="control-label"><?php echo $entry_phone; ?></label>
                <input type="text" class="form-control" id="input-phone" onkeyup="keyup_phone($(this).val())"  value="+7(" placeholder="<?php echo $entry_phone; ?>" value="" name="phone">
            </div>
            <div class="form-group" id="fom-comments">
                <label for="input-comments" class="control-label"><?php echo $entry_comments; ?></label>
                <textarea class="form-control" id="input-comments" placeholder="<?php echo $entry_comments; ?>" name="comments"></textarea>
            </div>
            <div class="form-group">
                <button type="button" id="button-uploads" data-loading-text="Загрузка" class="btn btn-default btn-block"><i class="fa fa-upload"></i>Загрузить фото</button>
                <input type="hidden" name="photo" value="" id="input-photo" />
            </div>
			<div class="form-group" id="fom-privacy">
                <label>
                    <input type="checkbox" name="privacy" class="privacy-call-back" id="privacy" value="1">&nbsp;<?php echo $text_privacy; ?></label>
            </div>
                <input type="button" class="btn btn-primary" data-loading-text="Отправка..." onclick="send();" id="button-send" value="<?php echo $button_send; ?>">
        </div>
    </div>
</form>
<script src="catalog/view/javascript/jquery/jquery.maskedinput.min.js"></script>
<script><!--
    $('#input-phone').mask('7 (999) 999-99-99');
    function send() {
        var name = $("#input-name").val();
        var phone = $("#input-phone").val();
        var url = window.location['href'];
        var photo = $("#input-photo").val();
        var comments = $("#input-comments").val();

        $("#input-name").focus(function () {
            $('#fom-name').removeClass('has-error');
            $('#fom-name .text-danger').remove();
        });

        $("#input-phone").focus(function () {
            $('#fom-phone').removeClass('has-error');
            $('#fom-phone .text-danger').remove();
        });

        $.ajax({
            url: 'index.php?route=module/callback/send',
            type: 'post',
            data: 'filter_name=' + name + '&filter_phone=' + phone + '&url=' + url + '&filter_photo=' + photo + '&filter_comments=' + comments,
            dataType: 'json',
            beforeSend: function () {
                $('#button-send').button('loading');
            },
            complete: function () {
                $('#button-send').button('reset');
            },
            success: function (json) {
                if (json['error']) {
                    if (json['error']['name']) {
                        if ($("#fom-name .text-danger").length > 0) {
                            $('#fom-name').addClass('has-error');
                            $('#fom-name > #input-name .text-danger').html(json['error']['name'])
                        } else {
                            $('#fom-name').addClass('has-error');
                            $('#fom-name > #input-name').after('<div class="text-danger">' + json['error']['name'] + '</div>')
                        }
                    }
                    if (json['error']['phone']) {
                        if ($("#fom-phone .text-danger").length > 0) {
                            $('#fom-phone').addClass('has-error');
                            $('#fom-phone > #input-phone .text-danger').html(json['error']['phone'])
                        } else {
                            $('#fom-phone').addClass('has-error');
                            $('#fom-phone > #input-phone').after('<div class="text-danger">' + json['error']['phone'] + '</div>')
                        }
                    }
                }
                if (json['success'] && !json['error']) {
                    $('#call>form .row>.col-sm-12').html("<div class=\"alert alert-success\"><i class=\"fa fa-check-circle\" ></i>" + json['success'] + "</div>");
                    setTimeout(function () {
                        $("#call .mfp-close").click();
                    }, 3000);
                }
            }
        });
    }

    $('#button-uploads').on('click', function() {
        var node = this;

        $('#form-upload').remove();

        $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

        $('#form-upload input[name=\'file\']').trigger('click');

        if (typeof timer != 'undefined') {
            clearInterval(timer);
        }

        timer = setInterval(function() {

            if ($('#form-upload input[name=\'file\']').val() != '') {
                clearInterval(timer);

                $.ajax({
                    url: 'index.php?route=tool/upload',
                    type: 'post',
                    dataType: 'json',
                    data: new FormData($('#form-upload')[0]),
                    cache: false,
                    contentType: false,
                    processData: false,
                    beforeSend: function() {
                        $(node).button('loading');
                    },
                    complete: function() {
                        $(node).button('reset');
                    },
                    success: function(json) {
                        $('.text-danger').remove();

                        if (json['error']) {
                            $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
                        }

                        if (json['success']) {
                            $(node).parent().find('input').attr('value', json['file']);
                            $("#input-photo").after('<p>Фото загружено</p>');
                        }
                        $('#button-uploads').remove();
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        }, 500);
    });
    -->
</script>