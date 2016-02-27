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
			{{prof_users}}
			<div>
			<form action="/profile/edit"></form>
				<label for="email">Email</label><input type="text" value="{{prof_email}}">
				<label for="phone">Телефон</label><input type="text" value="{{prof_phone}}">
			</div>
		</div>
	{% endif %}