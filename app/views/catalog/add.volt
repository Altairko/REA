{{ content() }}
{% if user %}
    <section class="title">
        <div class="container">
            <div class="row-fluid">
                <div class="span6">
                    <h1>Добавление недвижимости</h1>
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
                        <input type="text" class="form-control" name="name">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Постер</label>
                    <div class="controls">
                        <input type="text" class="form-control" name="cover">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Цена</label>
                    <div class="controls">
                        <input type="text" class="form-control" name="price">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Категория</label>
                    <div class="controls">
                        <select name="categorys">
                            <option disabled>Выберите категорию</option>
                            {% for category in categorys %}
                                {% if category.pid == 0 %}
                                    <option value="{{ category.id }}">{{ category.title }}</option>
                                {% else %}
                                    <option value="{{ category.id }}">—{{ category.title }}</option>
                                {% endif %}
                            {% endfor %}
                        </select>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Дополнительные фото</label>
                    <div class="controls">
                        <input type="text" class="form-control" name="img1">
                        <br>
                        <input type="text" class="form-control" name="img2">
                        <br>
                        <input type="text" class="form-control" name="img3">
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Описание</label>
                    <div class="controls">
                        <textarea class="form-control" name="description"></textarea>
                    </div>
                </div>
                {{ submit_button('Добавить', 'class': 'btn btn-success btn-large') }}
            </form>
        </div>
    </div>
{% endif %}