<!-- Modal fastorder -->
<div style="display:none; padding: 10px;" class="modal fade modal-fastorder" id="bs-fastorder<?php echo $product_id;?>" tabindex="-1" role="dialog" aria-labelledby="bs-fastorderLabel">
    <div class="modal-dialog" role="document">
        <div class="white-popup fastorder">
            <button class="mfp-close" data-dismiss="modal" aria-label="Close" type="button" title="Close (Esc)" data-dismiss="modal" aria-label="Close">×</button>
            <div class="modal-body">
                <div role="form" id="fastorder">
                    <fieldset>
                        <?php echo $text_fastorder_form_info;?>
                        <!-- Alert form validation -->
                        <div id="error-msg" class="alert alert-danger" role="alert" style="display: none;">
                            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                            <?php echo $txt_text_fastorder_form_info_message;?>
                        </div>
                        <div class="form-group">
                            <label for="txt_name"><?php echo $text_fastorder_name;?></label>
                            <input type="text" class="form-control" id="name<?php echo $product_id;?>" name="name<?php echo $product_id;?>" placeholder="<?php echo $text_fastorder_input_name_placeholder;?>" required autofocus>
                        </div>
                        <div class="form-group required">
                            <label for="txt_phone" class="control-label"><?php echo $text_fastorder_phone;?></label>
                            <input type="tel" class="form-control telephone" id="phone<?php echo $product_id;?>" name="phone<?php echo $product_id;?>" placeholder="<?php echo $text_fastorder_input_phone_placeholder;?>" required>
                        </div>
                        <button style="width: 100%" type="submit" id="btn_submit<?php echo $product_id;?>" class="btn btn-black btn-chk"><?php echo $text_fastorder_button_submit;?></button>
                        <div id="tt" class="form-group">
                            <label for="txta_comment"></label>
                            <input class="form-control" style="display:none" id="product_name<?php echo $product_id;?>" name="product_name<?php echo $product_id;?>" value="<?php echo $product_name;?>">
                            <input class="form-control" style="display:none" id="price<?php echo $product_id;?>" name="price<?php echo $product_id;?>" value="<?php echo $price; ?>">
                            <input class="form-control" style="display:none" id="product_id<?php echo $product_id;?>" name="product_id<?php echo $product_id;?>" value="<?php echo $product_id;?>">
                        </div>
                    </fieldset>
                </div>
            </div>
            <div class="text-left hidden">
                <p><?php echo $text_fastorder_mail_msg_order;?><br><strong style="color: #000;"><?php echo $product_name; ?></strong></p>
                <p><?php echo $text_fastorder_mail_msg_price;?>: <strong><?php echo $price; ?></strong></p>
            </div>
        </div>
    </div>
</div>

<!-- Modal fastorder success -->
<div class="modal fade modal-fastorder-success" id="fastorder-success<?php echo $product_id;?>" tabindex="-1" role="dialog">
    <div class="mfp-content">
        <div class="white-popup fastorder">
            <button class="mfp-close" data-dismiss="modal" aria-label="Close" type="button" title="Close (Esc)" data-dismiss="modal" aria-label="Close">×</button>
            <h4 class="modal-title"><?php echo $text_fastorder_success_title;?></h4>
            <div class="modal-body">
                <?php echo $text_fastorder_success_message;?>
            </div>
            <div class="modal-footer" style="text-align: center;">
                <button type="button"  class="btn btn-black btn-chk" data-dismiss="modal"><?php echo $text_fastorder_button_close;?></button>
            </div>
        </div>
    </div>
</div>
<script src="catalog/view/javascript/jquery/jquery.maskedinput.min.js"></script>
<script>
    $('#bs-fastorder<?php echo $product_id?>').modal('show');

    $('#btn_submit<?php echo $product_id;?>').on('click', function() {

        // Form fill variables
        var data = [];

        data['name']          = $('#name<?php echo $product_id;?>').val();
        data['phone']         = $('#phone<?php echo $product_id;?>').val();
        data['mail']          = $('#mail<?php echo $product_id;?>').val();
        data['comment']       = $('#comment<?php echo $product_id;?>').val();
        data['product_name'] = $('#product_name<?php echo $product_id;?>').val();
        data['price']         = $('#price<?php echo $product_id;?>').val();
        data['product_id']    = $('#product_id<?php echo $product_id;?>').val();

        $.ajax({
            url: 'index.php?route=product/fastorder/sender',
            type: 'post',
            data: {name: data['name'], phone: data['phone'],
            product_name: data['product_name'], price: data['price'] ,product_id: data['product_id']},
            dataType: 'json',
            beforeSend: function() {
                // Do form valdation
                if (//!$('#name<?php echo $product_id;?>').val()
                        !$('#phone<?php echo $product_id;?>').val())
                        //|| !$('#mail<?php echo $product_id;?>').val())
                {
                    $('#error-msg').show();
                    return false;
                }
            },
            complete: function() {
                $('#error-msg').hide();
                $('#bs-fastorder<?php echo $product_id;?>').modal('hide');
            },
            success: function(json) {
                $('#fastorder-success<?php echo $product_id;?>').modal('show');
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });
    $('.telephone').mask('7 (999) 999-99-99');
</script>