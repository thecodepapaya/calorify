#!/bin/bash

# Rolling Deployment Script
set -e

SERVICE_NAME="backend"
NUM_INSTANCES=$(docker-compose ps $SERVICE_NAME | wc -l)
# In a real setup, you might have multiple replicas
# This script illustrates the concept of updating one by one

echo "Starting rolling deployment for $SERVICE_NAME..."

# 1. Pull latest images
docker-compose pull $SERVICE_NAME

# 2. Update instances one by one (simplified for docker-compose)
# With docker-compose, 'up -d' naturally performs a rolling update if configured
docker-compose up -d --no-deps --build $SERVICE_NAME

echo "Rolling deployment completed!"
