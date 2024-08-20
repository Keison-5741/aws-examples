## Create a bucket

```sh
aws s3api create-bucket --bucket acl-bk --region ap-northeast-1 --create-bucket-configuration LocationConstraint=ap-northeast-1
```

## Change acl config
```sh
aws s3api put-public-access-block \
--bucket acl-bk \
--public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=true,RestrictPublicBuckets=true"
```

## Show acl config
```sh
aws s3api get-public-access-block --bucket acl-bk
```


```sh
aws s3api get-public-access-block --bucket acl-bk
```

## Change bucket ownership
```sh
aws s3api put-bucket-ownership-controls \
--bucket acl-bk \
--ownership-controls Rules="[{ObjectOwnership=BucketOwnerPreferred}]"
```

## Change ACLs to allow for a user in another AWS Account
```sh
aws s3api put-bucket-acl \
--bucket acl-bk \
--access-control-policy file:///Users/edison.yu/aws-example/aws-examples/s3/acl/policy.json
```

## Access bucket from another account
```sh
touch bootcamp.txt
aws s3 cp bootcamp.txt s3://acl-bk
aws s3 ls s3://acl-bk/bootcamp.txt
```

## Clearup
```sh
aws s3 rm s3://acl-bk/bootcamp.txt
aws s3 rb s3://acl-bk
```