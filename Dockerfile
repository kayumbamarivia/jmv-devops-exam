# Use official Node.js 20 Alpine image
FROM node:20-alpine

# Set working directory
WORKDIR /usr/app

# Copy only package.json first to optimize Docker layer caching
COPY package.json .

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port your app listens on 
EXPOSE 3000

# Start the app
CMD ["npm", "run", "start"]
