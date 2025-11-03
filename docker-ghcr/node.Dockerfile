FROM node:20-buster-slim

RUN mkdir /app
COPY ./package* /app

WORKDIR /app
RUN npm install

COPY . /app

ARG REACT_APP_SWAMP_API
ENV REACT_APP_SWAMP_API=$REACT_APP_SWAMP_API

# install:
# docker exec -it swamp-subscriptions npm install --save @sentry/react
# update:
# docker exec -it swamp-subscriptions npm update --save react-bootstrap
# docker exec -it swamp-subscriptions npm outdated
# sync files:
# docker cp swamp-subscriptions:/swamp-subscriptions/package.json       swamp-subscriptions/package.json
# docker cp swamp-subscriptions:/swamp-subscriptions/package-lock.json  swamp-subscriptions/package-lock.json
