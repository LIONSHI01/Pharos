FROM node:18-alpine3.19

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if exists)
COPY package*.json ./

# Install dependencies
RUN npm install

# Install specific packages (excluding fs, which is built-in)
RUN npm install web3@1.8.0 axios chalk@2 https-proxy-agent dotenv

# Copy the rest of the application code
COPY . .

# Command to run the application (adjust as needed)
CMD ["node", "index.js"]