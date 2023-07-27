FROM ajayreddy549/tomcat:amazon
MAINTAINER AJAYREDDY549
COPY target/vprofile-v2*.war  /usr/local/tomcat/webapps/
