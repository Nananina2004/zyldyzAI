FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --legacy-peer-deps --fetch-retry-maxtimeout=120000 --fetch-retry-mintimeout=5000

COPY . .

CMD ["npm", "run", "dev"]

EXPOSE 3000
