#!/bin/bash
# Maven build & Docker build for java spring boot



./mvnw package 


JAR_FILE=target/*.jar


cp $JAR_FILE  app.jar


java -jar   /java -jar   


curl http://localhost:8080/



docker build -t springio/gs-spring-boot-docker:v1   .


./gradlew bootBuildImage --imageName=springio/gs-spring-boot-docker:v2


./mvnw spring-boot:build-image -Dspring-boot.build-image.imageName=springio/gs-spring-boot-docker:v3



docker run -e "SPRING_PROFILES_ACTIVE=dev" -p 8080:8080 -t springio/gs-spring-boot-docker:v4



docker run -p 8080:8080 -t springio/gs-spring-boot-docker:v4
