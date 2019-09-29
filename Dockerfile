FROM python:3.7.4-buster
ENV PYTHONUNBUFFERED 1
RUN mkdir /app-django
WORKDIR /app-django
COPY requirements.txt /app-django/
RUN pip install -r requirements.txt
COPY patrickf-backend /app-django/
COPY api /app-django/