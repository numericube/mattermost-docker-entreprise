# Copyright (c) 2016 Numericube, Inc. All Rights Reserved.
FROM mysql:5.7

#
# Configure SQL
#

ENV MYSQL_ROOT_PASSWORD=mostest
ENV MYSQL_USER=mmuser
ENV MYSQL_PASSWORD=mostest
ENV MYSQL_DATABASE=mattermost_test

#
# Configure Mattermost
#

# Copy over files
ADD https://releases.mattermost.com/3.0.3/mattermost-enterprise-3.0.3-linux-amd64.tar.gz .
RUN tar -zxvf ./mattermost-enterprise-3.0.3-linux-amd64.tar.gz
ADD config_docker.json ./mattermost/config/config_docker.json
ADD docker-entry.sh . 

RUN chmod +x ./docker-entry.sh
ENTRYPOINT ./docker-entry.sh

# Create default storage directory
RUN mkdir ./mattermost-data
VOLUME ./mattermost-data

# Ports
EXPOSE 8065
