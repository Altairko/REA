{{ content }}
<div class="row">
    <h1>{{ product.name }}</h1>
    <img src="{{ product.cover }}" alt="{{ product.name }}_desc">
    <img src="{{ product.img1 }}" alt="{{ product.name }}_2">
    <img src="{{ product.img2 }}" alt="{{ product.name }}_3">
    <img src="{{ product.img3 }}" alt="{{ product.name }}_4">
    <div>Цена: {{ product.price }}</div>
    <div>Автор: {{ author_name }}</div>
    <div>Телефон: {{ author_phone }}</div>
    <div>Описание: {{ product.description }}</div>
</div>