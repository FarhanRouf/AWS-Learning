## Create a bucket

aws s3 mb s3://class-fun-ff

## Create a file

echo "Hello World" > hello.txt

aws s3 cp hello.txt s3://class-fun-ff --storage-class STANDARD_IA

--storage-class (string) The type of storage to use for the object. Valid choices are: STANDARD | REDUCED_REDUNDANCY | STANDARD_IA | ONEZONE_IA | INTELLIGENT_TIERING | GLACIER | DEEP_ARCHIVE | GLACIER_IR. Defaults to ‘STANDARD’

## Clean up
aws s3 rm s3://class-fun-ff/hello.txt
aws s3 rb s3://class-fun-ff