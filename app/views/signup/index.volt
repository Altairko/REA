{{ content() }}

<section class="title">
    <div class="container">
      <div class="row-fluid">
        <div class="span6">
          <h1>Регистрация</h1>
        </div>
      </div>
    </div>
  </section>

<section id="registration-page" class="container">
    <form class="center" action='' method="POST">
      <fieldset class="registration-form">    

        <div class="control-group">
            <label class="control-label">Ф.И.О.</label>
            <div class="controls">
                <input type="text" class="form-control" name="name" placeholder="Иванов Иван Иванович">
                <p class="help-block">(Обязательное поле)</p>
            </div>
        </div>

        <div class="control-group">
       		<label class="control-label">Логин</label>
            <div class="controls">
	            <input type="text" class="form-control" name="username" placeholder="ivanivii">
                <p class="help-block">(Обязательное поле)</p>
            </div>
        </div>

        <div class="control-group">
	        <label class="control-label">Email</label>
            <div class="controls">
	            <input type="email" class="form-control" name="email" placeholder="ivanovii@mail.ru">
                <p class="help-block">(Обязательное поле)</p>
            </div>
        </div>
		
		<div class="control-group">
	        <label class="control-label">Пароль</label>
            <div class="controls">
	            <input type="password" class="form-control" name="password" placeholder="12345QwErTy">
                <p class="help-block">(Обязательное поле)</p>
            </div>
        </div>
		
        <div class="control-group">
            <label class="control-label">Номер телефона</label>
            <div class="controls">
                <input type="text" class="form-control" id="phone" name="phone" placeholder="+7 (999)-999-99-99">
                <p class="help-block">(Обязательное поле)</p>
            </div>
        </div>

        <div class="form-actions">
            {{ submit_button('Зарегистрироваться', 'class': 'btn btn-success btn-large btn-block', 'onclick': 'return SignUp.validate();') }}
            <p class="help-block">Зарегистрировавшись, вы принимаете условия использования и политики конфиденциальности.</p>
        </div>
        </fieldset>
    </form>
  </section>
<!-- /#registration-page -->


