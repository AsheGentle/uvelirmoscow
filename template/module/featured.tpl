
<h2 class="large-heading">В наличии</h2>
<div class="row">
	<ul class="slider-v-nalichii">
	<?php foreach ($products as $product) { ?>
		<li class="slider-v-nalichii__item">
			<div class="image">
				<a href="<?php echo $product['href']; ?>">
					<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" />
				</a>
			</div>
			<div class="slider-v-nalichii__item-product-name">
				<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
			</div>
			<div class="caption">
				<?php if ($product['price']) { ?>
					<p class="price_small">
					<?php if (!$product['special']) { ?>
						<span><?php echo $product['price']; ?>.</span>
					<?php }?>
					</p>
				<?php } ?>
			</div>
			<div class="button-red">
				<a class="btn" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $text_more_info; ?></a>
			</div>
		</li>
 
<?php } ?>
	</ul> 
	
</div>