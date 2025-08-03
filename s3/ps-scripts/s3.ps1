Import-Module AWS.Tools.S3

$region = "us-east-1"
$bucketName = Read-Host -Prompt "Enter the S3 bucket name"

Write-Host "S3 Bucket: $bucketName"
Write-Host "AWS Region: $region"

New-S3Bucket -BucketName $bucketName -Region $region