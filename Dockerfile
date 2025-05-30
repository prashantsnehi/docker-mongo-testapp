# Use the official Node.js image as the base image
FROM node:18.20.7

# Set the working directory inside the container
WORKDIR /testapp

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 5050

# Define the command to run the application
CMD ["node", "server.js"]