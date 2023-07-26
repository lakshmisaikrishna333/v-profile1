FROM ubuntu:22.04
WORKDIR /app
RUN apt-get update -y
RUN apt-get -y java nginx
COPY v-profile ./
RUN mv v-profile index.html
RUN mv index.html /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/nginx", "-c", "daemon off;"]
