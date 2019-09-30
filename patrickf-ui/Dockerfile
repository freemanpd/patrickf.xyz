# base image
FROM node:12.2.0-alpine

RUN mkdir /app-react

# set working directory
WORKDIR /app-react

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app-react/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /app-react/package.json
RUN npm install --silent
RUN npm install react-scripts@3.0.1 -g --silent

# start app
CMD ["npm", "start"]