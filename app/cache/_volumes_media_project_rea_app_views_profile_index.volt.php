<?php echo $this->getContent(); ?>
	<?php if ($prof_user) { ?>
	<div class="panel panel-default col-md-9">	
	<?php echo $prof_users; ?>
	    <div style="text-align: center;">
	        <?php if ($prof_avatar) { ?>
	        <img src="<?php echo $prof_avatar; ?>" alt="avatar" class="img-circle avatar">
	        <?php } else { ?>
	        <img src="/img/noavatar.png" alt="avatar" class="img-circle avatar">
	        <?php } ?>
	        <br>
	        <span style="color: #878787"><h4>@<?php echo $prof_username; ?></h4></span>
	        <hr>
	
	        <ul id="myTab" class="nav nav-tabs">
	            <li class="active"><a href="#personal" data-toggle="tab"><i class="glyphicon glyphicon-user"></i>Личная
	                информация</a></li>
	            <li class=""><a href="#contacts" data-toggle="tab"><i class="glyphicon glyphicon-briefcase"></i>Контакты</a>
	            </li>
	            <li class=""><a href="#torrent" data-toggle="tab"><i class="glyphicon glyphicon-cloud-download"></i>Torrent-профиль</a>
	            </li>
	        </ul>
	    </div>
	    <div id="myTabContent" class="tab-content">
	        <div class="tab-pane fade active in" id="personal">
	            <span style="font-size: 14pt;">Пол: <?php if ($prof_sex == '') { ?>N/A<?php } elseif ($prof_sex == 0) { ?>Мужской
                    <?php } elseif ($prof_sex == 1) { ?>Женский<?php } ?></span>
	            <br>
	            <span style="font-size: 14pt;">Дней на сайте: <?php echo $prof_day; ?></span>
	            <br>
	            <span style="font-size: 14pt;">Карма: 100500</span>
	            <br>
	            <span style="font-size: 14pt;">Группа: VIP</span>
	        </div>
	        <div class="tab-pane fade" id="contacts">
	            <span style="font-size: 14pt;">Email: <a href="mailto:<?php echo $prof_email; ?>"><?php echo $prof_email; ?></a></span>
	            <br>
                <span style="font-size: 14pt;">Телефон: <?php echo $prof_phone; ?></span>
	            <br>
	            <span style="font-size: 14pt;">Telegram: <a href=""></a></span>
	            <br>
	            <span style="font-size: 14pt;">VK: <a href=""></a></span>
	            <br>
	            <span style="font-size: 14pt;">Одноклассники: <a href=""></a></span>
	            <br>
	            <span style="font-size: 14pt;">FaceBook: <a href=""></a></span>
		        <br>
	            <span style="font-size: 14pt;">Skype: <a href="skype:"></a></span>
	        </div>
	        <div class="tab-pane fade" id="torrent">
	            <span style="font-size: 14pt;">Количество предупреждений: <?php echo $prof_warning; ?></span>
	            <br>
	            <span style="font-size: 14pt;">Оставил комментариев: <?php echo $prof_comments; ?></span>
	            <br>
	            <span style="font-size: 14pt;">Свои раздачи: <?php echo $prof_torrents; ?></span>
	        </div>
	    </div>
    <?php } ?>
</div>
