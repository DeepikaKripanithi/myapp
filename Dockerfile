# Use Node.js base image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy package.json first (if you had one), but for now just server.js
COPY server.js .

# Install express (since we don’t have package.json)
RUN npm install express

# Expose port
EXPOSE 3000

# Run the app
CMD ["node", "server.js"]
