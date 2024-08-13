# 使用 Amazon Linux 作為基礎映像
FROM amazonlinux:latest

# 更新並安裝必要的工具
RUN yum update -y 
RUN sudo yum install -y 
RUN sudo yum install -y git 
RUN sudo yum install -y tree 
RUN sudo yum install -y jq 
RUN sudo yum install -y unzip 
RUN sudo yum install -y curl 
RUN sudo yum yum clean all

# 安裝 AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" 
RUN unzip awscliv2.zip 
RUN sudo ./aws/install 
RUN rm -rf awscliv2.zip aws

# 設定環境變數
ENV AWS_CLI_AUTO_PROMPT=on-partial

# 設定工作目錄（可選，根據需要設定）
WORKDIR /workspace
