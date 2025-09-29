# Base Tomcat image
FROM tomcat:9.0-jdk11-openjdk

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file from target
COPY target/spring-boot-rest-example-0.5.0.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8090
EXPOSE 8090

# Set Tomcat to run
CMD ["catalina.sh", "run"]
