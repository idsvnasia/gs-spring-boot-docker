#!/bin/bash
# Maven build & Docker build for java spring boot

BUILD_NUMBER=$((BULD_NUMBER+1))

TAG_NAME=$BUILD_NUMBER

./gradlew bootBuildImage --imageName=springio/gs-spring-boot-docker:$TAG_NAME


./mvnw spring-boot:build-image -Dspring-boot.build-image.imageName=springio/gs-spring-boot-docker:$TAG_NAME



docker run -e "SPRING_PROFILES_ACTIVE=dev" -p 8080:8080 -t springio/gs-spring-boot-docker:$TAG_NAME



docker run -p 8080:8080 -t springio/gs-spring-boot-docker:${TAG_NAME}


curl http://localhost:8080/
