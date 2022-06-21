FROM php:5.6-apache
RUN apt-get update && \
    apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libzip-dev && \
    docker-php-ext-install mysqli && \
    docker-php-ext-install mbstring && \
    docker-php-ext-install zip && \
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/  &&  \
    docker-php-ext-install gd
RUN a2enmod rewrite
RUN service apache2 restart

