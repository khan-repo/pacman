# Use Node.js 11 (older version)
FROM node:11
 
# Set the working directory
WORKDIR /app
 
# Copy package files first to optimize Docker caching
COPY package.json package-lock.json* ./
 
# Install dependencies
RUN npm install
 
# Copy all project files
COPY . .
 
# Set environment variable
ENV PORT=8080
 
# Expose the application's port
EXPOSE 8080
 
# Start the application
CMD ["npm", "start"]
