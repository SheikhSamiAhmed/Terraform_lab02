
# Create a aws internet gateway 1
resource "aws_internet_gateway" "igw1" {
  vpc_id = aws_vpc.myapp_vpc.id
  
  tags = {
    Name = "vpc_igw1"
  }
}

