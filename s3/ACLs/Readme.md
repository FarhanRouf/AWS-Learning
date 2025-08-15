## Create a new bucket

```sh
aws s3api create-bucket --bucket acl-ff --region us-east-1
```

## Change Block public Access to off

```sh
aws s3api put-public-access-block \
--bucket acl-ff \
--public-access-block-configuration BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=true,RestrictPublicBuckets=true
```

## Change bucket ownership controls

```sh
aws s3api put-bucket-ownership-controls \
    --bucket acl-ff\
    --ownership-controls="Rules=[{ObjectOwnership=BucketOwnerPreferred}]"
```

## Change bucket ACL

```sh
aws s3api put-bucket-acl --bucket acl-ff --access-control-policy="file://policy.xml"
```

## Access Bucket from other account on AWS CLI on console terminal

```sh
touch bootcamp.txt
aws s3 cp bootcamp.txt s3://acl-ff
aws s3 ls s3://acl-ff

```

## Clean up bucket
```sh
aws s3api delete-object --bucket acl-ff --key bootcamp.txt
aws s3api delete-bucket --bucket acl-ff
```