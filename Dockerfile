FROM maven:latest AS build
WORKDIR /usr/app
COPY . /usr/app
RUN mvn clean package

FROM openjdk:8-jdk-alpine
WORKDIR /
COPY --from=build /usr/app/target/my-app-1.0-SNAPSHOT.jar /my-app-1.0-SNAPSHOT.jar
CMD ["java", "-jar", "/my-app-1.0-SNAPSHOT.jar"]