#FROM python:3.7.4-buster
FROM nikolaik/python-nodejs:python3.7-nodejs10

# vars
ENV PATH /app/patrickf-ui/node_modules/.bin:$PATH
ENV PYTHONUNBUFFERED 1
ENV NAME=$DBNAME
ENV HOST=$DBHOST
ENV USER=$DBUSER
ENV PASSWORD=$DBPASS
ENV PORT=$DBPORT
ENV SECRET_KEY=$DBSECRETKEY
ENV DEBUG=$DEBUGLOG

RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY patrickf-backend /app/patrickf-backend
COPY patrickf-ui /app/patrickf-ui
COPY api /app/api
COPY manage.py /app/
COPY scripts/start.sh /app/start.sh

WORKDIR /app/patrickf-ui
RUN npm install --silent
RUN npm install react -g --silent
RUN npm install react-scripts -g --silent
RUN npm run build

WORKDIR /app
RUN python manage.py collectstatic --noinput
CMD ["/start.sh"]