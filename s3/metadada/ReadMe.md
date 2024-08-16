## Create a bucket
aws s3 mb s3://metadata-bk-0816t


## Create a new file 
echo "Hello MMMM" > hello.txt

## Upload file with metadata
aws s3api put-object --bucket metadata-bk-0816 --key hello.txt --body hello.txt --metadata Planet=Mars

## Get metadata throught head object
aws s3api head-object --bucket metadata-bk-0816 --key hello.txt 

## Clearup
aws s3 rm s3://metadata-bk-0816/hello.txt
aws s3 rb s3://metadata-bk-0816

## Extreme Clearup method
aws s3 rm  --recursive s3://prefixes-fun-ab-0816
aws s3 rb s3://metadata-bk-0816