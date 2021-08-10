FROM openjdk:18-jdk-slim

WORKDIR  /app

CMD ["./mvnw",  "package"]

COPY target/*.jar    app/app.jar
EXPOSE 8080/tcp

CMD ["java","-jar","app/app.jar"]
