FROM amazonlinux:latest

# install utilities
RUN yum update -y && \
    yum install -y tree jq unzip curl && \
    yum clean all
