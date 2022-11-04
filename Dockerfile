FROM node:18-alpine as build
RUN apk update && apk upgrade && apk add python3 make g++ --no-cache curl
WORKDIR /app
COPY package.json .
COPY package-lock.json .
RUN npm install
COPY . .
CMD ["node", "start.js"]
EXPOSE 3032
