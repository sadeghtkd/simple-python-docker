FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Create a directory for your scripts
RUN mkdir -p /app/scripts

# Install any base packages you might need
RUN apt-get update && apt-get install -y \
    vim \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Keep container running with a process that won't terminate
CMD ["tail", "-f", "/dev/null"]