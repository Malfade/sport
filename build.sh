#!/usr/bin/env bash
# exit on error
set -o errexit

# Install dependencies
pip install -r requirements.txt

# Create necessary directories
mkdir -p staticfiles
mkdir -p media

# Collect static files
python manage.py collectstatic --no-input --clear

# Apply migrations
python manage.py migrate

# Create superuser if needed (uncomment if needed)
# python manage.py createsuperuser --noinput 