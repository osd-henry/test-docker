FROM node:10.15.3-alpine

COPY . /app
WORKDIR /app
RUN yarn install --production

EXPOSE 80