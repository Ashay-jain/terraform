 provider "aws" {
   profile = "terraform"
   region = "ap-south-1"
 }



 resource "aws_instance" "first-server-amazon" {
    ami = "ami-0567e0d2b4b2169ae"
    instance_type = "t2.micro"
    tags = {
      Name = "terraform server"
    }
 } 