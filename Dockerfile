FROM node:10

# Create app dir
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install

COPY server.js /usr/src/app/
COPY api/status.json /usr/src/app/

EXPOSE 80

CMD [ "node", "server.js" ]
