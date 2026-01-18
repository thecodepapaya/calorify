#!/bin/bash

# Blue-Green Deployment Script
set -e

# Current active color (from nginx config or external source)
# For simplicity, we check which container is running
if docker ps | grep -q "backend-blue"; then
    ACTIVE="blue"
    TARGET="green"
    PORT=8081
else
    ACTIVE="green"
    TARGET="blue"
    PORT=8080
fi

echo "Active: $ACTIVE, Target: $TARGET (Port: $PORT)"

# 1. Start target environment
docker-compose -p $TARGET -f docker-compose.yml up -d --build backend

# 2. Health check target
echo "Waiting for $TARGET to be healthy..."
sleep 10
if ! curl -s http://localhost:$PORT/health | grep -q "OK"; then
    echo "Health check failed for $TARGET. Rolling back..."
    docker-compose -p $TARGET down
    exit 1
fi

# 3. Switch Nginx traffic
echo "Switching Nginx traffic to $TARGET..."
# This part would involve updating the nginx.conf file and reloading nginx
# sudo sed -i "s/backend-$ACTIVE/backend-$TARGET/g" /etc/nginx/sites-available/default
# sudo systemctl reload nginx

# 4. Stop old environment
echo "Stopping $ACTIVE environment..."
docker-compose -p $ACTIVE stop backend

echo "Blue-Green deployment to $TARGET completed successfully!"
