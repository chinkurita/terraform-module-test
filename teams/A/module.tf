provider "aws"{
 alias = "mumbai"
 region = "ap-south-1"
 
 }
 
 provider "aws" {
 region = "us-east-1"
 }

module "consul" {
  source = "../../modules/ec2"
  ami = "1234"
  instance_type = "t2.medium"
  name = "helloworld"
}

resource "aws_eip" "lb" {

instance = module.consul.instance_id

}

# SG--------------------------------------------------

module "sg" {
	source = "../../modules/sg"
	providers = {
	 aws.prod = aws.mumbai
	}
}