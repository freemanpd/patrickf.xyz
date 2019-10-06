#!/bin/bash
echo Starting Gunicorn.
exec gunicorn patrickf-backend.wsgi:application \
    --bind 0.0.0.0:8000 \
    --workers 3

#gunicorn -w  --bind 127.0.0.1:8000 --access-logfile --error-logfile - patrickf-backend.wsgi:application