FROM ajayreddy549/tomcatimg:latest
MAINTAINER AJAYREDDY549
COPY target/vprofile-v2*.war  /usr/local/tomcat/webapps/vprofile-v2.war
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
