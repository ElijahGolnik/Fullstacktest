#fullstackapp/backend/Dockerfile
FROM node:18
WORKDIR /frontend/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 5000
CMD ["node", "server.js"]