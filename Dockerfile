# Use an official Ubuntu base image
FROM ubuntu:latest

# Install Node.js and npm
RUN apt-get update && \
    apt-get install -y nodejs npm

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application code to the working directory
COPY . .

# Expose the port on which the application will run
EXPOSE 3000

# Define the command to run the application
CMD ["node", "app.js"]
