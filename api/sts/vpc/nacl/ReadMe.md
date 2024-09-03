## Get vpc id
```sh
VpcId=$(aws ec2 describe-vpcs \
--filters "Name=tag:Name,Values=nacl-example-vpc" \
--query "Vpcs[0].VpcId" \
--output text)
echo "VpcId : $VpcId"
```

## Create a NACL
```sh
aws ec2 create-network-acl --vpc-id vpc-0beb5284f93e74be1
```

## Add entry to ACL id with service access changes
```sh
aws ec2 create-network-acl-entry \
--network-acl-id acl-0116cd57d66a0f989 \
--ingress \
--rule-number 90 \
--protocol -1 \
--port-range From=0,To=65535 \
--cidr 218.35.163.147/32 \
--rule-action deny
```

## Get AMI for Amazon Linux 2
Grab latest AML2 AMI
```sh
ImageId=$(aws ec2 describe-images \
--filters "Name=name,Values=amzn2-ami-hvm-*-x86_64-gp2" \
--query "Images[?contains(Name,'amzn2')]|sort_by(@, &CreationDate)[-1].ImageId" \
--region ap-northeast-1 \
--output text)
echo "Amazon Linux 2 Image Id: $ImageId"
```