provider "aws" {
   profile = "terraform"
   region = "ap-south-1"
 }
variable "instance_type" {
    type = "map"

    default = {
        default = "t2.nano"
        dev = "t2.micro"
    }
  
}

 resource "aws_instance" "first-server-amazon" {
    ami = "ami-0567e0d2b4b2169ae"
    instance_type = lookup(var.instance_type,terraform.workspace)
    tags = {
      Name = "terraform server"
    }
 } 
