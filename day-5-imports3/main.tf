#This is to import the S3 bucket form aws check the region once if you are getting any error  and the impoert code would be terraform import aws_s3_bucket.dev bucketname
provider "aws" {
    region = "us-east-1" 
  
}

resource "aws_s3_bucket" "dev" {
    bucket = ""
  
}