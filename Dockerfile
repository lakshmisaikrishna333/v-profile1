FROM ubuntu
MAINTAINER AJAYREDDY549

RUN apt-get update && apt-get install nginx git systemctl -y
COPY .  index.html
RUN cp -r * /var/www/index.html
RUN systemctl eanable nginx
CMD ["nginx"]
EXPOSE 8080
