# Base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Copy your project files into the container
COPY . .

# Install any necessary dependencies
RUN sed -i 's/archive.ubuntu.com/mirror.example.com/g' /etc/apt/sources.list


# Specify the entry point command or CMD

# Example command for a .NET application
# CMD [ "dotnet", "YourApp.dll" ]
