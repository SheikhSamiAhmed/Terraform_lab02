resource "aws_subnet" "public_subnet1" {
  vpc_id            = aws_vpc.myapp_vpc.id
  cidr_block        = "192.168.0.0/18"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"
  
  tags = {
    Name = "public-subnet1"
  }
}


resource "aws_subnet" "public_subnet2" {
  vpc_id            = aws_vpc.myapp_vpc.id
  cidr_block        = "192.168.64.0/18"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1b"
  
  tags = {
    Name = "public-subnet2"
  }
}


resource "aws_subnet" "private_subnet1" {
  vpc_id            = aws_vpc.myapp_vpc.id
  cidr_block        = "192.168.128.0/18"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"
  
  tags = {
    Name = "private-subnet1"
  }
}

resource "aws_subnet" "private_subnet2" {
  vpc_id            = aws_vpc.myapp_vpc.id
  cidr_block        = "192.168.192.0/18"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1b"
  
  tags = {
    Name = "private-subnet2"
  }
}