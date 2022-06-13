FROM maven:3.6.3-openjdk-11-slim AS build
WORKDIR /JJB
COPY src /home/dang/JJB/src
COPY pom.xml /home/dang/JJB
RUN mvn -f /home/dang/JJB/pom.xml install clean package

FROM tomcat
COPY --from=build /home/dang/JJB/target/fpt-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/
EXPOSE 8081
CMD ["catalina.sh", "run"]
<<<<<<< HEAD

=======
>>>>>>> 8934656de5af96a05ddb3bbe65e66972d612e3f6
