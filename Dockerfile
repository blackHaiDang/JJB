FROM ubuntu
WORKDIR /JJB
ARG JAR_FILE=target/*.jar
COPY ./target/classes/com/haidang/fpt/ExamApplication.class /opt/tomcat/webapps
EXPOSE 8081	
CMD chmod +x /opt/tomcat/bin/catalina.sh

