# Use Java 17 + Maven
FROM maven:3.9.6-eclipse-temurin-17 AS build

# Set working directory
WORKDIR /app

# Copy project
COPY . .

# Build project
RUN mvn clean package -DskipTests


# Runtime image
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

# Copy jar from build stage
COPY --from=build /app/target/*.jar app.jar

# Expose port
EXPOSE 8080

# Run app
CMD ["java", "-jar", "app.jar"]
