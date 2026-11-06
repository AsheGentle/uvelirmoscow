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
                        <?php if (!$logged) { ?>
                        <?php $display = 'block' ?>
                        <? } ?>
                        <?php if ($logged) { ?>
                        <?php $display = 'none' ?>
                        <? } ?>
                        <div id="nameForUnLogged" class="form-group" style="display: <? echo $display  ?>">
                            <label class="col-sm-2" for="input-payment-firstname"><?php echo $recipient ?></label>
                            <div class="col-sm-10">
                                <div class="padding-clear col-sm-4">
                                    <input type="text" name="firstname" value="<? if(!empty($order['firstname'])) echo($order['firstname']) ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-payment-firstname" class="form-control" />
                                    <?php if ($error_firstname) { ?>
                                    <div class="text-danger"><?php echo $error_firstname; ?></div>
                                    <?php } ?>
                                </div>
                                <div class="padding-clear col-sm-4">
                                    <input type="text" name="lastname" value="<? if(!empty($order['lastname'])) echo($order['lastname'])?>" placeholder="<?php echo $entry_lastname; ?>" id="input-payment-lastname" class="form-control" />
                                    <?php if ($error_lastname) { ?>
                                    <div class="text-danger"><?php echo $error_lastname; ?></div>
                                    <?php } ?>
                                </div>
                                <div class="padding-clear col-sm-4">
                                    <input type="text" name="patronymic" value="<? if(!empty($order['patronymic'])) echo($order['patronymic'])?>" placeholder="<?php echo $entry_patronymic; ?>" id="input-payment-patronymic" class="form-control" />
                                    <?php if ($error_patronymic) { ?>
                                    <div class="text-danger"><?php echo $error_patronymic; ?></div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                        <?php if (!$logged) { ?>
                        <?php if(!strripos($_SERVER['REQUEST_URI'],'noreg')) { ?>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
                            <div class="col-sm-10">
                                <input type="email" name="email" value="<? if(!empty($order['email'])) echo($order['email'])?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                                <?php if ($error_email) { ?>
                                <div class="text-danger"><?php echo $error_email; ?></div>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-password"><?php echo $entry_password; ?></label>
                            <div class="col-sm-10">
                                <input type="password" name="password" value="<? if(!empty($order['password'])) echo($order['password'])?>" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
                                <?php if ($error_password) { ?>
                                <div class="text-danger"><?php echo $error_password; ?></div>
                                <?php } ?>
                            </div>
                        </div>
                        <? } ?>
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
                        <div class="form-group" style="display:none;">
                            <label class="col-sm-2" for="input-payment-country"><?php echo $country?></label>
                            <div class="col-sm-10">
                                <div class="padding-clear col-sm-4">
                                    <input type="text" name="payment_country" value="Российская федерация" id="input-payment-country" class="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2" for="input-payment-city"><?php echo $entry_city; ?></label>
                            <div class="col-sm-10">
                                <div class="padding-clear col-sm-4">
                                    <? if(!empty($order['payment_city'])) $city = $order['payment_city'] ?>
                                    <? if(empty($order['payment_city'])) $city ='Москва' ?>
                                    <input type="text" name="payment_city" value="<? echo $city ?>" placeholder="<?php echo $entry_city; ?>" id="input-payment-city" class="form-control" />
                                    <?php if ($error_city) { ?>
                                    <div class="text-danger"><?php echo $error_city; ?></div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                        <div id="metro-for-moscow" class="form-group overflow-clear">
                            <label class="col-sm-2" for="input-payment-metro"><?php echo $metro; ?></label>
                            <div class="col-sm-10">
                                <div class="padding-clear col-sm-4">
                                    <select name="metro" id="input-payment-metro" class="chosen-metro">
                                        <option value="" selected="selected"><?php echo $text_select; ?></option>
                                        <?php foreach ($stations as $station) { ?>
                                        <option value="<?php echo $station['UF_NAME']; ?>"><?php echo $station['UF_NAME']; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <?php } ?>
                        <?php if(!$logged) { ?>
                        <div class="form-group" id="addressForUnLogged">
                            <label class="col-sm-2" for="input-payment-address"><?php echo $address ?></label>
                            <div class="col-sm-10">
                                <div class="padding-clear col-sm-4">
                                    <input type="text" name="street" value="<? if(!empty($order['street'])) echo($order['street'])?>" placeholder="<?php echo $entry_street; ?>" id="input-payment-street" class="form-control" />
                                    <?php if ($error_street) { ?>
                                    <div class="text-danger"><?php echo $error_street; ?></div>
                                    <?php } ?>
                                </div>
                                <div class="padding-clear col-sm-2">
                                    <input type="text" name="house" value="<? if(!empty($order['house'])) echo($order['house'])?>" placeholder="<?php echo $entry_house; ?>" id="input-payment-house" class="form-control" />
                                    <?php if ($error_house) { ?>
                                    <div class="text-danger"><?php echo $error_house; ?></div>
                                    <?php } ?>
                                </div>
                                <div class="padding-clear col-sm-2">
                                    <input type="text" name="housing" value="<? if(!empty($order['housing'])) echo($order['housing'])?>" placeholder="<?php echo $entry_housing; ?>" id="input-payment-housing" class="form-control" />
                                </div>
                                <div class="padding-clear col-sm-2">
                                    <input type="text" name="building" value="<? if(!empty($order['building'])) echo($order['building'])?>" placeholder="<?php echo $entry_building; ?>" id="input-payment-building" class="form-control" />
                                </div>
                                <div class="padding-clear col-sm-2">
                                    <input type="text" name="flat" value="<? if(!empty($order['flat'])) echo($order['flat'])?>" placeholder="<?php echo $entry_flat; ?>" id="input-payment-flat" class="form-control" />
                                </div>
                            </div>
                        </div>
                        <?php } ?>
                        <?php if ($logged) { ?>
                        <div id="nameForLogged" class="form-group">
                            <label class="col-sm-2" for="input-payment-firstname"><?php echo $recipient ?></label>
                            <div class="col-sm-10">
                                <div class="padding-clear col-sm-5">
                                    <select name="firstname" id="input-payment-firstname" class="form-control">
                                        <? foreach($arNames as $name) { ?>
                                        <option value="<? echo $name['firstname'] ?>"><? echo $name['firstname'] ?></option>
                                        <? } ?>
                                    </select>
                                    <div class="editing">
                                        <i class="fa fa-pencil" id="pencilName"></i>
                                        <i class="fa fa-close" id="closeName"> </i>
                                    </div>
                                    <?php if ($error_firstname) { ?>
                                    <div class="text-danger"><?php echo $error_firstname; ?></div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                        <div class="form-group" id="spaceForAddress">

                        </div>
                        <div class="form-group" id="addressForLogged">
                            <label class="col-sm-2" for="input-payment-address"><?php echo $address ?></label>
                            <div class="col-sm-10">
                                <div class="padding-clear col-sm-5">
                                    <select name="street2" id="input-payment-street" class="form-control">
                                        <? foreach($addressOrder as $addr) { ?>
                                        <option value="<? echo $addr['payment_address_1'] ?>"><? echo $addr['payment_address_1'] ?></option>
                                        <? } ?>
                                    </select>
                                    <div class="editing">
                                        <i class="fa fa-pencil" id="pencilAddress"> </i>
                                        <i class="fa fa-close" id="closeAddress"> </i>
                                    </div>
                                    <?php if ($error_street) { ?>
                                    <div class="text-danger"><?php echo "Необходимо указать адрес" ?></div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                        <?php } ?>
                        <div class="form-group" id="price-product">
                            <label class="col-sm-2" for="comment"><?php echo $text_comments; ?></label>
                            <div class="col-sm-10">
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
                                <div class="down-arrow">
                                    <i class="fa fa-chevron-down" aria-hidden="true"></i>
                                </div>
                                <div id="shipping" class="col-xs-6 col-sm-4">
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
                                </div>-->
                                <div class="result-payments col-xs-12 col-sm-5">
                                    <div id="res">
                                    </div>
                                    <div id="products_cost">
                                    </div>
                                    <div id="shipping_cost">
                                    </div>
                                    <div class="text-right">
                                        <input style="display: none" type="text" value="" name="result" id="result" />
                                    </div>
                                    <div id="text_reward">
                                        <span style="color: darkmagenta"><?php echo("+ $reward $text_reward на заказ")?></span>
                                    </div>
                                </div>

                                <div class="warning-info col-sm-6 col-lg-8">
                                    <span>Нажимая на кнопку «Отправить заказ» вы принимаете условия Публичной оферты.</span>
                                </div>

                                <button class="btn-send"><?php echo $button_send ?></button>
                            </div>
                            <div id="text_product">
                                <h3><? echo($count ." ". $text_product. " на сумму ". $total['text']) ?></h3>
                            </div>
                        </div>
                        <? foreach ($products as $product) { ?>
                        <? $number = $count?>
                        <? } ?>
                        <!-- <div class="quantity-products-cart"><span><h1>Количество товаров в корзине: <? echo $number ?></h1></span> -->
                        </div>
                        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                            <div class="column-product-cart quantity col-sm-12">
                                <div class="row">
                                    <div class="col-sm-5 col-md-6 padding-clear">
                                        <span><?php echo $column_image; ?></span>
                                    </div>
                                    <div class="lists col-sm-7 col-md-6 padding-clear">
                                        <span><?php echo $column_status; ?></span>
                                        <span><?php echo $column_price; ?></span>
                                        <span><?php echo $column_quantity; ?></span>
                                        <span><?php echo $column_total; ?></span>
                                    </div>
                                    <div class="sub-column cart-column col-sm-12">
                                        <?php foreach ($products as $key => $product) { ?>
                                        <div class="row column checkout">
                                        <div class="col-md-5 padding-clear">
                                            <?php if ($product['thumb']) { ?>
                                            <div class="col-md-3">
                                                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                                            </div>
                                            <?php } ?>
                                            <div class="col-md-9">
                                                <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                                <p><?php echo $product['description']?></p>
                                                <p><?php if ($product['option']) { ?>
                                                    <?php foreach ($product['option'] as $option) { ?>
                                                    <br />
                                                    <?php if (!$product['stock']) { ?>
                                                    <span class="text-danger">***</span>
                                                    <?php } ?>
                                                    <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                                                    <?php } ?>
                                                    <?php } ?></p>
                                                <?php if ($product['reward']) { ?>
                                                <br />
                                                <small><?php echo $product['reward']; ?></small>
                                                <?php } ?>
                                                <?php if ($product['recurring']) { ?>
                                                <br />
                                                <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                                                <?php } ?>
                                            </div>
                                            </div>


                                            <div class="col-sm-2">
                                                <span class="i-store"><i class="fa fa-check-circle-o"></i> В наличии</span>
                                            </div>
                                            <div class="col-sm-1 padding-clear">
                                                <strong><?php echo $product['price']; ?></strong>
                                            </div>
                                            <div class="col-sm-2 padding-clear">
                                                <div class="price-controller">
                                                    <span class="input-minus" onclick="cart.updateCheckout(<?php echo $product['cart_id']; ?>, <?php echo ($product['quantity'] - 1);?> ); return false;">-</span>
                                                    <input id="quantity" type="text" name="quantity" value="<?php echo $product['quantity']; ?> шт." size="1" class="form-control">
                                                    <span class="input-plus"  onclick="cart.updateCheckout(<?php echo $product['cart_id']; ?>, <?php echo ($product['quantity'] + 1); ?>); return false;">+</span>
                                                </div>
                                            </div>
                                            <div class="col-sm-2">
                                                <button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="Удалить" class="btn-drawing">
                                                    <i class="fa fa-times"></i>
                                                </button>
                                                <span id="price_product" class="price"><? echo $product['total']?></span>
                                                <span class="bonus">
                                                    <div id="text_reward">
                                                        <? $reward_product = $product['points']?>
                                                        <span style="color: darkgrey"><?php echo("+ $reward_product $text_reward на товар")?></span>
                                                    </div>
                                                </span>
                                            </div>
                                        </div>
                                        <?php } ?>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>

    <?php echo $content_bottom; ?>
    <?php echo $column_right; ?>


<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.maskedinput.min.js"></script>
<script>
    $('#input-payment-telephone').mask('+7 (999) 999-99-99');
</script>

<script type="text/javascript" language="javascript">
    $(document).ready(function() {
        $(".chosen-metro").chosen();
        var radio = $('input:radio[name=shipping_method]:checked');
        var selector = $('input:radio[name=shipping_method]');
        var ship_cost = 0;
        var total = $('#total').text();
        total = parseFloat(total);
        //var sum = total + ship_cost;
        var sum = '<?=$total['text']?>';
        $('#res').html("<h3><b> Итого к оплате: </b>" + sum + "</h3>");
        $('#result').val(ship_cost + total);
        $('#products_cost').html(" Стоимость товаров: " + sum);
        $('#shipping_cost').html(" Сумма доставки: " + ship_cost + " руб.");
        $(selector).change(function(){
            if(radio) {
                var ship_cost = $(this).attr("id");
                ship_cost = parseFloat(ship_cost);
                var total = $('#total').text();
                total = parseFloat(total);
                var sum = total + ship_cost;
                $('#res').html("<h3><b> Итого к оплате: </b>" + sum + " руб. </h3>");
                $('#result').val(ship_cost + total);
                $('#products_cost').html(" Стоимость товаров: " + total + " руб.");
                $('#shipping_cost').html(" Сумма доставки: " + ship_cost + " руб.");
            }
        });
        $('#input-payment-city').change(function() {
            if($("#input-payment-city").val() != 'Москва' || $("#input-payment-city").val() != 'москва') {
                $('#metro-for-moscow').css('display', 'none');

            }
            if($("#input-payment-city").val() == 'Москва' || $("#input-payment-city").val() == 'москва') {
                $('#metro-for-moscow').css('display', 'block');
            }

        });
        $('#pencilName, #closeName').click(function(){
            $('#nameForUnLogged').css('display', 'block');
            $('#nameForLogged').remove();
        })

        $('#pencilAddress, #closeAddress').click(function(){
            $('#spaceForAddress').html('<label class="col-sm-2" for="input-payment-address"><?php echo $address ?></label><div class="col-sm-10"><div class="padding-clear col-sm-4"> <input type="text" name="street" value="<? if(!empty($order['street'])) echo($order['street'])?>" placeholder="<?php echo $entry_street; ?>" id="input-payment-street" class="form-control" /> <?php if ($error_street2) { ?><div class="text-danger"><?php echo $error_street2; ?></div> <?php } ?></div> <div class="padding-clear col-sm-2"> <input type="text" name="house" value="<? if(!empty($order['house'])) echo($order['house'])?>" placeholder="<?php echo $entry_house; ?>" id="input-payment-house" class="form-control" /> <?php if ($error_house) { ?><div class="text-danger"><?php echo $error_house; ?></div> <?php } ?></div> <div class="padding-clear col-sm-2"> <input type="text" name="housing" value="<? if(!empty($order['housing'])) echo($order['housing'])?>" placeholder="<?php echo $entry_housing; ?>" id="input-payment-housing" class="form-control" /> </div> <div class="padding-clear col-sm-2"> <input type="text" name="building" value="<? if(!empty($order['building'])) echo($order['building'])?>" placeholder="<?php echo $entry_building; ?>" id="input-payment-building" class="form-control" /> </div> <div class="padding-clear col-sm-2"> <input type="text" name="flat" value="<? if(!empty($order['flat'])) echo($order['flat'])?>" placeholder="<?php echo $entry_flat; ?>" id="input-payment-flat" class="form-control" /> </div> </div>');
            $('#addressForLogged').remove();
        })
    });
</script>
<script src="catalog/view/javascript/jquery/chosen.jquery.js" type="text/javascript"></script>
</div>
</form>
</div>
</div>
</div>
<?php echo $footer; ?>