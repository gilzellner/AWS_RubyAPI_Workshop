require 'aws-sdk'
region = 'eu-west-1'
@aws_access_key_id=''
@aws_secret_access_key=''

cfn=s3=nil
begin
	cfn = AWS::CloudFormation.new(	:access_key_id => @aws_access_key_id, :secret_access_key => @aws_secret_access_key, :region => region) 
	s3 = AWS::S3.new(	:access_key_id => @aws_access_key_id, :secret_access_key => @aws_secret_access_key, :region => region) 
rescue
	sleep 5
 	retry
end

bucket= s3.buckets["example-bucket-1"]
obj=bucket.objects["cloudformer.template"]

stack = cfn.stacks.create("mystack", obj.public_url)
