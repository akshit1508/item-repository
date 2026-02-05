# Build stage (Java 21 + Maven)
FROM maven:3.9.6-eclipse-temurin-21 AS build

WORKDIR /app

COPY . .

RUN mvn clean package -DskipTests


# Runtime stage (Java 21)
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080

# IMPORTANT: Use Render PORT
CMD ["sh", "-c", "java -jar app.jar --server.port=$PORT"]
