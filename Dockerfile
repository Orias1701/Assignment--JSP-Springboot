# Stage 1: build WAR
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: deploy vào Tomcat
FROM tomcat:10.1-jdk17
WORKDIR /usr/local/tomcat
RUN rm -rf webapps/*
RUN sed -i 's/port="8005"/port="-1"/' conf/server.xml
COPY --from=build /app/target/*.war webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
