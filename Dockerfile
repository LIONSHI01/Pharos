FROM node:18-alpine3.19

# Set the working directory in the container
WORKDIR /usr/src/app

RUN apk add --no-cache yarn
COPY package*.json ./

RUN npm install
RUN npm install web3@1.8.0 axios chalk@2 fs https-proxy-agent

# Copy package.json and package-lock.json to the working directory

COPY . .
