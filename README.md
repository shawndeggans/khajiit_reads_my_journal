# Simple Khoj Setup for Obsidian

## Step 1: Start Ollama
```bash
chmod +x start-ollama.sh
./start-ollama.sh

chmod +x start-khoj.sh
./start-khoj.sh
```

#### Step 3: Configure Obsidian Plugin

Open Obsidian
Go to Settings → Community plugins → Browse
Search for "Khoj" and install the plugin
Enable the plugin
Set Khoj URL to http://localhost:42110
Force Sync to index your vault

#### Step 4: Configure Chat Model

Open http://localhost:42110/server/admin
Go to "Chat models" and add a model:

Model Type: Offline
Chat Model: llama3.1


Go to "Server chat settings" and set this as your default model

#### Step 5: Add Weekly Summary Agent

Go to http://localhost:42110/server/admin/database/agent
Click "Add Agent"
Copy the personality from weekly-summary-agent.md