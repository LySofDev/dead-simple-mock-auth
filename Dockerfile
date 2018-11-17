FROM node:8.12.0-alpine
RUN apk update && apk upgrade
RUN mkdir /app
COPY package*.json /app/
WORKDIR /app
RUN npm i
COPY . /app/
