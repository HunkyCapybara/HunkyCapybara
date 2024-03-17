terraform {
  backend "s3" {
    bucket = "s3bucketconfigurationsatefile"
    key = "terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform-first-dynamodb"
    encrypt = true
    
  }
}