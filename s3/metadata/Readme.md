## Create a bucket

```sh
aws s3 mb s3://metadata-fun-ff-2577
```
### Create a new file

echo "Hello Mars" > hello.txt


### Upload file with metadata
```sh
aws s3api put-object --bucket metadata-fun-ff-2577 --key hello.txt --metadata Planet=Mars --body hello.txt
```

## Clean up
aws s3 rm s3://metadata-fun-ff-2577/hello.txt
aws s3 rb s3://metadata-fun-ff-2577