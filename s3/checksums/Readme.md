## Create a new s3 bucket

```md
aws s3 mb s3://checksums-examples-ff-2342
```

## Create a file that we will do a checksum on

```
echo "Hello Mars" > myfile.txt
```

## Get a checksum for md5 of file
md5sum myfile.txt

# 8ed2d86f12620cdba4c976ff6651637f  myfile.txt

## Upload our file to s3
```
aws s3 cp myfile.txt s3://checksums-examples-ff-2342
aws s3api get-object --bucket checksums-examples-ff-2342 --key myfile.txt
```

## Upload a file with a different checksum
```
sudo apt install libarchive-zip-perl
cksum myfile.txt
# OR crc32 myfile.txt
aws s3api put-object --checksum-algorithm="SHA1" --checksum-sha1 c28ccc2c5e214036806014df9fb43634f3e770b2 \
--bucket=checksums-examples-ff-2342 \
--key="myfilesha1.txt" \
--body="myfile.txt"
```

