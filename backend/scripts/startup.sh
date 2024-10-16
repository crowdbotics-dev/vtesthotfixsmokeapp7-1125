#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT vtesthotfixsmokeapp7_1125.wsgi:application
