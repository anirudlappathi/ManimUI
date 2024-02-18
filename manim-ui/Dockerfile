# Use node:alpine base image for smaller size
FROM node:alpine AS builder

WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Build the React app
RUN npm run build

# # Switch to a smaller image for serving
# FROM nginx:alpine

# WORKDIR /usr/share/nginx/html

# # Copy the build output from the builder stage
# COPY --from=builder /app/build .

# # Expose port 80
# EXPOSE 80

# # Configure default server block
# CMD ["nginx", "-g", "daemon off;"]