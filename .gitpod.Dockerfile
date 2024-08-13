FROM amazonlinux:2

RUN yum update -y && \
    yum install -y git tree jq unzip curl && \
    yum clean all
