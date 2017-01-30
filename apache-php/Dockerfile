FROM php:7.0-apache
COPY src/ /var/www/html/
RUN apt-get update && \
apt-get install -y php5 libapache2-mod-php5  \
php5-fpm php5-cli php5-mysqlnd  \
php5-apcu php5-intl php5-mcrypt php5-json  mcrypt && \
rm -rf /var/lib/apt/lists/* && \
RUN chown -R www-data:www-data /var/www/html 
RUN chmod -R 755 /var/www/html 
