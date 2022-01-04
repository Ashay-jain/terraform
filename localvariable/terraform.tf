 provider "aws" {
   profile = "terraform"
   region = "ap-south-1"
 }

 locals {
   common_tags={
       owner = "Devops teams"
       service = "backend"
   }
 }

 resource "aws_instance" "first-server-amazon" {
    ami = "ami-0567e0d2b4b2169ae"
    instance_type = "t2.micro"
    tags = local.common_tags
 } 