# Use an official Python runtime as a parent image
FROM frolvlad/alpine-oraclejdk8:slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
# RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
#EXPOSE 8087

# Define environment variable
#ENV NAME World

# Run app.py when the container launches
#ENTRYPOINT ["gradle","bootrun"]

VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app/asmnt-sb/build/libs/asmnt-sb-1.0.jar"]