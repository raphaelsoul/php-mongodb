FROM php:7.2-fpm

RUN apt-get update \
    && apt-get install -y git libcurl4-openssl-dev pkg-config libssl-dev --no-install-recommends \
    && rm -r /var/lib/apt/lists/* \
    && pecl install mongodb && echo "extension=mongodb.so"|tee /usr/local/etc/php/conf.d/ext-mongodb.ini
