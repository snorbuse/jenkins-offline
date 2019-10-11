FROM jenkins/jenkins:lts

# Install Maven
USER root
RUN apt-get update && apt-get upgrade -y && apt-get install -y maven && rm -rf /var/lib/apt/lists/*
USER jenkins

# Download the plugins
COPY plugins.txt /plugins.txt
RUN /usr/local/bin/plugins.sh /plugins.txt
