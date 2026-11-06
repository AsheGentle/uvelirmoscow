<!-- Button fastorder -->
<button type="button" id="btn-formcall<?php echo $product_id?>" class="btn btn-primary btn-chk btn-fastorder">
  <?php echo $text_fastorder_button;?>
</button>


<div id="fastorder-form-container<?php echo $product_id?>"></div>

<script>
  $('#btn-formcall<?php echo $product_id?>').on('click', function() {
    var data = [];

    data['product_name']    = '<?php echo $product_name;?>';
    data['price']           = '<?php echo $price;?>';
    data['product_id']      = '<?php echo $product_id?>';

    showForm(data);
      yaCounter18227068.reachGoal('open_zak');
  });
</script>
