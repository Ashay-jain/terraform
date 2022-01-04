 provider "aws" {
   profile = "terraform"
   var.region = 
 }

 variable "region" {

 }


 variable "ec2ami" {
     type = map
     default = {
         ap-south-1 = "ami-01f87c43e618bf8f0"
         us-west-1 = "ami-01f87c43e618bf8f0"
     }
   
 }

 resource "aws_instance" "aws-server" {
    ami = lookup(var.ec2ami,var.region)
    instance_type = "t2.micro"
    tags = {
      Name = "terraform server"
    }
 } 



