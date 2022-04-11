FROM node:17-alpine

RUN mkdir -p /home/app

COPY ./* /home/app/

WORKDIR /home/app

RUN npm install

CMD ["node", "index.js"]