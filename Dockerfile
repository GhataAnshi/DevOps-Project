FROM node
WORKDIR . 
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 51005
CMD ["node","node_server.js"]
