#!/bin/bash

# Start ollama serve in the background
ollama serve &

# Wait for a few seconds to ensure ollama serve has started
sleep 10

# Pull the gemma2 model
ollama pull gemma2

# Kill the background ollama serve process
pkill -f "ollama serve"
