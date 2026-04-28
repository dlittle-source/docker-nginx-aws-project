#!/bin/bash

echo "Starting Project 2 deployment..."

docker-compose down

docker build -t project2-nginx-app .

docker-compose up -d

echo "Waiting for container health check..."

sleep 10

docker ps

if docker ps | grep -q "(healthy)"; then
    echo "Deployment successful. Container is healthy."
else
    echo "Deployment warning: container health check not confirmed."
fi