# Container image that runs your code
FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y cmake make gcc && \
    apt-get install -y libpoco-dev libavahi-client-dev && \
    apt-get clean

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
