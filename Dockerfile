# Stage 1: Build React app
FROM node:alpine AS builder

WORKDIR /app

COPY package*.json ./

# ADD DEPENDENCIES AS YOU GO

RUN npm install

COPY . .

RUN npm run build

# Stage 2: Install Flask and dependencies
FROM python:3.11-slim

WORKDIR /app

# Copy React build artifacts
COPY --from=builder /app/build /app/build

# Install Flask and other dependencies
RUN pip install flask
RUN pip install SQLAlchemy

EXPOSE 3000

# Stage 3: Combine React and Flask app
COPY . .

CMD ["flask", "run"]