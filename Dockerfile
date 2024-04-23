# Use a lightweight Node.js base image
FROM node:20-slim AS builder

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock)
COPY package*.json ./

# Install dependencies
RUN npm ci

FROM node:20-slim AS runner

COPY --from=builder /app /app

EXPOSE 3000

CMD [ "npm", "start" ]
