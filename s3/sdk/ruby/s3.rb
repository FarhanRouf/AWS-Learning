# Load the AWS SDK for S3 so we can create buckets and upload files
require 'aws-sdk-s3'

# Load pry (a debugging tool for Ruby) — not used here, but can help if you run into issues
require 'pry'

# Load the SecureRandom library to generate random UUIDs for file contents
require 'securerandom'

# Get the bucket name from the environment variable BUCKET_NAME
# This must be set before running the script: export BUCKET_NAME=my-bucket-name
bucket_name = ENV['BUCKET_NAME']

# Set the AWS region where the S3 bucket will be created
region = 'ca-central-1'

# Note: In Ruby, 'puts' prints to the console (like 'print' in Python)
# This comment is informational and not code.

# Create a new S3 client object

client = Aws::S3::Client.new(region:region)

# Create the bucket in the given region

resp = client.create_bucket({
  bucket: bucket_name,
  create_bucket_configuration: {location_constraint:region} 
})
binding.pry

# Randomly choose between 1 and 6 files to generate and upload
number_of_files = 1 + rand(6)

# Print the number of files we will create
puts "number_of_files: #{number_of_files}"

# Loop over the range 0...(number_of_files)
number_of_files.times.each do |i|
    # Print the current loop index
    puts "i: #{i}"

    # Build a filename like 'file_0.txt', 'file_1.txt', etc.
    filename = "file_#{i}.txt"

    # Set a temporary local path in /tmp
    output_path = "/tmp/#{filename}"
    
    # Open the file in write mode and write a random UUID into it
    File.open(output_path, "w") do |f|
        f.write SecureRandom.uuid
    end

    # Open the file in binary read mode to upload it to S3
    File.open(output_path, 'rb') do |f|
        # ⚠️ 's3' is not defined — should use 'client' here
        client.put_object(
            bucket: bucket_name,  # The target S3 bucket
            key: filename,        # The S3 object key (file name in bucket)
            body: f               # The file data
        )
    end
end

