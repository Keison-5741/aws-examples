## Create a bucket
```sh
aws s3 mb s3://kms-bk-0821
```

## Create a file
```sh
echo "Hello Fuck" > hello.txt
aws s3 cp hello.txt s3://kms-bk-0821
```

## PUt Object with encryption of KMS
```sh
aws s3api put-object \
--bucket kms-bk-0821 \
--key hello.txt \
--body hello.txt \
--server-side-encryption "aws:kms" \
--ssekms-key-id "c1a422af-ea28-43f4-8eea-24abbfed1a03"
failed
```

## Put object with SSE-C via aws s3
```sh
openssl rand -out ssec.key 32
aws s3 cp hello.txt s3://kms-bk-0821/hello.txt \
--sse-c AES256 \
--sse-c-key fileb://ssec.key
```

## Download file with decryption algorirm key
```sh
aws s3 cp s3://kms-bk-0821/hello.txt hello.txt \
--sse-c AES256 \
--sse-c-key fileb://ssec.key
```

