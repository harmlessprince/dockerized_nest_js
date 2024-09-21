# Use the official Node.js image as the base image
FROM node:18-alpine

RUN echo ${APP_ENV}

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port on which the app will run
#EXPOSE ${PORT}
RUN npm run build
