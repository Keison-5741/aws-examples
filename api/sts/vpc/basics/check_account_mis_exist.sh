#!/bin/sh
aws ec2 create-vpc --cidr-block "172.1.0.0/16" --tag-specifications 'ResourceType=vpc,Tags=[{Key=Name,Value=my-vpc-3}]' --region ap-northeast-1 --query Vpc.VpcId --output text
aws ec2 create-vpc \
--cidr-block "172.1.0.0/16" \
--tag-specifications 'ResourceType=vpc,Tags=[{Key=Name,Value=my-vpc-3}]' \
--region ap-northeast-1 \
--query Vpc.VpcId \
--output text