FROM amazonlinux:2

RUN yum update -y && \
    yum install -y tree jq unzip curl && \
    yum clean all
