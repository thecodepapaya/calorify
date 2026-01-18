#!/bin/bash

# Main deployment script
set -e

ENVIRONMENT=$1
if [ -z "$ENVIRONMENT" ]; then
    ENVIRONMENT="staging"
fi

echo "Deploying to $ENVIRONMENT environment..."

# Load env variables
if [ -f ".env.$ENVIRONMENT" ]; then
    export $(cat .env.$ENVIRONMENT | xargs)
fi

# Build and restart containers
docker-compose -f docker-compose.yml build backend
docker-compose -f docker-compose.yml up -d

echo "Deployment finished!"
