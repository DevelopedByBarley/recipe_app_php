FROM php:7-apache
RUN cp /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/html
COPY .htaccess .htaccess
RUN chmod 775 .htaccess