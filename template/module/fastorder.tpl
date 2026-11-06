<?php
/**
 * All rights reserved.
 * User : Solonitskiy Alex
 * Skype: htc_storm
 * Date : 28.05.2016
 * Time : 20:49
 */
?>
<!--noindex--><div class="btn btn-primary btn-chk btn-fastorder product-card-buy-btn-order_fastorder">
    <a class="" href="#fastorder" id="order" style="display:block;"><?php echo $text_fastorder; ?></a>
</div>
<div id="fastorder" class="mfp-hide white-popup"></div>

<script type="text/javascript">
    $('#order').on('click', function() {
        $.ajax({
            url: 'index.php?route=module/fastorder/getform',
            data: {sub: 'Заказ'},
            success: function(html){
                $("#fastorder").html(html);
            }
        });
    });
    $(function () {
        $('#order').magnificPopup({
            type: 'inline'
        });
    });
</script><!--/noindex-->
