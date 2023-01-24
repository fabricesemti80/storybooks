FROM node:14-slim

# set working directory
WORKDIR /usr/src/app

# copy node files
COPY ./package*.json ./

# install npm modules
RUN npm install

COPY . .

USER node

EXPOSE 3000

CMD [ "npm","start" ]