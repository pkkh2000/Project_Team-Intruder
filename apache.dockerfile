FROM ubuntu



RUN apt update -y
RUN apt install apache2 -y && apt clean


WORKDIR /var/www/html/

ADD index.html /var/www/html/index.html

EXPOSE 80

ENTRYPOINT apache2ctl -D FOREGROUND
