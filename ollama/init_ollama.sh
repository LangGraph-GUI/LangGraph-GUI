# ollama/Dockerfile
FROM ubuntu:20.04

# Install curl and other dependencies
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install ollama
RUN curl -fsSL https://ollama.com/install.sh | sh

# Copy init_ollama script
COPY init_ollama.sh /init_ollama.sh
RUN chmod +x /init_ollama.sh

# Expose the port ollama will use
EXPOSE 11434

# Run the init_ollama script
RUN /init_ollama.sh

# Final command
CMD ollama serve
