# Base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Copy your project files into the container
COPY . .

# Install any necessary dependencies
RUN apt-get update && \
    apt-get install -y docker/login-action@v2 docker/setup-buildx-action@vdocker/build-push-action@v4  && \
    rm -rf /var/lib/apt/lists/*

# Specify the entry point command or CMD

# Example command for a .NET application
# CMD [ "dotnet", "YourApp.dll" ]
