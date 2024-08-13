# 使用 Amazon Linux 作為基礎映像
FROM amazonlinux:latest

# 更新並安裝必要的工具
RUN yum update -y 
RUN yum install -y git tree jq unzip curl 
RUN yum clean all

# 安裝 AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" 
RUN unzip awscliv2.zip 
RUN sudo ./aws/install 
RUN rm -rf awscliv2.zip aws

# 設定工作目錄（可選，根據需要設定）
WORKDIR /workspace
