## Create a new s3 bucket

```md
aws s3 mb s3://checksums-example-bk-0815
```

## Create a file that will we do a checksums on

```md
aws s3 mb s3://checksums-example-bk-0815
```

```
echo "Hello EYEY"" > eyfile.txt
```

## Get a checksum of a file for md5

md5sum myfile.txt 
# 47fed32d2f13e3a5849dbe46d5d6dcc1  myfile.txt

## Upload out s3 file and look its etag
aws s3 cp myfile.txt  s3://checksums-example-bk-0815
aws s3api head-object -bucket checksums-example-bk-0815  -key myfile.txt

## Lets upload a file with diffent checksum

```
python checksums.py
```

```sh
sudo apt-get install rhash -y
rhash --crc32 --simple myfile.txt


aws s3 put-object \
--bucket checksums-example-bk-0815 \
--key myfile.txt \
--body myfile.txt \
--checksum-algorithm="CRC32" \
--checksum-crc32="28987ee8" \
```