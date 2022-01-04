 provider "aws" {
   profile = "terraform"
   region = "ap-south-1"
 }

variable "istest" {
  
}

 resource "aws_instance" "dev" {
    ami = "ami-0567e0d2b4b2169ae"
    instance_type = "t2.micro"
    count = var.istest == true ? 1 : 0
 } 

  resource "aws_instance" "prod" {
    ami = "ami-0567e0d2b4b2169ae"
    instance_type = "t3.micro"
    count = var.istest == false ? 1 : 0

 } 