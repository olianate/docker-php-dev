FROM php:7.3-alpine

RUN apk update && apk add \
        freetype-dev \
        libjpeg-turbo-dev \
        libpng-dev
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd pdo_mysql mysqli

VOLUME /app
EXPOSE 8000
