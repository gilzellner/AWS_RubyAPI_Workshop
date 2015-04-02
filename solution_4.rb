require 'aws-sdk'
region = 'eu-west-1'
@aws_access_key_id=
@aws_secret_access_key=

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

