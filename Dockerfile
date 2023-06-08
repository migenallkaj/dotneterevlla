# Base image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Copy the project files into the container
COPY . ./

# Restore and build the application
RUN dotnet restore
RUN dotnet build -c Release --no-restore

# Publish the application
RUN dotnet publish -c Release -o out --no-restore

# Runtime image
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Copy the published output from the build stage
COPY --from=build /app/out ./

# Expose the desired port
EXPOSE 80

# Specify the entry point command
ENTRYPOINT ["dotnet", "YourApp.dll"]
