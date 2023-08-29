## Docker - PHP - NGINX - POSTGRESQL - PGADMIN


- basic setup for Dockerized containers
- comments left in some files that have resolved issues


### Commands to start this project

- run ```docker-compose build --no-cache``` - this will build all containers and avoid using cache
- run ```docker-compose up -d``` - this will start containers detach mode
- run ```docker-compose down``` - this will stop containers
- run ```docker logs [container name]``` - this will display basic log for specified container
- if using git bash shell into container
    - ```winpty docker exec -it [container name] //bin//sh```


###  Info taken from these repos

- [Laravel complete Dockerization](https://github.com/emad-zaamout/Laravel-Complete-Dockerization/tree/main)
- [Laravel Docker Nginx PHP FPM Opcache](https://github.com/emad-zaamout/laravel-docker-nginx-php-fpm-opcache/tree/main)
- [Docker Laravel with PostGreSQL & PgAdmin](https://github.com/hanieas/Docker-Laravel)