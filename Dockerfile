FROM ajayreddy549/tomcatimg:latest
MAINTAINER AJAYREDDY549
COPY target/vprofile-v2*.war  /usr/local/tomcat/webapps/vprofile-v2.war
CMD [“catalina.sh”, “run”]
