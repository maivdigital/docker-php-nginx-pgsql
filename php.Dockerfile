FROM php:8.1-fpm

WORKDIR /var/www/html

# if using alpine then apt-get will not work
# in this case apk update and apk add should work

# apt-get works with none alpine distro
RUN apt-get -y update

# Install useful tools
RUN apt-get install -y apt-utils nano wget libxml2-dev dialog vim unzip libpq-dev libcurl4-gnutls-dev nginx libonig-dev

RUN echo "\e[1;33mInstall important docker dependencies\e[0m"
RUN docker-php-ext-install \
    pdo \
    pdo_pgsql \
    pgsql \
    curl

# Install Postgre PDO
RUN docker-php-ext-enable pdo_pgsql

RUN docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql

# Copy files from current folder to container current folder (set in workdir).
# COPY --chown=www-data:www-data . .

# # Create laravel caching folders.
# RUN mkdir -p /var/www/storage/framework
# RUN mkdir -p /var/www/storage/framework/cache
# RUN mkdir -p /var/www/storage/framework/testing
# RUN mkdir -p /var/www/storage/framework/sessions
# RUN mkdir -p /var/www/storage/framework/views

# # Fix files ownership.
# RUN chown -R www-data /var/www/storage
# RUN chown -R www-data /var/www/storage/framework
# RUN chown -R www-data /var/www/storage/framework/sessions

# # Set correct permission.
# RUN chmod -R 755 /var/www/storage
# RUN chmod -R 755 /var/www/storage/logs
# RUN chmod -R 755 /var/www/storage/framework
# RUN chmod -R 755 /var/www/storage/framework/sessions
# RUN chmod -R 755 /var/www/bootstrap

# # Adjust user permission & group
# RUN usermod --uid 1000 www-data
# RUN groupmod --gid 1001 www-data
