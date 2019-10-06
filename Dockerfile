FROM python:3.7.4-buster
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
RUN python  manage.py collectstatic
COPY patrickf-backend /app/patrickf-backend
COPY patrickf-ui /app/patrickf-ui
COPY api /app/api