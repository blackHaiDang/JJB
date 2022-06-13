<<<<<<< HEAD
FROM maven:3.6.3-openjdk-11-slim AS build
WORKDIR /JJB
COPY src /home/dang/JJB/src
COPY pom.xml /home/dang/JJB
RUN mvn -f /home/dang/JJB/pom.xml install clean package

FROM tomcat
COPY --from=build /home/dang/JJB/target/fpt-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 8081
CMD ["catalina.sh", "run"]
=======
FROM ubuntu
WORKDIR /JJB
ARG JAR_FILE=target/*.jar
COPY ./target/classes/com/haidang/fpt/ExamApplication.class /opt/tomcat/webapps
EXPOSE 8081	
CMD chmod +x /opt/tomcat/bin/catalina.sh

>>>>>>> 7fb99375fe9c14367be358a41066645a0070f018
