FROM openjdk:11-jdk-slim

#RUN "mkdir  /app
WORKDIR  ./app

COPY ./target/spring-boot-docker-complete-0.0.1-SNAPSHOT.jar    ./app/app.jar
EXPOSE 8080/tcp

CMD ["java","-jar","./app/app.jar"]
