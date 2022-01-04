 provider "aws" {
   profile = "terraform"
   region = "us-east-2"
 }

 data "aws_ami" "app_ami" {
     most_recent = true
     owners = ["099720109477"]

     filter {
       name = "name"
       values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
     } 
 }


 resource "aws_instance" "instance-1" {
     ami = data.aws_ami.app_ami.id
     instance_type = "t2.micro"
   
 }
