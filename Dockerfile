# Use the official Node.js image as the base image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the app's dependencies
RUN npm install

# Copy the rest of the app's source code to the container
COPY . .

# Build the app
RUN npm run build

# Set environment variables
ENV NODE_ENV production
ENV PORT 3000

# Expose port 3000
EXPOSE 3000

# Start the app
CMD [ "npm", "start" ]
