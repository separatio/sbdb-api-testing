#!/bin/sh

echo "Starting tests within docker..."
docker compose up --force-recreate -V
echo "Tests finished."
