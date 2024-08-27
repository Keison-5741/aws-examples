## Create a user with no persmission

We need to create a new user with no permissions and generate out access key

```sh
aws iam create-user --user-name sts-machine-user
aws iam create-access-key --user-name sts-machine-user --output table
```

Copy acceess key and secret here

```sh
aws configure
```

Then edit credentials file to change away from default profile

```sh
open ~/.aws/credentials
```

Test who you are:

```sh
aws sts get-caller-identity
aws sts get-caller-identity --profile sts
```

Make sure you don't have access to S3

```sh
aws s3 ls --profile sts
```
>　An error occurred (AccessDenied) when calling the ListBuckets operation: User: arn:aws:iam::632676649066:user/sts-machine-user is not authorized to perform: s3:ListAllMyBuckets because no identity-based policy allows the s3:ListAllMyBuckets action

## Create a Role

We nee to create a role that will access a new resource

```sh
chmod u+x bin/deploy
./bin/deploy
```
## Use new user credentials and assum role

```sh
aws iam put-user-policy \
--user-name sts-machine-user \
--policy-name StaAssumePolicy \
--policy-document file://Policy.json
```

```sh
aws sts assume-role \
--role-arn arn:aws:iam::632676649066:user/sts-machine-user \
--role-session-name s3-sys \
--profile sts
```

```sh
aws sts get-caller-identity --profile assumed
```


## Clearup

```sh
aws iam delete-access-key \
--user-name sts-machine-user \
--access-key-id AKIAZGTTXRBVERDTJP7J
aws iam delete-user --user-name sts-machine-user
aws s3 rb s3://sts-bk-0824-t33
```