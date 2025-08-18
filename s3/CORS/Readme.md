# Create Website 1

## Create a bucket

```sh
aws s3 mb s3://cors-ff
```

## Change block public access

```sh
aws s3api put-public-access-block \
    --bucket cors-ff \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```


## Create a bucket policy

```sh
aws s3api put-bucket-policy --bucket cors-ff --policy file://policy.json

```


## Turn on static website hosting

```sh

aws s3api put-bucket-website --bucket cors-ff --website-configuration file://website.json

```

## Upload index.html file and include cross-origin resource

```sh
aws s3 cp index.html s3://cors-ff
```

## Get S3 website endpoint

```sh
http://cors-ff.s3-website.ca-central-1.amazonaws.com
```

## Apply a CORS policy

# Create Website 2

## Create a bucket

```sh
aws s3 mb s3://cors-ff2
```

## Change block public access

```sh
aws s3api put-public-access-block \
    --bucket cors-ff2 \
    --public-access-block-configuration "BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=false,RestrictPublicBuckets=false"
```


## Create a bucket policy

```sh
aws s3api put-bucket-policy --bucket cors-ff2 --policy file://policy2.json

```


## Turn on static website hosting

```sh

aws s3api put-bucket-website --bucket cors-ff2 --website-configuration file://website.json

```

## Upload javascript file and include cross-origin resource

```sh
aws s3 cp hello.js s3://cors-ff2
```

## Create API Gateway with mock response and then test the endpoint
https://bwu8sqffc3.execute-api.ca-central-1.amazonaws.com/prod

```sh
curl -X POST -H "Content-Type: application/json" https://bwu8sqffc3.execute-api.ca-central-1.amazonaws.com/prod/hello
```

## Set CORS on bucket 1

aws s3api put-bucket-cors --bucket cors-ff --cors-configuration file://cors.json


## Clean up using console to avoid confusion!