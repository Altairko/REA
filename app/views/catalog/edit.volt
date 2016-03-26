{{content()}}
{% if prof_user %}
    <section class="title">
        <div class="container">
            <div class="row-fluid">
                <div class="span6">
                    <h1>Редактирование товара</h1>
                </div>
            </div>
        </div>
    </section>
    <div class="panel panel-default col-md-9">
        <div class="center">
            <form action="" method="POST">
                <div class="control-group">
                    <label class="control-label">Название</label>
                    <div class="controls">
                        <input type="text" class="form-control" name="name" value="{{product.name}}">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Цена</label>
                    <div class="controls">
                        <input type="text" class="form-control" name="price" value="{{product.price}}">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Обложка</label>
                    <div class="controls">
                        <input type="text" class="form-control" name="cover" value="{{ product.cover }}">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Описание</label>
                    <div class="controls">
                        <textarea name="description">{{ product.description }}</textarea>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Фото 2</label>
                    <div class="controls">
                        <input type="text" class="form-control" name="img2" value="{{ product.img2 }}">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Фото 3</label>
                    <div class="controls">
                        <input type="text" class="form-control" name="img3" value="{{ product.img3 }}">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Фото 4</label>
                    <div class="controls">
                        <input type="text" class="form-control" name="img4" value="{{ product.img4 }}">
                    </div>
                </div>
                {{ submit_button('Применить изменения', 'class': 'btn btn-success btn-large') }}
            </form>
        </div>
    </div>
{% endif %}