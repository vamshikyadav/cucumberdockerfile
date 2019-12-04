FROM node:6.11.2

ENV APP_DIR=/app

COPY package.json $APP_DIR/package.json

RUN cd $APP_DIR \
    && npm install \
    && npm install -g grunt

COPY . $APP_DIR

WORKDIR $APP_DIR
