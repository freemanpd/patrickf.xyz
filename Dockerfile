FROM python:3.7.4-buster
ENV PYTHONUNBUFFERED 1
ENV DBNAME=$DBNAME
ENV DBHOST=$DBHOST
ENV DBUSER=$DBUSER
ENV DBPASS=$DBPASS
ENV DBPORT=$DBPORT
ENV DBSECRETKEY=$DBSECRETKEY
ENV DEBUGLOG=$TRUE
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