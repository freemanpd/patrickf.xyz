FROM python:3.7.4-buster
ENV PYTHONUNBUFFERED 1
ARG DBNAME=$DBNAME
ARG DBHOST=$DBHOST
ARG DBUSER=$DBUSER
ARG DBPASS=$DBPASS
ARG DBPORT=$DBPORT
ARG DBSECRETKEY=$DBSECRETKEY
ARG DEBUGLOG=$DEBUGLOG
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY patrickf-backend /app/patrickf-backend
COPY patrickf-ui /app/patrickf-ui
COPY api /app/api
COPY manage.py /app/
COPY scripts/start.sh /app/start.sh
RUN python manage.py collectstatic --noinput
CMD ["/start.sh"]