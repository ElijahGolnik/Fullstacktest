# fullstackapp/frontend/Dockerfile
FROM node:18 AS build
WORKDIR /src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:alpine
COPY --from=build /src/app /usr/share/nginx/html
EXPOSE 80
