{{content()}}
	{% if prof_user %}
	<div class="panel panel-default col-md-9">
	{{prof_users}}
	    <div style="text-align: center;">
	        <img src="/img/noavatar.png" alt="avatar" class="img-circle avatar">
	        <br>
	        <span style="color: #878787"><h4>@{{prof_username}}</h4></span>
	        <hr>

	        <ul id="myTab" class="nav nav-tabs">
	            <li class="active"><a href="#personal" data-toggle="tab"><i class="glyphicon glyphicon-user"></i>Личная
	                информация</a></li>
	            <li class=""><a href="#contacts" data-toggle="tab"><i class="glyphicon glyphicon-briefcase"></i>Контакты</a>
	            </li>
	            <li class=""><a href="#сlassifieds" data-toggle="tab"><i class="glyphicon glyphicon-cloud-download"></i>Объявления</a>
	            </li>
	        </ul>
	    </div>
	    <div id="myTabContent" class="tab-content">
	        <div class="tab-pane fade active in" id="personal">
	            <span style="font-size: 14pt;">Пол: {%if prof_sex == "" %}N/A{% elseif prof_sex == 0 %}Мужской
                    {% elseif prof_sex == 1%}Женский{% endif %}</span>
	            <br>
	            <span style="font-size: 14pt;">Дней на сайте: {{prof_day}}</span>
	            <br>
	            <span style="font-size: 14pt;">Группа: {{prof_class}}</span>
	        </div>
	        <div class="tab-pane fade" id="contacts">
	            <span style="font-size: 14pt;">Email: <a href="mailto:{{prof_email}}">{{prof_email}}</a></span>
	            <br>
                <span style="font-size: 14pt;">Телефон: {{prof_phone}}</span>
	            <br>
	            <span style="font-size: 14pt;">Skype: <a href="skype:"></a></span>
	        </div>
	        <div class="tab-pane fade" id="сlassifieds">
	            <span style="font-size: 14pt;">Количество объявлений: {{prof_warning}}</span>
	            <br>
	            <span style="font-size: 14pt;">Открытые объявления: {{prof_comments}}</span>
	            <br>
	            <span style="font-size: 14pt;">Закрытые объявления: {{prof_torrents}}</span>
	        </div>
	    </div>
    {% endif %}
</div>
