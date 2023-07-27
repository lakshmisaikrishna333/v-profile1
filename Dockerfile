FROM ajayreddy549/tomcat:amazon
MAINTAINER AJAYREDDY549
COPY target/vprofile-v2*.war  /usr/local/tomcat/webapps/
CMD ["/usr/local/tomcat/bin/" "./startup"]
