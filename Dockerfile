FROM openjdk:8-jdk-alpine
WORKDIR /usr/app
CMD ["java", "-jar", "/my-app-1.0-SNAPSHOT.jar"]
COPY target/my-app-1.0-SNAPSHOT.jar /