FROM ubuntu
MAINTAINER AJAYREDDY549

RUN apt-get update && apt-get install nginx git systemctl -y
RUN git clone https://github.com/ajayreddii/v-profile.git &&  mv v-profile/* /var/www/html

CMD ["nginx"]
EXPOSE 80
