## Create a bucket
```sh
aws s3 mb s3://policy-bk
```

## Create bucket policy
```
aws s3api put-bucket-policy --bucket policy-bk --policy file://policy.json
```

## In other account access bucket
```sh
touch bootcamp.txt
aws s3 cp bootcamp.txt s3://policy-bk
aws s3 ls s3://policy-bk
```

## Cleanup
```sh
aws s3 rm s3://policy-bk/bootcamp.txt
aws s3 rb s3://policy-bk
```