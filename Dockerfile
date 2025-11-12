# Use a small Node base
FROM node:20-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package files and install dependencies first (cache-friendly)
COPY package.json package-lock.json* ./
RUN npm ci --silent || npm install --silent

# Copy app source
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD [ "node", "app.js" ]
