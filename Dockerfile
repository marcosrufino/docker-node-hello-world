FROM node:18-alpine
WORKDIR /tmp
USER node
RUN npm install
COPY --chown=node:node . .
RUN yarn install && yarn cache clean
EXPOSE 3000
CMD [ "yarn", "start" ]