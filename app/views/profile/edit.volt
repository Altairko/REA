{{content()}}
	{% if prof_user %}
	<section class="title">
    <div class="container">
      <div class="row-fluid">
        <div class="span6">
          <h1>Редактирование профиля</h1>
        </div>
      </div>
    </div>
  </section>
		<div class="panel panel-default col-md-9">
			<div class="center">
			<form action="" method="POST">
				<div class="control-group">
			        <label class="control-label">Email</label>
		            <div class="controls">
			            <input type="text" class="form-control" name="email" value="{{prof_email}}">
		            </div>
		        </div>
		        <div class="control-group">
			        <label class="control-label">Телефон</label>
		            <div class="controls">
			            <input type="text" class="form-control" name="phone" id="phone" value="{{prof_phone}}">
		            </div>
		        </div>
		        <div class="control-group">
			        <label class="control-label">Старый пароль</label>
		            <div class="controls">
			            <input type="password" class="form-control" name="old_password">
		            </div>
		        </div>
		        <div class="control-group">
			        <label class="control-label">Новый пароль</label>
		            <div class="controls">
			            <input type="password" class="form-control" name="password">
		            </div>
		        </div>
		        <div class="control-group">
			        <label class="control-label">Пол</label>
		            <div class="controls">
			            <input type="radio" class="form-control" name="sex" value="m" {% if prof_sex == 'm' %}checked{% endif %}> Мужской
						<input type="radio" class="form-control" name="sex" value="f" {% if prof_sex == 'f' %}checked{% endif %}> Женский
		            </div>
		        </div>
				{{ submit_button('Применить изменения', 'class': 'btn btn-success btn-large') }}
			</form>
			</div>
		</div>
	{% endif %}