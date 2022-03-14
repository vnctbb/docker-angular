FROM node:12-alpine

WORKDIR /usr/app

EXPOSE 4200

COPY package.json .

RUN npm install --quiet

COPY . .

CMD ["npm", "run", "start"]