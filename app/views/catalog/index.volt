{{ content() }}
<div class="row">
{% for product in products %}
    <div class="col-md-4 ib">
        <figure>
            <img class="img-responsive" src="{{ product.cover }}" alt="" width="360px" itempro="image">
            <figcaption>
                <div class="vertical-middle">
                    <div>
                        <div class="links">
                            <a class="link-item-details" href="/catalog/views/{{ product.id }}">{{ product.name }}</a>
                            <i class="glyphicon glyphicon-ruble"></i>{{ product.price }} руб.
                        </div>
                    </div>
                </div>
            </figcaption>
        </figure>
    </div>
{% endfor %}
</div>