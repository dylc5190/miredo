FROM ubuntu:latest

# Install Linux library dependency
RUN apt-get update
RUN apt-get install -y iproute2 iputils-ping miredo tcpdump wget

WORKDIR /
COPY start.sh /
ENTRYPOINT ["/bin/bash", "start.sh"]
