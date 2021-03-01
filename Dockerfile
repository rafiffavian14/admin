FROM adisaputra10/bkn:php-7.3-nginx


WORKDIR /var/www/html


USER root
COPY . .
COPY composer*.json ./

COPY env .env
#RUN curl -sS https://getcomposer.org/installer -o composer-setup.php
#RUN composer install 

#COPY . .

#RUN mv .env.example .env
RUN ls

RUN ls /usr/local/docker/etc/nginx/sites-available

RUN mkdir -p /var/www/html/bootstrap/cache/ \ 
	&& chmod -R 775 /var/www/html/bootstrap/cache/ \
	&& mkdir -p /var/www/html/storage/app \
	/var/www/html/storage/logs \
	/var/www/html/storage/framework/sessions \
	/var/www/html/storage/framework/views \
	/var/www/html/storage/framework/cache \
	&& chmod -R 775 /var/www/html/storage/ \
	&& chown -R user /var/www/html

#RUN  sed -i 's|/var/www/html|/var/www/html/public|g' \
 #       '/usr/local/docker/etc/nginx/sites-available/default' \

RUN sed -i -e 's/\/var\/www\/html/\/var\/www\/html\/public/g' /usr/local/docker/etc/nginx/sites-available/default

#RUN composer install
#RUN ls -alh

#RUN chmod 775 -R vendor

#RUN  cp script/migration.conf /usr/local/docker/etc/supervisor/conf.d/03-laravel.conf && chmod -R 775 script

#RUN script/run.sh

User user


