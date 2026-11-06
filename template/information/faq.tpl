<section class="faq-section">
    <h2>Часто задаваемые вопросы</h2>
    <div class="faq-list">
        <?php foreach ($faq as $item) { ?>
        <div class="faq-item">
            <div class="faq-item__question"><h3><?php echo htmlspecialchars($item['question'], ENT_QUOTES, 'UTF-8'); ?></h3></div>
            <div class="faq-item__answer"><?php echo $item['answer']; ?></div>
        </div>
        <?php } ?>
    </div>
</section>
