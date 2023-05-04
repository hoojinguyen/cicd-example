FROM node:16.19.0-slim

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --production
COPY . .

EXPOSE 8080
CMD [ "npm", "run" ,"start:prod" ]