terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.88.0"
	  
    }
  }
}

resource "aws_instance" "mobile" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.name
  }
}

output "instance_id"{
 value = aws_instance.mobile.id
 }

variable "ami" {}
variable "instance_type" {}
variable "name" {}


	
	
