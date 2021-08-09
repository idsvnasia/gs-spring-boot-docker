#!/bin/bash


BUILD_NUMBER=$((BULD_NUMBER+1))

TAG_NAME=v$BUILD_NUMBER


#./mvnw spring-boot:build-image -Dspring-boot.build-image.imageName=springio/pulse-lead-agent:$TAG_NAME

./mvnw package

java -jar   app.jar

ls -la target

docker build -t springio/gs-spring-boot-docker:$TAG_NAME  .

docker run -e "SPRING_PROFILES_ACTIVE=dev" -p 8080:8080 -t springio/gs-spring-boot-docker:$TAG_NAME


docker run -p 8074:8074 -t springio/gs-spring-boot-docker:${TAG_NAME}
