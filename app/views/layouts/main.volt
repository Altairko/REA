 <!--Header-->
    <header class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a id="logo" class="pull-left" href="/"></a>
                <div class="nav-collapse collapse pull-right">
                    <ul class="nav">
                        <li class="active"><a href="/">Главная</a></li>
                        <li><a href="/catalog">Каталог</a></li>
                        <li><a href="/about">О нас</a></li>
                        <li><a href="contact-us.html">Контакты</a></li>
                        {% if !session_user %}
                        <li class="login">
                            <a data-toggle="modal" href="#loginForm"><i class="icon-lock"></i></a>
                        </li>
                        {% else %}
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">{{name}} <i class="icon-angle-down"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="/catalog/add">Добавить объявление</a></li>
                                <li><a href="/profile/id/{{uid}}">Личный кабинет</a></li>
                                <li><a href="/profile/edit/{{uid}}">Редактировать профиль</a></li>
                                <li><a href="/faq">FAQ</a></li>
                                <li><a href="/login/exit">Выйти</a></li>
                            </ul>
                        </li>
                        {% endif %}
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </header>
    <!-- /header -->
{{ content() }}

<!--Footer-->
<footer id="footer">
    <div class="container">
        <div class="row-fluid">
            <div class="span5 cp">
                &copy; 2016 <a target="_blank" href="https://vk.com/maskaevda" title="Creator maskaevda">vk.com/maskaevda</a>. All Rights Reserved.
            </div>
            <!--/Copyright-->

            <div class="span6">
                <ul class="social pull-right">
                    <li><a href="#"><i class="icon-facebook"></i></a></li>
                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                    <li><a href="#"><i class="icon-github-alt"></i></a></li>
                </ul>
            </div>

            <div class="span1">
                <a id="gototop" class="gototop pull-right" href="#"><i class="icon-angle-up"></i></a>
            </div>
            <!--/Goto Top-->
        </div>
    </div>
</footer>
<!--/Footer-->

<!--  Login form -->
<div class="modal hide fade in" id="loginForm" aria-hidden="false">
    <div class="modal-header">
        <i class="icon-remove" data-dismiss="modal" aria-hidden="true"></i>
        <h4>Login Form</h4>
    </div>
    <!--Modal Body-->
    <div class="modal-body">
        <form class="form-inline" action="/login/start" method="post" id="form-login">
            <input type="text" class="input-small" name="email" placeholder="Email">
            <input type="password" class="input-small" name="password" placeholder="Password">
            <button type="submit" class="btn btn-primary">Войти</button>
        </form>
        <a href="/signup">Еще не зарегистрированны?</a>
    </div>
    <!--/Modal Body-->
</div>
<!--  /Login form -->