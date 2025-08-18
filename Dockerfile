FROM tomcat:10.1-jdk17
# Xóa app mặc định
RUN rm -rf /usr/local/tomcat/webapps/*
# Copy WAR vào Tomcat
COPY target/test.war /usr/local/tomcat/webapps/ROOT.war
