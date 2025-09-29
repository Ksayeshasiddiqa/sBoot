FROM openjdk:8-jdk-alpine
 
# Add a volume pointing to /tmp
VOLUME /tmp
 
# Copy the WAR file from the build stage
 
COPY --from=build /app/target/spring-boot-rest-example-0.5.0.war app.war
 
# Expose Spring Boot default port
 
EXPOSE 8091
 
# Run the application
 
ENTRYPOINT ["java","-jar","/app.war"]
