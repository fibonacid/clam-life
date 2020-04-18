#!/usr/bin/env bash

#set -ex;

container_name=clam_db_1

# Create backup
docker container exec $container_name pg_dump -U postgres myapp_development --no-owner -f /clam_development.sql

# Copy from the container to the host
docker cp $container_name:/clam_development.sql .

# Create a timestamped copy
cp clam_development.sql backups/clam_development-$(date +"%F-%H-%M").sql