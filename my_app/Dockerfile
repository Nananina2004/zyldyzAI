FROM node:16.9.0-alpine AS build

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install -g npm@10.6.0
RUN npm install --legacy-peer-deps
COPY . .

RUN npm run build

