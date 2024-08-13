FROM amazonlinux

RUN yum update -y && /
    yum install -y git && /
    yum clean all
