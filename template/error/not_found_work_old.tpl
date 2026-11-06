<?php echo $header; ?>
<div class="container">
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
        <h1 class="hidden-xs"><?php echo $heading_title; ?></h1>
        <div class="hidden-xs"><?php echo $content_top; ?></div>
        <div class="all-content">
            <div class="article">
      <p>Приносим свои извинения!<br>Наш сайт обновился и некоторые товары теперь недоступны по старым адресам!<br>Воспользуйтесь формой поиска по сайту, чтобы найти интересующий Вас товар или оставьте заявку и мы перезвоним и ответим по стоимости и срокам изготовления интересующего Вас изделия.</p>

                </div>

            <div class="row">
                <div class="col-sm-12">
                    <form action="" method="post" enctype="multipart/form-data" id="form-send-callback" class="grey">
					<input type="hidden" name="type_form2" value="Страница не найдена">
                        <div class="form-title"><?php echo $text_description; ?></div>
                        <div class="form-group" id="fom-name">
                            <input type="text" class="form-control" id="input-name" placeholder="<?php echo $entry_name; ?>" value="" name="name">
                        </div>
                        <div class="form-group required" id="fom-phone">
                            <input type="text" class="form-control" id="input-phone" onkeyup="keyup_phone($(this).val())"  value="+7(" placeholder="<?php echo $entry_phone; ?>" value="" name="phone">
                        </div>
                        <div class="form-group" id="fom-comments">
                            <textarea class="form-control" id="input-comments" placeholder="<?php echo $entry_comments; ?>" name="comments"></textarea>
                        </div>
                        <div class="form-group">
                            <button type="button" id="button-uploads" data-loading-text="Загрузка" class="btn btn-default btn-block"><i class="fa fa-upload"></i>Загрузить фото</button>
                            <input type="hidden" name="photo" value="" id="input-photo" />
                        </div>
                        <div align="center" class="form-group">
                            <input type="button" class="btn btn-black" data-loading-text="Отправка..." onclick="send();" id="button-send" value="<?php echo $button_send; ?>">
                        </div>
                    </form>
                </div>
            </div>
      <div class="buttons">
        <div class="pull-right"><a href="/nasha-rabota" class="btn btn-primary"><?php echo $button_catalog; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery.maskedinput.min.js"></script>
<script type="text/javascript"><!--
    $('#input-phone').mask('7 (999) 999-99-99');
    function send() {
        var name = $("#input-name").val();
        var phone = $("#input-phone").val();
        var url = encodeURIComponent(window.location['href']);
        var photo = $("#input-photo").val();
        var comments = $("#input-comments").val();
		var type=$("input[name='type_form2']").val();

        $("#input-phone").focus(function () {
            $('#fom-phone').removeClass('has-error');
            $('#fom-phone .text-danger').remove();
        });

        $.ajax({
            url: 'index.php?route=module/callback/send',
            type: 'post',
            data: 'filter_type=' + type +'&filter_name=' + name + '&filter_phone=' + phone + '&url=' + url + '&filter_photo=' + photo + '&filter_comments=' + comments,
            dataType: 'json',
            beforeSend: function () {
                $('#button-send').button('loading');
            },
            complete: function () {
                $('#button-send').button('reset');
            },
            success: function (json) {
                if (json['error']) {
                    if (json['error']['phone']) {
                        if ($("#fom-phone .text-danger").length > 0) {
                            $('#fom-phone').addClass('has-error');
                            $('#fom-phone > #input-phone .text-danger').html(json['error']['phone'])
                        } else {
                            $('#fom-phone').addClass('has-error');
                            $('#fom-phone > #input-phone').after('<div class="text-danger">' + json['error']['phone'] + '</div>')
                        }
                    }
                }
                if (json['success'] && !json['error']) {
                    $('#button-uploads').remove();
                    alert("Ваша заявка принята!");
                    $('#input-photo').val('');
                    yaCounter18227068.reachGoal('callback_send');
                    ga('send', 'event', 'order', 'napisat_nam');
                }
            }
        });
    }

    $('#button-uploads').on('click', function() {
        var node = this;

        $('#form-upload').remove();

        $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

        $('#form-upload input[name=\'file\']').trigger('click');

        if (typeof timer != 'undefined') {
            clearInterval(timer);
        }

        timer = setInterval(function() {

            if ($('#form-upload input[name=\'file\']').val() != '') {
                clearInterval(timer);

                $.ajax({
                    url: 'index.php?route=tool/upload',
                    type: 'post',
                    dataType: 'json',
                    data: new FormData($('#form-upload')[0]),
                    cache: false,
                    contentType: false,
                    processData: false,
                    beforeSend: function() {
                        $(node).button('loading');
                    },
                    complete: function() {
                        $(node).button('reset');
                    },
                    success: function(json) {
                        $('.text-danger').remove();

                        if (json['error']) {
                            $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
                        }

                        if (json['success']) {
                            $(node).parent().find('input').attr('value', json['file']);
                            $("#input-photo").after('<p>Фото загружено</p>');
                        }
                        $('#button-uploads').remove();
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        }, 500);
    });
    $('#content input[name=\'search\']').bind('keydown', function(e) {
        if (e.keyCode == 13) {
            $('#button-search').trigger('click');
        }
    });
    $('#button-search').bind('click', function() {
        url = 'index.php?route=product/search';

        var search = $('#content input[name=\'search\']').prop('value');

        if (search) {
            url += '&search=' + encodeURIComponent(search);
        }

        var category_id = $('#content select[name=\'category_id\']').prop('value');

        if (category_id > 0) {
            url += '&category_id=' + encodeURIComponent(category_id);
        }

        var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

        if (sub_category) {
            url += '&sub_category=true';
        }

        var filter_description = $('#content input[name=\'description\']:checked').prop('value');

        if (filter_description) {
            url += '&description=true';
        }

        location = url;
    });
    //-->
</script>
