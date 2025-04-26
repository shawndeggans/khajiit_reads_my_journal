# Simple Khoj Setup for Obsidian with Local Ollama

A simple setup for connecting Khoj AI with your Obsidian vault using local Ollama for LLM integration.

## Step 1: Configure your environment

```bash
# Copy example environment file
cp .env.example .env

# Edit the .env file with your preferred settings
# nano .env (or use your preferred text editor)
```

## Step 2: Start Ollama

```bash
# Make the script executable
chmod +x start-ollama.sh

# Run the script
./start-ollama.sh
```

## Step 3: Start Khoj

```bash
# Make the script executable
chmod +x start-khoj.sh

# Run the script
./start-khoj.sh
```

## Step 4: Configure Obsidian Plugin

1. Open Obsidian
2. Go to Settings → Community plugins → Browse
3. Search for "Khoj" and install the plugin
4. Enable the plugin
5. Set Khoj URL to `http://localhost:42110`
6. Force Sync to index your vault

## Step 5: Configure Chat Model

1. Open http://localhost:42110/server/admin
2. Log in with the credentials from your .env file
3. Go to "Chat models" and add a model:
   - Model Type: Offline
   - Chat Model: llama3.1
4. Go to "Server chat settings" and set this as your default model

## Step 6: Add Weekly Summary Agent

1. Go to http://localhost:42110/server/admin/database/agent
2. Click "Add Agent"
3. Copy the personality from weekly-summary-agent.md

## Troubleshooting

### Ollama Connection Issues

If Khoj can't connect to Ollama:

1. Verify Ollama is running: `docker ps | grep ollama`
2. Check Ollama logs: `docker logs ollama`
3. Verify you can access Ollama directly: `curl http://localhost:11434/api/version`

### Docker Compose Issues

If containers fail to start:

1. Check logs: `docker-compose logs -f`
2. Verify environment variables: `docker-compose config`

### Obsidian Plugin Issues

If the plugin can't connect:

1. Use `localhost` instead of `127.0.0.1` in the plugin settings
2. Make sure Khoj is running: `docker ps | grep khoj`
3. Try restarting Obsidian

## Useful Commands

```bash
# Check container status
docker ps

# View Khoj logs
docker-compose logs -f server

# Restart Khoj
docker-compose restart server

# Stop everything
docker-compose down
docker stop ollama
```