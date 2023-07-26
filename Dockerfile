FROM ubuntu
MAINTAINER AJAYREDDY549

RUN apt-get update && apt-get install nginx git systemctl -y
COPY . .
RUN cp -r * /var/www/html/
RUN systemctl eanable nginx
CMD ["nginx"]
EXPOSE 8080
