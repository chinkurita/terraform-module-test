terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.88.0"
	  configuration_aliases = [aws.prod]
    }
  }
}

resource "aws_security_group" "sg1"{
	name = "dev-sg-1"
	provider = aws.prod
	}
	
resource "aws_security_group" "sg2"{
	name = "prod-sg-2"
	}