FROM openjdk:16-alpine3.13
VOLUME /tmp
COPY target/test-project-0.0.1-SNAPSHOT.jar TestProject-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "TestProject-0.0.1-SNAPSHOT.jar"]
