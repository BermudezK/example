FROM hitalos/php:latest
COPY . /var/www
WORKDIR /var/www

CMD apt-get install php-mongodb
CMD rm .env
CMD php ./artisan serve --port=80 --host=0.0.0.0
EXPOSE 80
HEALTHCHECK --interval=1m CMD curl -f http://localhost/ || exit 1
