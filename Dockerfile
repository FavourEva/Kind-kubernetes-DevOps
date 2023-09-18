FROM node:20-alpine3.17 AS build_env

ENV APP_HOME /opt/app
RUN mkdir ${APP_HOME}
WORKDIR ${APP_HOME}

COPY ["package*.json", "${APP_HOME}"]

RUN npm install

COPY [".", "${APP_HOME}"]

FROM build_env AS base

WORKDIR ${APP_HOME}

EXPOSE 3000

CMD ["node", "express.js"]