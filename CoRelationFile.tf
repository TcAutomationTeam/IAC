provider "aws" {
  region = "ap-south-1"
}

# EC2 Instance with AMI 1
resource "aws_instance" "ec2_instance_1" {
  ami           = "ami-0f5ee92e2d63afc18"   # AMI ID 1
  instance_type = "t2.micro"

  tags = {
    Name = "My-EC2-Server"
  }
}

# EC2 Instance with AMI 2
resource "aws_instance" "ec2_instance_2" {
  ami           = "ami-0a4408457f9a03be3"   # AMI ID 2
  instance_type = "t2.micro"

  tags = {
    Name = "My-EC2-Server"
  }
}
