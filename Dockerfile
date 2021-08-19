FROM ubuntu:20.04
RUN apt-get update && apt-get install -y git sudo python3
RUN useradd -u 1000 -s /bin/bash -d /build -m builder
RUN echo "builder ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER builder
ADD build.sh /
