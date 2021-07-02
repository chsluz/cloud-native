FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . /app

ENV PORT 3001

EXPOSE 3001

CMD [ "npm", "run", "dev" ]