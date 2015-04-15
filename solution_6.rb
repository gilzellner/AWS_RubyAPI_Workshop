require 'aws-sdk'
region = 'eu-west-1'
@aws_access_key_id=''
@aws_secret_access_key=''

expression=ARGV[0]
expression="Instance4"

ec2=nil
begin
	ec2 = AWS::EC2.new(	:access_key_id => @aws_access_key_id, :secret_access_key => @aws_secret_access_key, :region => region) 
rescue
	sleep 5
 	retry
end

instance=ec2.instances.filter("tag:Name",expression).select { |ins| ins.status!=:running }.first
instance.start