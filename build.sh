#!/bin/bash

#Build the project
echo "Building the project..."
python 3.9 -m pip install -r requirements.txt

echo "Make Migration..."
python 3.9 manage.py makemigrations --noinput
python 3.9 manage.py migrate --noinput

echo "Collect Static..."
python 3.9 manage.py collectstatic --noinput --clear