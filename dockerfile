# Use the official Tomcat image as the base image
FROM tomcat:latest

# Set the working directory
WORKDIR /usr/local/tomcat/webapps

# Copy your WAR file into the webapps directory
# Replace 'your-app.war' with the name of your WAR file
COPY ABCtechnologies-1.0.war ./ 

# Expose the Tomcat port
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]

