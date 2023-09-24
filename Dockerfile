FROM gradle:7.6-jdk AS build

COPY application/src/main ./application/src/main
COPY application/build.gradle ./application

COPY support/src/main ./support/src/main
COPY support/build.gradle ./support

COPY build.gradle settings.gradle  ./

RUN gradle clean build

FROM openjdk:17.0.1-jdk-slim AS run

RUN adduser --system --group app-user

COPY --from=build --chown=app-userr:app-user /application/build/libs/app-*.jar app.jar

EXPOSE 8080
USER app-user

CMD ["java", "-jar", "app.jar"]
