FROM python:3.7.4-buster
# FROM nikolaik/python-nodejs:python3.7-nodejs10

# vars
#ENV PATH /app/patrickf-ui/node_modules/.bin:$PATH
ENV PYTHONUNBUFFERED 1
ARG DBNAME
ARG DBHOST
ARG DBUSER
ARG DBPASS
ARG DBPORT
ARG DBSECRETKEY
ARG DEBUGLOG

# react build
# RUN mkdir -p /app/patrickf-ui
# WORKDIR /app
# COPY patrickf-ui /app/patrickf-ui
# WORKDIR /app/patrickf-ui
# RUN npm install --silent
# RUN npm install react -g --silent
# RUN npm install react-scripts -g --silent
# RUN npm run build

# python build
WORKDIR /app
RUN mkdir -p /app/patrickf-backend
COPY requirements.txt /app/
COPY patrickf-backend /app/patrickf-backend
COPY api /app/api
COPY manage.py /app/
RUN pip install -r requirements.txt
RUN pip install pipenv
#RUN python manage.py collectstatic --noinput