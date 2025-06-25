# Use official Tomcat base image
FROM tomcat:9.0-jdk17

# Remove the default web apps to keep the image clean
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the webapps directory
COPY target/myweb.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat (CMD already defined in base image)
