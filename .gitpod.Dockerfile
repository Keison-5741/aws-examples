FROM amazonlinux:latest

# install utilities
RUN sudo yum update -y && \
    sudo yum install -y tree jq unzip curl && \
    sudo yum clean all
