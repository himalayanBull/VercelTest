# Use a lightweight JDK base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file to the container
COPY build/libs/*.jar app.jar

# Expose the port your Ktor application runs on (default is 8080)
EXPOSE 8080

# Start the application
CMD ["java", "-jar", "app.jar"]
