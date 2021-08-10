FROM openjdk:11-jdk-slim

RUN "mkdir  /app
WORKDIR  /app

COPY ./target/*.jar   app/app.jar
EXPOSE 8080/tcp

CMD ["java","-jar","app/app.jar"]
