# Use the official Ubuntu image
FROM ubuntu:24.04

# Avoid interactive prompts during install
ENV DEBIAN_FRONTEND=noninteractive

# Update and install Python and pip
RUN apt update && \
    apt install -y python3 python3-pip && \
    apt clean

# Set default python and pip
RUN ln -sf /usr/bin/python3 /usr/bin/python && \
    ln -sf /usr/bin/pip3 /usr/bin/pip

# Create a working directory
WORKDIR /app

# Set the default command
CMD ["python", "--version"]
