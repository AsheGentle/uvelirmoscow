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
    <input type="hidden" name="type_form1" value="Написать нам">
    <div class="row">
        <div class="col-sm-12">
            <h2>Заказать звонок</h2>
            <div class="form-group required" id="fom-name">
                <label for="input-name" class="control-label"><?php echo $entry_name; ?></label>
                <input type="text" class="form-control" id="input-name" placeholder="<?php echo $entry_name; ?>" value="" name="name">
            </div>
            <div class="form-group required" id="fom-phone">
                <label for="input-phone" class="control-label"><?php echo $entry_phone; ?></label>
                <input type="text" class="form-control" id="input-phone" onkeyup="keyup_phone($(this).val())"  value="+7(" placeholder="<?php echo $entry_phone; ?>" value="" name="phone">
            </div>
            <div class="form-group" id="fom-mail">
                <label for="input-mail" class="control-label"><?php echo $entry_mail; ?></label>
                <input type="text" class="form-control" id="input-mail" placeholder="<?php echo $entry_mail; ?>" value="" name="mail">
            </div>
            <div class="form-group" id="fom-comments">
                <label for="input-comments" class="control-label"><?php echo $entry_comments; ?></label>
                <textarea class="form-control" id="input-comments" placeholder="<?php echo $entry_comments; ?>" name="comments"></textarea>
            </div>
            <div class="form-group" id="fom-privacy">
                <label>
                    <input type="checkbox" name="privacy" class="privacy-callback" checked id="privacy" value="1">&nbsp;Отправляя форму я даю согласие на обработку персональных данных и ознакомлен с <a href="/politika-konfidencialnosti" target="_blank">Политикой конфиденциальности</a></label>
            </div>
            <input type="submit" class="btn btn-primary callback-btn" data-loading-text="Отправка..."  id="button-send" value="Заказать звонок">
        </div>
    </div>
    <script>
function onClick() {
fbq('track', 'Purchase');
};
</script>
</form>
<script src="catalog/view/javascript/jquery/jquery.maskedinput.min.js"></script>
<script><!--
    //$('#input-phone').mask('7 (999) 999-99-99');
    $('.privacy-callback').click(function(){
        var privacy = $(".privacy-callback:checked").val();
        if (privacy != 1) {
            $('.callback-btn').prop('disabled', true);
        } else if (privacy == 1) {
            $('.callback-btn').prop('disabled', false);
        }
    });
    function send() {
        var name = $("#input-name").val();
        var phone = $("#input-phone").val();
        var url = encodeURIComponent(window.location['href']);
        var photo = $("#input-photo").val();
        var mail = $("#input-mail").val();
        var comments = $("#input-comments").val();
		var type=$("input[name='type_form1']").val();
		var sub = 'Отправить фото на расчет';

        $("#input-name").focus(function () {
            $('#fom-name').removeClass('has-error');
            $('#fom-name .text-danger').remove();
        });

        $("#input-phone").focus(function () {
            $('#fom-phone').removeClass('has-error');
            $('#fom-phone .text-danger').remove();
        });

        $("#input-mail").focus(function () {
            $('#fom-mail').removeClass('has-error');
            $('#fom-mail .text-danger').remove();
        });

        $.ajax({
            url: 'index.php?route=module/callback/send',
            type: 'post',
            data: 'filter_type=' + type +'&filter_name=' + name + '&filter_phone=' + phone + '&url=' + url + '&filter_mail=' + mail + '&filter_photo=' + photo + '&filter_comments=' + comments + '&sub=' + sub,
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
                    if (json['error']['mail']) {
                        if ($("#fom-mail .text-danger").length > 0) {
                            $('#fom-mail').addClass('has-error');
                            $('#fom-mail > #input-mail .text-danger').html(json['error']['mail'])
                        } else {
                            $('#fom-mail').addClass('has-error');
                            $('#fom-mail > #input-mail').after('<div class="text-danger">' + json['error']['mail'] + '</div>')
                        }
                    }
                }
                if (json['success'] && !json['error']) {
                    $('#call>form .row>.col-sm-12').html(json['success']);
                    setTimeout(function () {
                        $("#call .mfp-close").click();
                    }, 3000);
                    yaCounter18227068.reachGoal('callback_send');
                    ga('send', 'event', 'order', 'napisat_nam');

//Отправка в Calltouch					
var ct_site_id = '16158';
var sub = 'Заявка';
var ct_data = {             
fio: name,
phoneNumber: phone,
email: mail,
subject: sub,
sessionId: window.call_value 
};
if (phone!='' && phone!=undefined){
jQuery.ajax({  
  url: 'https://api-node5.calltouch.ru/calls-service/RestAPI/'+ct_site_id+'/requests/orders/register/',      
  dataType: 'json',         
  type: 'POST',          
  data: ct_data,
  async: false
}); 
}
					
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