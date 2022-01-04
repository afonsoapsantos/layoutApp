FROM php:8.0.14-fpm-alpine3.15
RUN docker-php-ext-install pdo_mysql 