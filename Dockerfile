# Use official Node.js Alpine image for a lightweight container
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first to leverage Docker cache
COPY package*.json ./

# Install production dependencies
RUN npm install --production

# Copy the rest of the application code (server.js and public folder)
COPY . .

# Expose the port the app runs on (matching our server.js port)
EXPOSE 3000

# Command to run the application
CMD ["node", "server.js"]
