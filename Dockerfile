FROM php:8.2-apache

# Install system dependencies and Node.js 20 for Composer and Vite builds
RUN apt-get update && apt-get install -y \
    curl \
    zip \
    unzip \
    git \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libzip-dev \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

# Install required PHP extensions for Laravel and enable Apache mod_rewrite
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd zip \
    && a2enmod rewrite

# Get latest Composer binary
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Configure Apache DocumentRoot to point directly to Laravel's /public directory
ENV APACHE_DOCUMENT_ROOT /var/www/html/public

RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf \
    && sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# Set working directory and copy application source code
WORKDIR /var/www/html
COPY . /var/www/html

# Set strict write permissions on storage and cache folders for the web server user
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# Install production PHP dependencies and build Vite JavaScript/CSS bundles
RUN composer install --optimize-autoloader --no-dev
RUN npm install && npm run build
