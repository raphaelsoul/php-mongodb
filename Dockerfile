FROM php:7.2-fpm

RUN pecl install mongodb && echo "extension=mongodb.so"|tee /usr/local/etc/php/conf.d/ext-mongodb.ini
