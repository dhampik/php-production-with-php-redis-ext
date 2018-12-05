FROM php:7.2-fpm

# Use the default production configuration
RUN cp "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Install redis-4.2.0 PECL extension
RUN pecl install redis-4.2.0 && rm -rf /tmp/pecl && docker-php-ext-enable redis