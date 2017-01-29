FROM php:7.0-apache
#COPY php.ini /usr/local/etc/php/
COPY src/ /var/www/html/
RUN apt-get update \
  && apt-get install -y libmcrypt-dev \
  && docker-php-ext-install pdo_mysql mysqli 
RUN chown -R www-data:www-data /var/www/html 
RUN chmod -R 755 /var/www/html 
EXPOSE 8888:80
