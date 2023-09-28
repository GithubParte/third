FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY target/Hi-1.0-SNAPSHOT.jar /app/

CMD ["java", "-jar", "Hi-1.0-SNAPSHOT.jar"]
