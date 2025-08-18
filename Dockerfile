FROM tomcat:10.1-jdk17

# Xóa app mặc định
RUN rm -rf /usr/local/tomcat/webapps/*

# Disable shutdown port để tránh warning
RUN sed -i 's/port="8005"/port="-1"/' /usr/local/tomcat/conf/server.xml

# Copy WAR ra ROOT.war
COPY target/test.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
