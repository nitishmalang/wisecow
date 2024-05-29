# Use a base image with necessary tools
FROM ubuntu:20.04

# Install prerequisites
RUN apt-get update && \
    apt-get install -y fortune-mod cowsay netcat && \
    apt-get clean

# Copy the application script
COPY wisecow.sh /usr/local/bin/wisecow.sh

# Make the script executable
RUN chmod +x /usr/local/bin/wisecow.sh

# Expose the application port
EXPOSE 4499

# Define the command to run the application
CMD ["/usr/local/bin/wisecow.sh"]
