<?php if ($products) { ?>
<?php foreach ($products as $product) { ?>

<div class="search-header-item" onclick="location.href='<?php echo $product['href']; ?>'">

    <div class="search-header-item-image">
        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
    </div>

    <div class="search-header-item-caption">
        <span class="search-header-item-name"><?php echo mb_substr($product['name'],0,18) . '...'; ?></span>
        <span class="search-header-item-price"><?php echo $product['price']; ?></span>

    </div>
</div>
<?php } ?>
<?php } else { ?>
<p>Нет результатов</p>
<?php } ?> 