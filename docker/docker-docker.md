docker run -it -p 8888:80 -v $(pwd):/var/www/html ubuntu:16.04 bash
docker run -it --rm -p 8888:80 -v $(pwd):/var/www/html ubuntu:16.04 bash


ENTRYPOINT => The thing that will run FIRST every time any container is run based on
the image, regardless of what CMD is used which will be passed as param to the
ENTRYPOINT.

### Linking stuff together

nginx (80:80) -> php-fpm (--linked ) -> redis / mysql 

### MYSQL

Import db from a file:
mysql -u username -p database_name < file.sql

Backup:
shell> mysqldump db_name > backup-file.sql

docker run -d --name mysql \
-e MYSQL_ROOT_PASSWORD=root \
-e MYSQL_USERNAME=app-user \
-e MYSQL_DATABASE=my-app \
-e MYSQL_PASSWORD=app-user \
--network sb-net \
mysql:5.7

### REDIS

docker run -d --name redis redis:alpine

### PHP

with linking this is what is what [containername:alias_in_hosts]

docker run -d --name php --link redis:redis --link mysql:mysql \
-v $(pwd)/application:/var/www/html \
ajando/php

## NGINX
docker run -d -p 8080:80 --name nginx --link php:php \
-v $(pwd)/application:/var/www/html \
ajando/nginx

## Docker network - awesomness
docker network -h


Why you can't access /var/lib/docker/volumes/volume-name
Becouse docker run in small virualized layer in macos, on the actuall server you
would be able to access it.

docker run --rm -it -v /:/vm-root alpine:latest \
ls -l /vm-root/var/lib/docker

using docker compose with variables (you need to export vars)
docker-compose -f -d docker-compose.var.yml up

## Logs

Docker reads logs from stdout/stderr some of the aplication doesent write to
them, so you need to create sim links

for example nginx and php

```
    && ln -sf /dev/stdout /var/log/nginx/access.log \
    && ln -sf /dev/stderr /var/log/nginx/error.log
```

## Debug

To debug your config file
```
docker-compose config

```

