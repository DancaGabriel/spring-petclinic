FROM --platform=linux/arm64 openjdk:17
WORKDIR /app
ARG JAR_FILE=target/spring-petclinic-*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]