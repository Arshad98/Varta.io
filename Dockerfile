# Use the official Node.js image as a base
FROM node:14

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the port (if needed)
EXPOSE 3000

# Command to run your app
CMD ["node", "index.js"]
