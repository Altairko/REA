{{ content() }}
<div class="container">
    <div class="row">
        {% for product in products %}
            <div class="col-sm-2">
                <div class="product-template">
                    <figure>
                        <img class="img-responsive" src="{{ product.cover }}" alt="{{ product.name }}" itempro="image">

                        <figcaption>
                            <div class="vertical-middle">
                                <div>
                                    <div class="links">
                                        <a class="link-item-details" href="/catalog/views/{{ product.id }}">Посмотреть
                                            подробнее</a>
                                    </div>
                                </div>
                            </div>
                        </figcaption>
                    </figure>

                    <h3 itemprop="name"><a href="/catalog/views/{{ product.id }}" itemprop="url">{{ product.name }}</a>
                    </h3>
                    <div class="product-meta">
                        Цена: {{ product.price }} руб.
                    </div>
                </div>
            </div>
        {% endfor %}
    </div>
</div>
<link rel="stylesheet" href="/css/template.css">