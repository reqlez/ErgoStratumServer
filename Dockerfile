FROM node:18-alpine as build
RUN apk update && apk upgrade && apk add --no-cache curl
WORKDIR /app
COPY package.json .
COPY package-lock.json .
RUN npm install && npm run build    
COPY . .
CMD ["node", "start.js"]
EXPOSE 3032
