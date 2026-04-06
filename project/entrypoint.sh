#!/bin/sh

echo "Waiting for postgres..."

DB_HOST=$(echo $DATABASE_URL | sed 's/.*@\(.*\):.*/\1/')

while ! nc -z $DB_HOST 5432; do
  sleep 0.1
done

echo "PostgreSQL started"

exec "$@"
