FROM maven:3.6.1-jdk-8-alpine AS MAVEN_BUILD
WORKDIR /retobase-java-master
COPY ./ ./
RUN mvn clean package
FROM openjdk:8-jre-alpine3.9
COPY --from=MAVEN_BUILD /retobase-java-master/target/microservicios-backend-retoibm-1.0.0-SNAPSHOT.jar /demo.jar
CMD ["java", "-jar", "/demo.jar"]