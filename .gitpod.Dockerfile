FROM amazonlinux:latest

# install utilities
RUN sudo apt update -y && \
    sudo apt-get install -y tree jq unzip curl
