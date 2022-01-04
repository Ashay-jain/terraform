 provider "aws" {
   profile = "terraform"
   region = "ap-south-1"
 }
variable "instance_type" {
    type = string
  
}

 resource "aws_instance" "first-server-amazon" {
    ami = "ami-0567e0d2b4b2169ae"
    instance_type = var.instance_type
    tags = {
      Name = "terraform server"
    }
 } 

#  resource "aws_s3_bucket" "mys33bucket123" {
#   bucket = "bucket78797645465"

# }
