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
<form action="" method="post" enctype="multipart/form-data" id="form-send-fastorder">
    <div class="row">
        <div class="col-sm-12">
          <h2>Быстрый заказ</h2>


          <input type="hidden" name="subtitle" id="subtitle" value="<?=$sub?>">
          <div class="form-group required" id="fom-name">
            <label for="input-name" class="control-label" >Ваше имя</label>
            <input type="text" class="form-control" id="input-name" placeholder="<?php echo $entry_name; ?>" value="" name="name">
        </div>
        <div class="form-group required" id="fom-phone">
            <label for="input-phone" class="control-label" >Ваш номер телефона</label>
            <input type="text" class="form-control" id="input-phone" onkeyup="keyup_phone($(this).val())"  value="+7(" placeholder="<?php echo $entry_phone; ?>" value="" name="phone">
        </div>

        <div class="form-group" id="fom-comments">
            <label for="input-phone" class="control-label" >Добавить комментарий</label>
            <textarea name="comments" value='' class="form-control" id="input-comments"  style="display:none;"/>
        </div>

        <div class="form-group" id="fom-privacy">
            <label>
                <input type="checkbox" name="privacy" checked class="privacy-fastorder" id="privacy" value="1">&nbsp;Даю согласие на обработку персональных данных и ознакомлен с <a href="/politika-konfidencialnosti" target="_blank">Политикой конфиденциальности</a></label>
            </div>
            <input type="button" class="btn btn-primary btn-chk btn-fastorder" data-loading-text="Отправка..." onclick="send();" id="button-send" value="Отправить">
        </div>
    </div>
</form>
<script src="catalog/view/javascript/jquery/jquery.maskedinput.min.js"></script>
<script><!--
    $('.privacy-fastorder').click(function(){
        var privacy = $(".privacy-fastorder:checked").val();
        if (privacy != 1) {
            $('.fastorder-btn').prop('disabled', true);
        } else if (privacy == 1) {
            $('.fastorder-btn').prop('disabled', false);
        }
    });
    $('#fom-comments label').on('click',function(){
      $('#fom-comments textarea').show();
    });
    function send() {
        var name = $("#input-name").val();
        var phone = $("#input-phone").val();
        var photo = $("#input-photo").val();
        var url = encodeURIComponent(window.location['href']);
        var comments = $("#input-comments").val();
        var sub = $('#subtitle').val();
        type = 'Каталог 1';
        model=$(".product-model").html();

        $("#input-name").focus(function () {
            $('#fom-name').removeClass('has-error');
            $('#fom-name .text-danger').remove();
            $('#fom-name .text-danger').remove();
        });

        $("#input-phone").focus(function () {
            $('#fom-phone').removeClass('has-error');
            $('#fom-phone .text-danger').remove();
        });

        $.ajax({
            url: 'index.php?route=module/fastorder/send',
            type: 'post',
            data: 'filter_model=' + model +'&filter_type=' + type +'&filter_name=' + name + '&filter_phone=' + phone + '&url=' + url + '&filter_photo=' + photo + '&filter_comments=' + comments + '&sub=' + sub,
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
                    $('#fastorder>form .row>.col-sm-12').html(json['success']);
                    setTimeout(function () {
                        $("#fastorder .mfp-close").click();
                    }, 3000);
                    //yaCounter18227068.reachGoal('send_zak');
                    ga('send', 'event', 'order', 'sent');

//Отправка в Calltouch
// var ct_site_id = '16158';
// var sub = 'Заявка';
// var ct_data = {
//     fio: name,
//     phoneNumber: phone,
//     subject: sub,
//     sessionId: window.call_value
// };
// if (phone!='' && phone!=undefined){
//     jQuery.ajax({
//       url: 'https://api-node5.calltouch.ru/calls-service/RestAPI/'+ct_site_id+'/requests/orders/register/',
//       dataType: 'json',
//       type: 'POST',
//       data: ct_data,
//       async: false
//   });
// }

}
}
});
    }

    -->
</script>
