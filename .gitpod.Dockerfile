FROM amazonlinux:latest

RUN dnf update -y && \
    dnf install -y tree jq unzip curl && \
    dnf clean all
