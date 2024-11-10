FROM node:14
# Set the working directory inside the container
WORKDIR /app
# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./
# Install the dependencies
RUN npm install express
# Copy the rest of the application code to the container
COPY . .
# Expose the port that the application will run on
EXPOSE 3000
# Command to run the application
CMD ["node", "server.js"]
