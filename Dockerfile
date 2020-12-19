FROM node:12.16.1
WORKDIR /usr/src/app
COPY ["app/package.json", "app/yarn.lock", "./"]
RUN yarn install
ENTRYPOINT [ "yarn", "start" ]