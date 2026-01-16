FROM debian:stable-slim

LABEL maintainer="ayserjamshidi"
LABEL description="Basic Unraid Docker container running Debian"

# Update package lists and install basic utilities
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ca-certificates \
    bash \
    && rm -rf /var/lib/apt/lists/*

# Create the run directory
RUN mkdir -p /run

# Copy the watchdog script
COPY run/watchdog.sh /run/watchdog.sh

# Make the script executable
RUN chmod +x /run/watchdog.sh

# Run the watchdog script when the container starts
CMD ["/run/watchdog.sh"]
