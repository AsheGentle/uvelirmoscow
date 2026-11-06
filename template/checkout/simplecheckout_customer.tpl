<div class="simplecheckout-block" id="simplecheckout_customer_text">
	<div class="simplecheckout-block-content">
	<ul class="simplecheckout_customer_text_list">
		<li>Несколько приятных дополнений к Вашему выбору.</br>Любое из выбранных изделий может быть адаптированно лично под Вас по дизайну (изменено цветовое решение, детали, размеры, компоновка).</li>
		<li>Мы обеспечиваем индивидуальный подбор материалов под Ваш бюджет (подбор камней по Вашим пожеланиям, уменьшение или увеличение веса изделия в пределах технологии изготовления, замена вида основного металла).</li>
		<li>Для Вашего удобства предлагаем воспользоваться услугой онлайн-примерки до оформления заказа.</li>
		<li>В процессе изготовления мы согласуем с Вами визуализации и технические рендеры и Вы сможете принять прямое участие в создании Вашего изделия.</li>
		<li>Если потребуется дополнительная примерка, после завершения стадии 3D моделирования, возможно изготовление полимерного макета.</li>
		<li>И наконец, если у Вас есть желание стать творцом своего изделия с самого начала - профессиональный художник нашего ювелирного бренда создаст для Вас уникальный эскиз изделия, в постановке задачи, главным автором которой будете Вы.</li>
	</ul>
	</div>
	<h2>Оформить заказ</h2>
</div>
<div class="simplecheckout-block" id="simplecheckout_customer" <?php echo $hide ? 'data-hide="true"' : '' ?> <?php echo $display_error && $has_error ? 'data-error="true"' : '' ?>>
  <?php if ($display_header || $display_login) { ?>
  <div class="panel-heading"><?php if ($display_login) { ?><span class="checkout-heading-button"><a href="javascript:void(0)" data-onclick="openLoginBox"><?php echo $text_checkout_customer_login ?></a></span><?php } ?></div>
  <?php } ?>
  <div class="simplecheckout-block-content">
    <?php if ($display_registered) { ?>
      <div class="alert alert-success"><?php echo $text_account_created ?></div>
    <?php } ?>
    <?php if ($display_you_will_registered) { ?>
      <div class="you-will-be-registered"><?php echo $text_you_will_be_registered ?></div>
    <?php } ?>
    <?php foreach ($rows as $row) { ?>
      <?php echo $row ?>
    <?php } ?>
  </div>
</div>