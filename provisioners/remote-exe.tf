
 provider "aws" {
   profile = "terraform"
   region = "ap-south-1"
 }


resource "aws_instance" "first-server-amazon" {
    ami = "ami-0567e0d2b4b2169ae"
    instance_type = "t2.micro"
     key_name = "learningkey"
     tags = {
      Name = "terraform server"
    }


provisioner "remote-exec" {
    inline = [
        "sudo apt update -y",
        "sudo apt install git -y",
        "sudo apt install apache2 -y",
        "cd /var/www/html",
        "sudo git pull https://github.com/Ashay-jain/sports-website.git",
        "sudo systemctl start apache2.service"
    ]

    connection{
        type = "ssh"
        host = self.public_ip
        user = "ubuntu"
        private_key = file("/home/ashay/sshkeys/learningkey.pem")   
        }
    }
}    