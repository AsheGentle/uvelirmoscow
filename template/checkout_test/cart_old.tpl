<?php echo $header; ?>
<div class="container">
  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
        <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
      <h1><?php echo $heading_title; ?></h1>
        <?php echo $content_top; ?>
        <div class="all-content">
        <div class="table-responsive">
          <table class="table table-bordered">
            <thead>
              <tr>
                <td class="text-center"><?php echo $column_image; ?></td>
                <td class="text-left"><?php echo $column_name; ?></td>
                <td class="text-left"><?php echo $column_model; ?></td>
                <td class="text-left"><?php echo $column_quantity; ?></td>
                <td class="text-right"><?php echo $column_price; ?></td>
                <td class="text-right"><?php echo $column_total; ?></td>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($products as $product) { ?>
              <tr>
                <td class="text-center"><?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                  <?php } ?></td>
                <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
                <td class="text-left"><?php echo $product['model']; ?></td>
                <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                    <input type="number" id="cid<?php echo $product['cart_id']; ?>" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-control" />
                    <span class="input-group-btn">
                    <button data-toggle="tooltip" title="<?php echo $button_update; ?>" onclick="cart.update(<?php echo $product['cart_id']; ?>, $('#cid<?php echo $product['cart_id']; ?>').val());" class="btn btn-primary"><i class="fa fa-refresh"></i></button>
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><i class="fa fa-times-circle"></i></button></span></div></td>
                <td class="text-right"><?php echo $product['price']; ?></td>
                <td class="text-right"><?php echo $product['total']; ?></td>
              </tr>
              <?php } ?>
              <?php foreach ($vouchers as $vouchers) { ?>
              <tr>
                <td></td>
                <td class="text-left"><?php echo $vouchers['description']; ?></td>
                <td class="text-left"></td>
                <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                    <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
                    <span class="input-group-btn"><button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="voucher.remove('<?php echo $vouchers['key']; ?>');"><i class="fa fa-times-circle"></i></button></span></div></td>
                <td class="text-right"><?php echo $vouchers['amount']; ?></td>
                <td class="text-right"><?php echo $vouchers['amount']; ?></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      <?php /* if ($coupon || $voucher || $reward || $shipping) { ?>
      <h2><?php echo $text_next; ?></h2>
      <p><?php echo $text_next_choice; ?></p>
      <div class="panel-group" id="accordion"><?php echo $coupon; ?><?php echo $voucher; ?><?php echo $reward; ?><?php echo $shipping; ?></div>
      <?php } ?>
      <br />
      <div class="row">
        <div class="col-sm-4 col-sm-offset-8">
          <table class="table table-bordered">
            <?php foreach ($totals as $total) { ?>
            <tr>
              <td class="text-right"><strong><?php echo $total['title']; ?>:</strong></td>
              <td class="text-right"><?php echo $total['text']; ?></td>
            </tr>
            <?php } ?>
          </table>
        </div>
      </div>
      <?php if ($success) { ?>
      <div class="buttons">
        <div class="pull-left"><a href="<?php echo $continue; ?>" class="btn btn-default"><?php echo $button_shopping; ?></a></div>
        <div class="pull-right checkout"><a href="<?php echo $checkout; ?>" class="btn btn-primary"><?php echo $button_checkout; ?></a></div>
        <!--<div class="pull-right checkoutnoreg"><a href="<?php echo $checkout; ?>&noreg" class="btn btn-primary">Оформление заказа без регистрации</a></div>-->
      </div>
      <?php } */  ?>
      <form method="post" class="form-horizontal drawing-order" id="order" action="index.php?route=checkout/cart/zakazat">
        <div class="row">
          <div class="checkout-form">

            <div id="nameForUnLogged" class="form-group" style="display: <? echo $display  ?>">
              <label class="col-sm-4" for="input-payment-firstname"><?php echo $recipient ?></label>
              <div class="col-sm-8">
                  <?php if (!$logged) { ?>
                  <input type="text" name="firstname" value="<? if(!empty($order['firstname'])) echo($order['firstname']) ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-payment-firstname" class="form-control" />
                  <?php } ?>
                  <?php if ($logged) { ?>
                  <?
                  if(isset($firstname) || $firstname != '') $name = $firstname;
                  else $name = '';
                  ?>
                  <input type="text" name="firstname" value="<? echo $name ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-payment-firstname" class="form-control" />
                  <?php } ?>

                  <?php if ($error_firstname) { ?>
                  <div class="text-danger"><?php echo $error_firstname; ?></div>
                  <?php } ?>
              </div>
            </div>
              <div class="form-group required">
                  <label class="col-sm-4 control-label" for="input-payment-telephone"><?php echo $telephone ?></label>
                  <div class="col-sm-8">
                      <input type="text" name="telephone" value="<? if(!empty($order['telephone'])) echo($order['telephone'])?>" placeholder="<?php echo $entry_telephone; ?>" id="input-payment-telephone" class="form-control" />
                      <?php if ($error_telephone) { ?>
                      <div class="text-danger"><?php echo $error_telephone; ?></div>
                      <?php } ?>
                  </div>
              </div>

            <div class="form-group" align="left">
              <label class="col-sm-4" for="input-email"><?php echo $entry_email; ?></label>
              <div class="col-sm-8">
                <input type="email" name="email" value="<? if(!empty($order['email'])) echo($order['email'])?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                <?php if ($error_email) { ?>
                <div class="text-danger"><?php echo $error_email; ?></div>
                <?php } ?>
              </div>
            </div>
            <div class="form-group" id="price-product">
              <label class="col-sm-4" for="comment"><?php echo $text_comments; ?></label>
              <div class="col-sm-8">
                  <textarea name="comment" placeholder="<?php echo $text_comments_placeholder ?>" rows="8" id="comment" class="form-control"><? if(!empty($order['comment'])) echo($order['comment'])?></textarea>
              </div>
              <?php if ($error_comment) { ?>
              <div class="text-danger"><?php echo $error_comment; ?></div>
              <?php } ?>
            </div>
            <div class="form-group padding-clear">
              <div class="pay-order col-sm-12">

                <!--<div class="table-responsive col-sm-4">
                    <div style="display: none" class="table-responsive">
                        <?php foreach ($totals as $total) { ?>
                        <div class="text-right"><strong><?php echo $total['title']; ?>:</strong></div>
                        <div id="total" class="text-right"><?php echo $total['text']; ?></div>
                        <?php } ?>
                    </div>
                </div>
                -->
                <? // p($total)?>
                <div id="text_product" class="col-sm-12 pb-30">
                  <h3><? echo($count ." ". $text_product. " на сумму ". $total['text']) ?></h3>
                </div>

                <div class="text-right">
                  <input style="display: none" type="text" value="<?=$total['text']?>" name="result" id="result" />
                </div>

                <br>
                <div class="text-center">
                  <button type="submit" class="btn">Оставить заявку</button>
                </div>
              </div>

            </div>

          </div>
        </div>
      </form>
      <?php echo $content_bottom; ?></div></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.maskedinput.min.js"></script>
<script>
  $('#input-payment-telephone').mask('+7 (999) 999-99-99');
</script>
<script>

  $(document).ready(function() {
    //set initial state.
    $('#registr').val($(this).is(':checked'));

    $('#registr').change(function() {
      if($(this).is(":checked")) {
        $('#divPass').css('display', 'block');
        $(this).val('1');
      }
      else {
        $('#divPass').css('display', 'none');
        $(this).val('0');
      }
    });
  });
</script>
<?php echo $footer; ?>
