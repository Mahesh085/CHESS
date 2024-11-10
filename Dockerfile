# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install the dependencies
RUN npm install express

# Copy the rest of the application code to the container
COPY . .

# Expose the port that the application will run on
EXPOSE 8888

# Command to run the application
CMD ["node", "server.js"]
