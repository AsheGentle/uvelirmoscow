<div class="sb-cat list-group">
  <div class="widget-title"><a href="/katalog">Каталог изделий</a></div>
  <?php foreach ($categories as $key => $category) { ?>
  <? if (($category['category_id'] == $category_id) || (((!empty($category['children'])) || (isset($category['children']))) && (!empty($category['children'][$category_id]['category_id']) == $category_id))) { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item active"><?php echo $category['name']; ?></a>
  <?php if ($category['children']) { ?>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?>
  <a href="<?php echo $child['href']; ?>" class="fonsi-12 list-group-item active"> - <?php echo $child['name']; ?></a>
  <?php } else { ?>
  <a href="<?php echo $child['href']; ?>" class="fonsi-12 list-group-item"> - <?php echo $child['name']; ?></a>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } else { ?>
  <a href="<?php echo $category['href']; ?>" class="list-group-item"><?php echo $category['name']; ?></a>
  <?php } ?>
  <?php } ?>
</div>
<div class="border-bottom"></div>