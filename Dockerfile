# ========================
 
# Stage 1: Build with Maven
 
# ========================
 
FROM maven:3.6.3-jdk-8 AS build
 
# Set the working directory inside the container
 
WORKDIR /app
 
# Copy the pom.xml and download dependencies (cached in Docker layer)
 
COPY pom.xml .
#RUN mvn dependency:go-offline -B
 
# Copy the source code
 
COPY src ./src
 
# Package the application (WAR will be in /app/target)
 
RUN mvn clean package -DskipTests
 
# ===========================
 
# Stage 2: Run with OpenJDK 8
 
# ===========================
 
FROM openjdk:8-jdk-alpine
 
# Add a volume pointing to /tmp
 
VOLUME /tmp
 
# Copy the WAR file from the build stage
 
COPY --from=build /app/target/spring-boot-rest-example-0.5.0.war app.war
 
# Expose Spring Boot default port
 
EXPOSE 8091
 
# Run the application
 
ENTRYPOINT ["java","-jar","/app.war"]
