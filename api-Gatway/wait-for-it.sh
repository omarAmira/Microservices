#!/bin/bash
host="$1"
shift
port="$1"
shift
timeout="$1"
shift
echo "Waiting for $host:$port to be ready..."
while ! nc -z $host $port; do
  sleep 1
done
echo "$host:$port is ready!"
exec "$@"