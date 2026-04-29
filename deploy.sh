#!/bin/bash
set -e

echo "Starting Project 2 deployment..."

git pull origin main

docker-compose down
docker-compose up -d --build

docker-compose ps

echo "Deployment complete."
