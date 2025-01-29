# Use the official code-server base image
FROM codercom/code-server:latest

# Set working directory
WORKDIR /home/coder

# Expose a custom port (change if needed)
EXPOSE 9000

# Set default environment variables (can be overridden)
ENV PASSWORD="changeme" \
    PORT="9000" \
    DATA_DIR="/home/coder/.local/share/code-server"

# Create a volume for persistent storage
VOLUME [ "$DATA_DIR" ]

# Start Code Server with custom settings
CMD ["sh", "-c", "code-server --bind-addr 0.0.0.0:$PORT --auth password"]
