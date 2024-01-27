# Use an official Ubuntu base image
FROM ubuntu:latest

# Set the working directory in the container
WORKDIR /app

# Copy the application code to the working directory
COPY . .

# Define the command to run the application
CMD ["echo", "Hello, this is my simple Dockerized application!"]
