# Use a base image with Java runtime (Java 17)
FROM eclipse-temurin:17

# Set the working directory in the container
WORKDIR /app

# Copy the Spring Boot application JAR file into the container
COPY target/employee-system-api-0.0.1-SNAPSHOT.jar /app/employee-system-api.jar

# Expose the port that your Spring Boot application listens on (default is 8080)
EXPOSE 8080

# Command to run your Spring Boot application when the container starts
CMD ["java", "-jar", "employee-system-api.jar"]
