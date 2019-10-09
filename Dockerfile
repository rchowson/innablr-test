FROM node:10

# Create app dir
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

COPY ...

EXPOSE 8080

CMD [ "node", "server.js" ]