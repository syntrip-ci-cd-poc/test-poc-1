FROM php:7.1.8-apache

LABEL Author="Synetic"

COPY . /srv/app/public
COPY build-env/vhost.conf /etc/apache2/sites-available/000-default.conf

RUN chown -R www-data:www-data /srv/app \
&& a2enmod rewrite