FROM amazon/amazon-ecs-local-container-endpoints

RUN yum update -y && \
    yum install -y git tree jq unzip curl && \
    yum clean all
