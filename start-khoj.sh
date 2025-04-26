#!/bin/bash
echo "Starting Khoj..."
# Check if Ollama is running
if ! docker ps | grep -q ollama; then
  echo "Error: Ollama container is not running. Please start it first with ./start-ollama.sh"
  exit 1
fi
# Start Khoj
docker compose up -d
echo "Khoj is starting up. Wait a minute, then access at http://localhost:42110"
echo "Admin login: ${KHOJ_ADMIN_EMAIL} / your password"