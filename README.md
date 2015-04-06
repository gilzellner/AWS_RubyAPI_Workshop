# AWS_RubyAPI_Workshop

## Please install the following before the event

RVM - Ruby Version Management. This will allow you to install multiple version of Ruby and thus work we do will not interfere with other things you might be doing. https://rvm.io/

Ruby 2.1.5 (or any 2.1.x if you prefer it) `rvm install ruby-2.1.5`

Sublime Text editor (http://www.sublimetext.com/download)

AWS ruby gem version 1.63 (not 2.x) `gem install aws-sdk -v 1.63`

## after installation, please run the following to make sure all is in order:

`rvm use ruby-2.1.5` (should simply say "using PATH/ruby-2.1.5)

`gem list` (should include the line "aws-sdk (1.63)")

then run `irb`, and type in "require 'aws-sdk'"

output should be "true"

# Agenda

Introduction: Why do we even needs AWS API when we have AWS-CLI (10 minutes)

Exercises 1-5 (60 minutes)

Break (20 minutes)

Exercises 6-7 (30 minutes)

If we have extra time we can also do some things in the field of load balancers, route53, etc.

# Exercise List

## Exercise 1 - Lets Create an API Key to use today (AWS GUI)
create an api key

## Exercise 2 - Lets connect to aws
http://docs.aws.amazon.com/AWSRubySDK/latest/AWS/S3/S3Object.html

create a connection object for s3

## Exercise 3 - Lets reliably connect to aws-sdk
create a rescue-retry way to connect to aws

## Exercise 4 - Lets get a list of S3 buckets and files in them
create a few s3 buckets (via GUI) 

Print a list of s3 buckets

## Exercise 5 - Lets upload an object to an S3 bucket

Create a program that uploads a file to S3

## Exercise 6 - Instances

http://docs.aws.amazon.com/AWSRubySDK/latest/AWS/EC2.html

create (GUI) 2 instances with different names. 

find and start an instance with a specific name

## Exercise 7 - Launch configs, autoscale groups, cloudformation
create (GUI) a launch config and autoscale group

create (Cloudformer) a cloudformation template.

create a cloudformation stack with the api
