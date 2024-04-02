FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y && apt-get install -y apache2 && apt-get install -y wget
RUN apt-get install -y nano

LABEL org.opencontainers.image.authors="Jakub Kopacki"

COPY index.html /var/www/html

COPY apache_config_8080.conf /etc/apache2/sites-enabled/000-default.conf

COPY ports.conf /etc/apache2/ports.conf

EXPOSE 8080

CMD ["apache2ctl", "-D", "FOREGROUND" ]