FROM node:alpine

WORKDIR /src/app

EXPOSE 3000

COPY package.json package-lock.json ./

RUN npm install

COPY ./src/app ./src/app

CMD ["npm","start"]