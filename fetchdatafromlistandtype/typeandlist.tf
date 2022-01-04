 provider "aws" {
   profile = "terraform"
  # region = "ap-south-1"
 }


 provider "aws" {
   profile = "terraform"
 /////////////////  region = "ap-south-1"
 }


 resource "aws_instance" "myec2" {
   ami = "ami-0567e0d2b4b2169ae"
   instance_type = var.types [ap-south-1]
   
 }

 variable "types" {
   type = map
   default = {
     us-east-1 = "t2.micro"
    # us-west-1 = "t2.nano"
     ap-south-1 = "t2.small"
   }
   
 }