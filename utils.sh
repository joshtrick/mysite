#!/bin/bash
if [[ "$1" == "deepclean" ]] || [[ "$1" == "-dc" ]]
then
  find . -name "db.sqlite3" -exec rm -rf {} +
  find . -type d -name "__pycache__" -exec rm -rf {} +
  echo $1" done."

elif [[ "$1" == "clean" ]] || [[ "$1" == "-c" ]]
then
  find . -type d -name "__pycache__" -exec rm -rf {} +
  echo $1" done."

elif [[ "$1" == "cheatsheet" ]] || [[ "$1" == "-cs" ]]
then
  echo "# Start a project"
  echo "django-admin startproject PROJECT_NAME"
  echo ""
  echo "# Start an app in a project"
  echo "python manage.py startapp APP_NAME"
  echo ""
  echo "# Run a server"
  echo "python manage.py runserver [PORT | IP:PORT]"
  echo ""
  echo "# Add installed apps to database table"
  echo "python manage.py migrate"
  echo ""
  echo "# Update migrations for models of an app"
  echo "python manage.py makemigrations APP_NAME"
  echo ""
  echo "# Open an interactive python shell"
  echo "python manage.py shell"
  echo ""
  echo "# Create a user for admin site"
  echo "python manage.py createsuperuser"

else
  echo "usage: bash $0 CMD"
  echo "CMD:"
  echo "      deepclean, -dc : Clean db.sqlite3 and __pycache__/"
  echo "      clean, -c      : Clean __pycache__/"
  echo "      cheatsheet, -cs: List a django cheatsheet"
fi
