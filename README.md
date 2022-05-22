## ДЗ №12

1. Установлено все необходимое окружение
2. Поработал с docker локально
3. Создал docker-host в yandex cloud с помощью docker-machine
4. Собрал образ из Dockerfile
5. Поработал с docker на docker-host
6. Загрузил образ на docker hub
7. Ещё поработал на docker-host используя образы из docker hub

Задания со *

1. Инстансы описаны в виде кода terraform, их количество задается переменной
2. Написаны плейбуки для установки докера и запуска приложения
3. Подготовлен конфиг для создания шаблона ОС с устаноаленным докером


## ДЗ №13

1. Скачан исходный код приложения
2. Для каждого компонента создан Dockerfile
3. Собраны 3 контейнера с компонентами
4. Создана сеть для приложения
5. Базовый образ в ui был заменент на ubuntu:16.04 и пересобран. Разница в размере 300 МБ в лучшую сторону
6. Создан раздел reddit_db для базы данных, чтобы при перезапуске контейнеров файлы БД сохранялись на хостовой машине

Задания со *

1. Конейнеры запущены с другими сетевыми алиасами и указаны переменные через флаг '-e':

```
sudo docker run -d --network=reddit --network-alias=post_db_1 --network-alias=comment_db_1 -v reddit_db:/data/db mongo:latest
sudo docker run -d --network=reddit --network-alias=post_1 -e POST_DATABASE_HOST=post_db_1 rulimanskiy/post:1.0
sudo docker run -d --network=reddit --network-alias=comment_1 -e COMMENT_DATABASE_HOST=comment_db_1 rulimanskiy/comment:1.0
sudo docker run -d --network=reddit -p 9292:9292 -e POST_SERVICE_HOST=post_1 -e COMMENT_SERVICE_HOST=comment_1 rulimanskiy/ui:3.0
```

2. ui был пересобран ещё раз с использованием базового образа alpine:3.14.5. Разница в размере 500 МБ в лучшую сторону от версии 1.0 и 200 МБ от версии 2.0
