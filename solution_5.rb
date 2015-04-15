require 'aws-sdk'
region = 'eu-west-1'
@aws_access_key_id=
@aws_secret_access_key=

bucket_to_upload_to= ARGV[0]
path_to_backup = ARGV[1]
filename = ARGV[2]

bucket_to_upload_to= "example-bucket-1"
path_to_backup = "/Users/gilz/"
filename = "tmp.rb"


s3=nil
begin
	s3 = AWS::S3.new(	:access_key_id => @aws_access_key_id, :secret_access_key => @aws_secret_access_key, :region => region) 
rescue
	sleep 5
 	retry
end

s3.buckets.each do |bucket|
	puts bucket.name
end

bucket= s3.buckets[bucket_to_upload_to]
obj=bucket.objects[filename]
obj.write(Pathname.new(path_to_backup+"/"+filename))
