FROM php:5.6.40-apache

RUN apt-get update && apt-get install -y \
    freetds-bin \
    freetds-dev \
    freetds-common \
    libct4 \
    libsybdb5

RUN ln -s /usr/lib/x86_64-linux-gnu/libsybdb.a /usr/lib/

RUN docker-php-ext-install mssql

RUN a2enmod rewrite ssl