FROM node:18-alpine

WORKDIR /usr/src/app

WORKDIR /tmp
USER node
COPY --chown=node:node package.json /tmp
RUN npm install

COPY --chown=node:node . /tmp

EXPOSE 3000
CMD [ "npm", "start" ]
