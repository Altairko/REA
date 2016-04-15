{{ content }}
<div class="container">
    <div class="product-details">


        <div class="row">
            <div class="col-sm-7">

                <h2 itemprop="name">{{ product.name }}</h2>
                <div class="product-details">
                    <a target="_blank" href="{{ product.img2 }}"><img
                                class="img-responsive product-full-image fancybox"
                                src="{{ product.cover }}"
                                alt="{{ product.name }}"
                                itemprop="image" style="width: 100%;"></a>
                    <div class="product-actions shadow">
                        <div class="row">
                            <div class="col-sm-12 col-md-6 hidden-xs">
                                {% if product.img2 %} <a class="fancybox" rel="group" href="{{ product.img2 }}"><img width="70" src="{{ product.img2 }}"
                                                           alt="{{ product.name }}_2"></a> {% endif %}
                                {% if product.img3 %} <a class="fancybox" rel="group" href="{{ product.img3 }}"><img width="70" src="{{ product.img3 }}"
                                                           alt="{{ product.name }}_3"></a> {% endif %}
                                {% if product.img4 %} <a class="fancybox" rel="group" href="{{ product.img4 }}"><img width="70" src="{{ product.img4 }}"
                                                           alt="{{ product.name }}_4"></a> {% endif %}
                            </div>
                        </div>
                    </div>


                    <div class="product-overview" itemprop="description">
                        {{ product.description }}
                    </div>
                </div>
            </div>

            <div class="col-sm-4" style="margin-top: 60px;">
                <div class="product-price-purchase clearfix shadow">
                    <div class="product-price">
                        <strong>Цена:</strong> <span itemprop="price">{{ product.price }} руб.</span>
                    </div>

                    <form class="purchase" action="/cart" method="post">
                        <input type="hidden" name="buy_product_id" value="1525619">
                        <button type="submit" class="product-purchase btn btn-success btn-lg btn-block">Забронировать
                        </button>
                    </form>
                </div>

                <div class="box">
                    <h3 class="box-title clearfix">Информация об авторе</h3>

                    <ul class="unstyled">
                        <li><strong>Имя:</strong> {{ author_name }}</li>

                        <li><strong>Телефон:</strong> {{ author_phone }}</li>

                        <li><strong>Email:</strong> {{ author_email }}</li>

                        <li><strong>Дней на сайте:</strong> {{ author_day }}</li>


                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<link rel="stylesheet" href="/css/template.css">

<!-- <div class="panel panel-default col-md-9">
    <h1>{{ product.name }}</h1>
    <img src="{{ product.cover }}" alt="{{ product.name }}_desc">
    <img src="{{ product.img1 }}" alt="{{ product.name }}_2">
    <img src="{{ product.img2 }}" alt="{{ product.name }}_3">
    <img src="{{ product.img3 }}" alt="{{ product.name }}_4">
    <div>Цена: {{ product.price }}</div>
    <div>Автор: {{ author_name }}</div>
    <div>Телефон: {{ author_phone }}</div>
    <div>Описание: {{ product.description }}</div>
    <a href="#" onclick="delProd()" id="delete"><i class="glyphicon glyphicon-remove"></i>Удалить</a>
</div>-->
<script type="text/javascript">
    function delProd() {
        $.ajax({
            url: "/catalog/delete/{{ id }}",
            success: function (data) {
                window.location.assign("/catalog")
            }
        });
    }
</script>