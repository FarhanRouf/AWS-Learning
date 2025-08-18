## Create a bucket

```sh
aws s3 mb s3://bp-example
```

## Create bucket policy

aws s3api put-bucket-policy --bucket bp-example --policy file://policy.json

## Through other account access bucket

touch bootcamp.txt
aws s3 cp bootcamp.txt s3://bp-example
aws s3 ls s3://bp-example

## Cleanup

aws s3 rm s3://bp-example/bootcamp.txt
aws s3 rb s3://bp-example