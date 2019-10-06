#FROM python:3.7.4-buster
FROM python3.7-nodejs10

# vars
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
RUN npm run build

WORKDIR /app
RUN python manage.py collectstatic --noinput
CMD ["/start.sh"]