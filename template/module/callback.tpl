<?php
/**
 * All rights reserved.
 * User : Solonitskiy Alex
 * Skype: htc_storm
 * Date : 28.05.2016
 * Time : 20:49
 <a href="#" class="global-header__messenger-icon telegram-icon"></a>
        <a href="#" class="global-header__messenger-icon whatsapp-icon"></a>
 */
?>
<a href="#call" id="callback" class="global-header__callback">Заказать звонок</a>
<div id="call" class="mfp-hide white-popup"></div>

<script>
    $('body').on('click','#callback', function() {
        $.ajax({
            url: 'index.php?route=module/callback/getform',
            success: function(html){
                $("#call").html(html);
            }
        });
        //yaCounter18227068.reachGoal('callback_open');
    });
    $(function () {
        $('#callback').magnificPopup({
            src: '#call',
            type: 'inline'
        });
    });
</script>
