FROM ubuntu:22.04
WORKDIR /app
RUN apt-get update -y
RUN apt-get -y java apache2 
COPY v-profile ./
RUN mv v-profile index.html
RUN mv index.html /var/www/html/
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
