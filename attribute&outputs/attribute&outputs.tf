 # elastic ip association to ec2 instance
 
 provider "aws" {
   profile = "terraform"
   region = "ap-south-1"
 }

 resource "aws_instance" "secondserver" {
     
 
     ami = "ami-0567e0d2b4b2169ae"
    instance_type = "t2.micro"
    tags = {
      Name = " linux server"
    }
 }

#  output "instance" {
#      value = aws_instance.secondserver
   
#  }

 resource "aws_eip" "lb" {
     vpc = true
   
 }

 resource "aws_eip_association" "eip_assoc" {
     instance_id = aws_instance.secondserver.id
     allocation_id = aws_eip.lb.id
   
 }