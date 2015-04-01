# AWS_RubyAPI_Workshop

## Please install the following before the event

RVM - Ruby Version Management. This will allow you to install multiple version of Ruby and thus work we do will not interfere with other things you might be doing. https://rvm.io/

Ruby 2.1.5 (or any 2.1.x if you prefer it)

AWS ruby gem version 1.63 (not 2.x)

## after installation, please run the following to make sure all is in order:

rvm use ruby-2.1.5 (should simply say "using PATH/ruby-2.1.5)

gem list (should include the line "aws-sdk (1.63)")

then run irb, and type in "require 'aws-sdk'"

output should be "true"

# Exercise List

## Exercise 1 - Lets Create an API Key to use today (AWS GUI)
create an api key

## Exercise 2 - Lets connect to aws
create a connection object for s3

## Exercise 3 - Lets reliably connect to aws-sdk
create a rescue-retry way to connect to aws

## Exercise 4 - Lets get a list of S3 buckets and files in them
create a few s3 buckets (via GUI) 

Print a list of s3 buckets

## Exercise 5 - Lets upload an object to an S3 bucket

Create a program that uploads a file to S3

## Exercise 6 - Instances
create (GUI) 2 instances with different names. 

find and start an instance with a specific name

## Exercise 7 - Launch configs, autoscale groups, cloudformation
create (GUI) a launch config and autoscale group

create (Cloudformer) a cloudformation template.

create a cloudformation stack with the api
