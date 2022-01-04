 provider "aws" {
   profile = "terraform"
   region = "ap-south-1"
 }
variable "ip" {
    type = string
  
}
resource "aws_security_group" "var_demo" {
    name = "sggroup1"
    ingress{
        from_port=22
        to_port=22
        protocol="tcp"
        cidr_blocks=[var.ip]
    } 
  
}