# 使用 Amazon Linux 作為基礎映像
FROM amazon/aws-cli

# 更新並安裝必要的工具
RUN yum update -y
RUN yum install -y sudo
RUN yum install -y git
RUN yum install -y tree
RUN yum install -y jq
RUN yum install -y unzip 
RUN yum install -y curl --allowerasing
RUN yum clean all

# 安裝 AWS CLI
#RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" 
#RUN unzip awscliv2.zip 
#RUN ./aws/install 
#RUN rm -rf awscliv2.zip aws

# 設定環境變數
ENV AWS_CLI_AUTO_PROMPT=on-partial

# 設定工作目錄（可選，根據需要設定）
WORKDIR /workspace
