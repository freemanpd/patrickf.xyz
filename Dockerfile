#FROM python:3.7.4-buster
FROM nikolaik/python-nodejs:python3.7-nodejs10

RUN apt-get install -y \
        nmap \
        vim
# vars
ENV PATH /app/patrickf-ui/node_modules/.bin:$PATH
ENV PYTHONUNBUFFERED 1
ARG DBNAME
ARG DBHOST
ARG DBUSER
ARG DBPASS
ARG DBPORT
ARG DBSECRETKEY
ARG DEBUGLOG

# react build
WORKDIR /app/patrickf-ui
RUN npm install --silent
RUN npm install react -g --silent
RUN npm install react-scripts -g --silent
RUN npm run build

# python build
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY patrickf-backend /app/patrickf-backend
COPY patrickf-ui /app/patrickf-ui
COPY api /app/api
COPY manage.py /app/
COPY scripts/start.sh /app/start.sh
RUN pip install pipenv
RUN python manage.py collectstatic --noinput