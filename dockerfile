FROM php:8.1-apache

# Copy your app files
COPY . /var/www/html/

# Enable Apache mod_rewrite (for friendly URLs if needed)
RUN a2enmod rewrite

# Install MySQL drivers (if you're using MySQL)
RUN docker-php-ext-install pdo pdo_mysql mysqli

# Set correct permissions
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
