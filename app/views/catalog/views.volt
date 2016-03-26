{{ content }}
<div class="panel panel-default col-md-9">
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
</div>
<script type="text/javascript">
    function delProd(){
        $.ajax({
            url: "/catalog/delete/{{ id }}",
            success: function(data){
                window.location.assign("/catalog")
            }
        });
    };
</script>