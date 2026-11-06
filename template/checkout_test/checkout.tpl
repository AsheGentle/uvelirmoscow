<?php echo $header; ?>

<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
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

    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <form method="post" class="form-horizontal drawing-order" id="order" action="<?php $action ?>">
        <div class="container">
          <div class="row">

            <div id="nameForUnLogged" class="form-group" style="display: <? echo $display  ?>">
              <label class="col-sm-2" for="input-payment-firstname"><?php echo $recipient ?></label>
              <div class="col-sm-10">
                <div class="padding-clear col-sm-4">
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
            </div>
            <?php if (!$logged) { ?>

            <div class="form-group">
              <label class="col-sm-2" for="registr">Зарегистрироваться</label>
              <div class="col-sm-2">
                <div class="padding-clear col-sm-4">
                  <input type="checkbox" name="registr" id="registr" value="0" class="form-control" />
                </div>
              </div>
            </div>
            <div class="form-group" align="left">
              <label class="col-sm-2" for="input-email"><?php echo $entry_email; ?></label>
              <div class="col-sm-6">
                <input type="email" name="email" value="<? if(!empty($order['email'])) echo($order['email'])?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                <?php if ($error_email) { ?>
                <div class="text-danger"><?php echo $error_email; ?></div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <div style="display: none" id="divPass" class="form-group" align="left">
              <label class="col-sm-2" for="input-password"><?php echo $entry_password; ?></label>
              <div class="col-sm-6">
                <input type="password" name="password" value="<? if(!empty($order['password'])) echo($order['password'])?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
                <?php if ($error_password) { ?>
                <div class="text-danger"><?php echo $error_password; ?></div>
                <?php } ?>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2" for="input-payment-telephone"><?php echo $telephone?></label>
              <div class="col-sm-10">
                <div class="padding-clear col-sm-4">
                  <input type="text" name="telephone" value="<? if(!empty($order['telephone'])) echo($order['telephone'])?>" placeholder="<?php echo $entry_telephone; ?>" id="input-payment-telephone" class="form-control" />
                  <?php if ($error_telephone) { ?>
                  <div class="text-danger"><?php echo $error_telephone; ?></div>
                  <?php } ?>
                </div>
              </div>
            </div>
            <div class="form-group" id="price-product">
              <label class="col-sm-2" for="comment"><?php echo $text_comments; ?></label>
              <div class="col-sm-7">
                <div class="padding-clear col-sm-12">
                  <textarea name="comment" placeholder="<?php echo $text_comments_placeholder ?>" rows="8" id="comment" class="form-control"><? if(!empty($order['comment'])) echo($order['comment'])?></textarea>
                </div>
              </div>
              <?php if ($error_comment) { ?>
              <div class="text-danger"><?php echo $error_comment; ?></div>
              <?php } ?>
            </div>
            <div class="form-group padding-clear">
              <div class="pay-order col-sm-12">
                <!--<div id="shipping" class="col-xs-6 col-sm-4">
                  <?php if ($shipping_methods) { ?>
                  <p><?php echo $text_shipping_method; ?></p>
                  <?php foreach ($shipping_methods as $shipping_method) { ?>
                  <?php foreach ($shipping_method['quote'] as $k => $quote) { ?>
                  <div class="radio">
                    <? if(!empty($order['shipping_method'])) { ?>
                    <label>
                      <input type="radio" id="<? echo $quote['cost']?>" checked="checked" name="shipping_method" value="<? echo $shipping_method['title']; ?>" /><?php echo $shipping_method['title']; ?>
                    </label>
                    <? } else { ?>
                    <label>
                      <input type="radio" id="<? echo $quote['cost']?>" name="shipping_method" value="<? echo $shipping_method['title']; ?>" /><?php echo $shipping_method['title']; ?>
                    </label>
                    <? } ?>
                  </div>
                  <?php } ?>
                  <?php } ?>
                  <?php } ?>
                  <?php if ($error_shipping) { ?>
                  <div class="text-danger"><?php echo $error_shipping; ?></div>
                  <?php } ?>
                </div>
                -->
                <div id="payment" class="col-xs-6 col-sm-3">
                  <?php if ($payment_methods) { ?>
                  <p><?php echo $text_payment_method; ?></p>
                  <?php foreach ($payment_methods as $k => $payment_method) { ?>
                  <div class="radio">
                    <? if(!empty($order['payment_method'])) { ?>
                    <label>
                      <input type="radio" name="payment_method" checked="checked"  value="<? if(!empty($payment_method['title'])) echo $payment_method['title']; ?>" /><?php echo $payment_method['title']; ?>
                    </label>
                    <? } else { ?>
                    <label>
                      <input type="radio" name="payment_method" value="<? if(!empty($payment_method['title'])) echo $payment_method['title']; ?>" /><?php echo $payment_method['title']; ?>
                    </label>
                    <? } ?>
                  </div>
                  <?php } ?>
                  <?php } ?>
                  <?php if ($error_payment) { ?>
                  <div class="text-danger"><?php echo $error_payment; ?></div>
                  <?php } ?>
                </div>
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
                <div id="text_product">
                  <h3><? echo($count ." ". $text_product. " на сумму ". $total['text']) ?></h3>
                </div>

                <!--
                <div class="result-payments col-xs-12 col-sm-5">
                  <div id="res">
                  </div>
                  <div id="products_cost">
                  </div>
                  <div id="shipping_cost">
                  </div>
                  -->
                  <div class="text-right">
                    <input style="display: none" type="text" value="<?=$total['text']?>" name="result" id="result" />
                  </div>
                <!--</div>-->

                <br>
                <div class="text-left">
                  <button class="btn-send"><?php echo $button_send ?></button>
                </div>
              </div>

            </div>

          </div>
        </div>
      </form>

      <?php echo $content_bottom; ?>
        <?php echo $column_right; ?>


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
    </div>
  </div>
</div>
</div>
<?php echo $footer; ?>