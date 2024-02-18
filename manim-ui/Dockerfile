# Use node:alpine base image for smaller size
FROM node:alpine AS builder

WORKDIR /app

VOLUME ["/app"]

COPY package*.json ./

# ADD DEPENDENCIES AS YOU GO
RUN npm install 

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
# # Switch to a smaller image for serving
# FROM nginx:alpine

# WORKDIR /usr/share/nginx/html

# # Copy the build output from the builder stage
# COPY --from=builder /app/build .

# # Expose port 80
# EXPOSE 80

# # Configure default server block
# CMD ["nginx", "-g", "daemon off;"]
