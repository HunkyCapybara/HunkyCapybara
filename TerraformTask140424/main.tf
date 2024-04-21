resource "aws_instance" "terraformtask" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key
    user_data = file("task.sh")
    security_groups = ["sgsimportant"] # Actually this security_groups = [aws_security_groups.securitygroup.id] did not work only just by giving the name it worked like in this line mentioned i meaan the starting of the uncommented line.
    tags = {
        Name = "From Terraform"
    }
      # Reference the security group ID
}

# Assuming your security group definition (unchanged):

resource "aws_security_group" "securitygroup" {
    name = "sgsimportant"
    description = "Security group allowing all traffic"

    ingress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
    }
}
