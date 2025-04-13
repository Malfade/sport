#!/usr/bin/env bash
# exit on error
set -o errexit

# Install dependencies
pip install -r requirements.txt
pip install gunicorn

# Create necessary directories
mkdir -p staticfiles
mkdir -p media

# Collect static files
python manage.py collectstatic --no-input --clear

# Apply migrations
python manage.py migrate

web: cd SportBackend && gunicorn wsgi:application --bind 0.0.0.0:$PORT