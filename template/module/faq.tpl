<script>
$( document ).ready(function() {
  $('.b-link_style_text').click(function() {
  $(this).toggleClass('hide');
  $(this).next().toggle('slow');
  });
});


</script>
<div class="col-sm-12 article">
<div class="faq-items">
<?

 foreach($categories_list as $k1=>$item1){
 ?>

                                                                <div class="faq-category-item">
                        <div class="faq-category-title"><h2><?=$item1?></h2></div>

 <div class="b-support-new">



        <ul class="b-support-new__second-level category-<?=$k1?>">
<?
$cnt=0;
 foreach($list[$k1] as $k=>$item){
 $cnt++;
 ?>


            <li class="b-support-new__second-level-item " style="<?if($cnt>99) print 'display:none;';?>">
                <a class="b-support-new__second-level-link b-link b-link_style_text hide" href="javascript:void(0);"><? print htmlspecialchars_decode($item['question'],ENT_QUOTES);?></a>
				<div class="answr">
				<? print htmlspecialchars_decode($item['answer'],ENT_QUOTES);?>
				</div>
            </li>



 <?
 }
?>
  </ul>
  <?
  if($cnt>99){
  ?>
  <a id="showmore-<?=$k1?>" data-cid="<?=$k1?>" class="show-more-btn">Все вопросы<i class="arrow-drop"></i></a>
  <?
  }
  ?>


    </div>
						</div>
						<?
 }
?>
						</div>

</div>
