FROM maven:3-eclipse-temurin-17-alpine

COPY pom.xml .

RUN mkdir -p /root/.m2 && \
    mkdir /root/.m2/repository

RUN echo '<settings>' > /root/.m2/settings.xml && \
    echo '' >> /root/.m2/settings.xml && \
    echo '</settings>' >> /root/.m2/settings.xml \

RUN mvn clean install

COPY target/Hi-1.0-SNAPSHOT.jar .

CMD ["java", "-jar", "Hi-1.0-SNAPSHOT.jar"]
