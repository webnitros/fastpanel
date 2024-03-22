# Use an official Ubuntu runtime as a parent image
FROM ubuntu:latest

# Update the system
RUN apt-get update

# Install wget
RUN apt-get install -y wget systemd-sysv sudo

# Download and install FastPanel
RUN wget http://repo.fastpanel.direct/install_fastpanel.sh -O - | bash -
