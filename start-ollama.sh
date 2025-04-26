#!/bin/bash
echo "Starting Ollama..."
docker pull ollama/ollama
docker run -d -p 11434:11434 -v ollama:/root/.ollama --name ollama ollama/ollama
echo "Downloading llama3.1 model..."
docker exec -it ollama ollama pull llama3.1
echo "Ollama is ready!"