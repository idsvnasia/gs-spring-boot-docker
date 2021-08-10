FROM openjdk:11-jdk-slim

RUN mkdir  /app
WORKDIR  /app

RUN ./mvnw  package

COPY target/*.jar    app/app.jar 
EXPOSE 8080/tcp

CMD ["java","-jar","app/app.jar"]
