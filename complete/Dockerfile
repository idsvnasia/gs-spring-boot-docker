FROM openjdk:11-jdk-slim

WORKDIR  /app

COPY mvnw   ./mvnw.sh

RUN chmod  +x  ./mvnw.sh

RUN ./mvnw.sh  package

COPY target/*.jar    app/app.jar 
EXPOSE 8080/tcp

CMD ["java","-jar","app/app.jar"]
