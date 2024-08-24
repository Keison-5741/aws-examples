## Create a bucket
```sh
aws s3 mb s3://cors-bk-0820
```

## Change block public access
```sh
aws s3api put-public-access-block \
    --bucket cors-bk-0820 \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```

## Creat a bucket policy
```sh
aws s3api put-bucket-policy --bucket cors-bk-0820 --policy file://policy.json
```

## Turn on static website hosting 
```sh
aws s3api put-bucket-website --bucket cors-bk-0820 --website-configuration '{"IndexDocument": {"Suffix": "index.html"}, "ErrorDocument": {"Key": "error.html"}}'
# aws s3api put-bucket-website --bucket cors-bk-0820 --website-configuration file://website.json
```

## Upload our index.html file and include a resource that would be cross-origin
```sh
echo "Hello welcome to my website" > index.html
aws s3 cp index.html s3://cors-bk-0820


```

##