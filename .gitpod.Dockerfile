FROM amazonlinux

RUN yum update -y && \
    yum install -y git tree jq unzip curl && \
    yum clean all
