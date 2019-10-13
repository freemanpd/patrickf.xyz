# base image
FROM node:10.16.3-alpine

RUN mkdir -p /app/patrickf-ui
WORKDIR /app
COPY patrickf-ui /app/patrickf-ui
WORKDIR /app/patrickf-ui
RUN npm install --silent
RUN npm install react -g --silent
RUN npm install react-scripts -g --silent
RUN npm run build

# start app
# CMD ["npm", "start"]
