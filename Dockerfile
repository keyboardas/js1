FROM node:14-buster-slim

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn install

COPY . .

RUN yarn run build || echo "No build step"

EXPOSE 3000

CMD ["yarn", "start"]
