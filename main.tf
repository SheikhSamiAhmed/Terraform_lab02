terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.35.0"
    }
  }
}

provider "aws" {
  region     = "us-east-1"
  access_key = "XXXXXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXXXXX"
}  

resource "aws_instance" "web01" {
  ami             = "ami-08c40ec9ead489470" 
  instance_type   = "t2.micro"
  key_name        = "mykey"
  subnet_id       = aws_subnet.public_subnet1.id
  security_groups = [aws_security_group.sg.id]
  user_data = "${file("install_apache.sh")}"
  tags = {
    Name = "web_instance1"
  }

  volume_tags = {
    Name = "web_instance1"
  } 
}

resource "aws_instance" "web02" {
  ami             = "ami-08c40ec9ead489470" 
  instance_type   = "t2.micro"
  key_name        = "mykey"
  subnet_id       = aws_subnet.public_subnet2.id
  security_groups = [aws_security_group.sg.id]

  user_data = file("install_apache.sh")
  tags = {
    Name = "web_instance2"
  }

  volume_tags = {
    Name = "web_instance2"
  } 
}
