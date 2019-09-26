#!/bin/sh
set -e

# ensure that the required environment variables are set
test $MONGODB_HOST
test $MONGODB_PORT

# waiting for postgres service to come up
until nc -z ${MONGODB_HOST} ${MONGODB_PORT}; do
    echo "==> $(date) Waiting for MongoDB on ${MONGODB_HOST} port ${MONGODB_PORT} to come up..."
    sleep 1
done

echo "==> MongoDB is up"

exec /usr/bin/contextBroker -fg -multiservice -ngsiv1Autocast "$@"
