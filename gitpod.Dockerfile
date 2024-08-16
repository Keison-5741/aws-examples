FROM amazon/aws-cli

# install tools
RUN yum update -y
RUN yum install -y curl
RUN yum install -y sudo
RUN yum install -y git
RUN yum install -y tree
RUN yum install -y jq
RUN yum install -y unzip
RUN yum clean all

# install AWS CLI
#RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" 
#RUN unzip awscliv2.zip 
#RUN ./aws/install 
#RUN rm -rf awscliv2.zip aws

# config env
ENV AWS_CLI_AUTO_PROMPT=on-partial

# set directory
WORKDIR /workspace
