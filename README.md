# Агенство недвижимости/Real Estate Agency (REA)

В основе CMS лежит **Phalcon Framework**, с документацией можно ознакомиться на [официальном сайте](http://docs.phalconphp.ru/ru/latest/reference/tools.html).

### Version CMS
* 1.0.5 (beta)

### Version Phalcon Framework
* 2.0.10

### Установка Phalcon:

- ### Phalcon для Windows 
  * Скачать [библиотеку](http://phalconphp.com/ru/download)
  * Добавить в конце php.ini:  ```extension=php_phalcon.dll```
  
- ### Phalcon для Ubuntu
  * Выполнить ```$ sudo apt-get install php5-dev libpcre3-dev gcc make php5-mysql```
  * Клонирование исходников Phalcon ```$ git clone --depth=1 git://github.com/phalcon/cphalcon.git```
  * ```$ cd cphalcon/build```
  * Сборка расширения ```$ sudo ./install```
  * Ubuntu/Debian с apache2: создайте файл 30-phalcon.ini в /etc/php5/apache2/conf.d/ со следующим содержимым: ```extension=phalcon.so```

### Установка CMS:
- Клонируем репозитарий в удобное место ```$ git clone https://github.com/Altairko/REA.git```
- Импортируем схему БД
- Редактируем подключения к БД в файле ```/app/config/config.php```
- Для автоматической генерации Контроллеров и Моделей используем [Phalcon Developer Tools](http://docs.phalconphp.ru/ru/latest/reference/tools.html)

### Реализовано: 
  - Перенос с SimplePHP
  - Выбор и адаптация шаблона
  - Регистрация и Авторизация
  - Создание минимальной структуры БД
  - Личный кабинет пользователя
  - Добавление/изменение(своих) объявлений
  - Разграничение прав доступа (3 класса пользователей)
     * Пользователь
     * Риэлтор
     * Администратор

### Планируется:  
  - Административная часть
  - Возможность генерировать договор купли-продажи и отправление по email
  - Подтверждение регистрации по email

### Лицензия
* **New BSD License**
