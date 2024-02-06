# Use the official Node.js LTS image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire project directory into the container
COPY . .

# Build the Angular app for production
RUN npm run build

# Expose port 80 to the outside world
EXPOSE 80

# Command to run the Angular app using a simple HTTP server
CMD ["npm", "run", "start"]
