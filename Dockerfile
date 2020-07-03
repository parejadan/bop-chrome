FROM ubuntu:18.04

# get chrome virtual GUI frame dependencies
RUN apt-get update && \
    apt-get install -y \
    gdebi-core \
    wget \
    xvfb

# install google chrome with virtual frame
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -q && \
    gdebi google-chrome-stable_current_amd64.deb -n

# install python + pip
RUN apt-get install -y \
    python3.7 \
    python3-pip

# install node + npm
RUN apt-get install -y \
    nodejs \
    npm
RUN npm install -g @vue/cli
