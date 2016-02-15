{{ content() }}
<section class="title">
    <div class="container">
      <div class="row-fluid">
        <div class="span6">
          <h1>Авторизация</h1>
        </div>
      </div>
    </div>
  </section>

<section id="registration-page" class="container">
    {{ form('login/start', 'role': 'form', 'class': 'center') }}
      <fieldset class="registration-form"> 
        <div class="control-group">
	        <label class="control-label">Email</label>
            <div class="controls">
	            {{ text_field('email', 'class': "form-control") }}
            </div>
        </div>
		
		<div class="control-group">
	        <label class="control-label">Пароль</label>
            <div class="controls">
	            {{ password_field('password', 'class': "form-control") }}
            </div>
        </div>

        <div class="form-actions">
        {{ submit_button('Войти', 'class': 'btn btn-success btn-large btn-block') }}
        </div>
        </fieldset>
    </form>
  </section>


