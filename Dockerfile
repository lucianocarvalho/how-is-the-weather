# Build
FROM maven:3.6-openjdk-11-slim AS build

WORKDIR /build
COPY pom.xml .
RUN mvn dependency:go-offline

COPY src /build/src
RUN mvn package

# Release
FROM openjdk:11-jre
COPY --from=build /build/target/app.jar /app.jar

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]