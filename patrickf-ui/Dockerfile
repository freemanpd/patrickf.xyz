# base image
FROM node:10.16.3-alpine

RUN mkdir /app-react

# set working directory
WORKDIR /app-react

ENV PATH /app-react/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /app-react/package.json
RUN npm install --silent
RUN npm install react-scripts@3.0.1 -g --silent
COPY . /app-react
RUN npm run build

# start app
CMD ["npm", "start"]