# ollama/Dockerfile
FROM nvidia/cuda:12.2.0-base-ubuntu22.04

# Install curl and other dependencies
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Expose the port ollama will use
# EXPOSE 11434

# Final command to start the ollama server
CMD ["ollama", "serve"]
