provider "aws" {
  
}

#First only give the resouce block as the skeleton and then terraform import aws_instance.dev image id from the instance starts with i-
#Once they are done if you did not get any errors you will get the state file and you have to take values from state file and add them in the resource block

resource "aws_instance" "dev" {
    ami = "ami-0e0bf53f6def86294"
    instance_type = "t3.micro"
    key_name = "Git"
  
}