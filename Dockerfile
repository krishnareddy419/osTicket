FROM php:8.0-apache
RUN apt-get update && apt-get install -y wget unzip
RUN docker-php-ext-install mysqli
WORKDIR /var/www/html
RUN wget https://github.com/osTicket/osTicket/releases/download/v1.17.3/osTicket-v1.17.3.zip &&\
        unzip osTicket-v1.17.3.zip &&\
        rm osTicket-v1.17.3.zip
RUN chown -R www-data:www-data /var/www/html
EXPOSE 80
