{{content()}}
	{% if prof_user %}
	<div class="panel panel-default col-md-9">	
	{{prof_users}}
	    <div style="text-align: center;">
	        {% if prof_avatar%}
	        <img src="{{prof_avatar}}" alt="avatar" class="img-circle avatar">
	        {% else %}
	        <img src="/img/noavatar.png" alt="avatar" class="img-circle avatar">
	        {% endif %}
	        <br>
	        <span style="color: #878787"><h4>@{{prof_username}}</h4></span>
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
	            <span style="font-size: 14pt;">Возраст: {{prof_age}}</span>
	            <br>
	            <span style="font-size: 14pt;">Пол: {%if prof_sex == "" %}N/A{% elseif prof_sex == 0 %}Мужской
                    {% elseif prof_sex == 1%}Женский{% endif %}</span>
	            <br>
	            <span style="font-size: 14pt;">Дней на трекере: {{prof_sex}}</span>
	            <br>
	            <span style="font-size: 14pt;">Карма: 100500</span>
	            <br>
	            <span style="font-size: 14pt;">Группа: VIP</span>
	        </div>
	        <div class="tab-pane fade" id="contacts">
	            <span style="font-size: 14pt;">Email: <a href="mailto:{{prof_email}}">{{prof_email}}</a></span>
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
	            <span style="font-size: 14pt;">Количество предупреждений: {{prof_warning}}</span>
	            <br>
	            <span style="font-size: 14pt;">Оставил комментариев: {{prof_comments}}</span>
	            <br>
	            <span style="font-size: 14pt;">Свои раздачи: {{prof_torrents}}</span>
	        </div>
	    </div>
    {% endif %}
</div>
