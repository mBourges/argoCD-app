FROM node:hydrogen-alpine3.15

WORKDIR /usr/src/app

COPY package.json ./
COPY yarn.lock ./
COPY index.js ./

RUN yarn install --production

EXPOSE 3000

CMD ["node", "index.js"]
