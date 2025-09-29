# # Base Tomcat image
# FROM tomcat:9.0-jdk11-openjdk

# # Remove default webapps
# RUN rm -rf /usr/local/tomcat/webapps/*

# # Copy WAR file to Tomcat
# #COPY spring-boot-rest-example-0.5.0.war /usr/local/tomcat/webapps/ROOT.war
# COPY spring-boot-rest-example-0.5.0.war /usr/local/tomcat/webapps/ROOT.war


# # Expose port 8090
# EXPOSE 8090

# # Set Tomcat to run
# CMD ["catalina.sh", "run"]
# Use Tomcat base image
FROM tomcat:9.0-jdk11-openjdk

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR from build args
ARG WAR_FILE
COPY ${WAR_FILE} /usr/local/tomcat/webapps/ROOT.war

# Expose port 8090
EXPOSE 8090

# Start Tomcat
CMD ["catalina.sh", "run"]
