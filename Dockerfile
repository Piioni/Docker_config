# Usa PHP 8.3 (requerido para Symfony 7.2)
FROM php:8.3-apache

WORKDIR /var/www/html

# Instala dependencias del sistema y extensiones de PHP
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libzip-dev \
    libpq-dev \
    libicu-dev \
    && docker-php-ext-install \
    pdo \
    pdo_mysql \
    mysqli \
    intl \
    zip \
    opcache

# Instala Xdebug (para desarrollo)
RUN pecl install xdebug && docker-php-ext-enable xdebug

# Habilita mod_rewrite de Apache
RUN a2enmod rewrite

# Copia configuraciones personalizadas
COPY docker/apache/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY docker/php/php.ini /usr/local/etc/php/conf.d/custom.ini

# Instala Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Permisos para directorios de Symfony
RUN chown -R www-data:www-data /var/www/html