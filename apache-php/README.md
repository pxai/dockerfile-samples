# PHP + apache
Using 

Just run:
```
$ docker build -t my-php-app .
$ docker run -d --name my-running-app my-php-app
```
# php.ini
Options
```
FROM php:7.0-apache
COPY config/php.ini /usr/local/etc/php/
COPY src/ /var/www/html/
```