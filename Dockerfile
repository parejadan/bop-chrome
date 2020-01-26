FROM ubuntu:18.04

# get chrome virtual GUI frame dependencies
RUN apt-get update && \
    apt-get install -y \
    gdebi-core \
    wget \
    xvfb
