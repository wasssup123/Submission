#!/bin/bash

# Stop any running containers
docker-compose down

# Rebuild and start services
docker-compose up -d

# Wait for services to start
echo "Waiting for services to start..."
sleep 3

# Test health check endpoint
echo "Testing health check endpoint..."
curl -s http://localhost:8080/health

echo -e "\nServices are running at:"
echo "Auth endpoint: http://localhost:8080/auth"
echo "Health check endpoint: http://localhost:8080/health"
echo "Traefik dashboard: http://localhost:8090/dashboard/"