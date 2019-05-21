FROM node

COPY . /app
WORKDIR /app
RUN yarn install --production

EXPOSE 80