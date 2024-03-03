# Use the official OpenJDK base image with Java 8
FROM openjdk:8-jdk
#FROM adoptopenjdk/openjdk8:alpine
bind-address = 192.168.123.456

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged JAR file into the container
COPY SpringBootDemo-SaveData-0.0.1-SNAPSHOT.jar /app/app.jar

# Expose the port that your application will run on
EXPOSE 8080

# Specify the command to run your application
CMD ["java", "-jar", "app.jar"]


# Set environment variables for your application
ENV MYSQL_HOST=localhost \
    MYSQL_PORT=3306 \
    MYSQL_USER=root \
    MYSQL_PASSWORD=Root@123