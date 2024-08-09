FROM eclipse-temurin:21.0.3_9-jdk-jammy

# Local testing as Heroku ignores it
EXPOSE 8080:8080

RUN mkdir /app
COPY ./build/libs/dev-huddle-all.jar /app/dev-huddle.jar

ENTRYPOINT ["java", "-jar", "/app/dev-huddle.jar"]