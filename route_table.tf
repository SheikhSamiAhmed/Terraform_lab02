# Create a aws route table
resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.myapp_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw1.id
  }

  tags = {
    Name = "public_rt1"
  }
}

resource "aws_route_table_association" "public_rt_asso1" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.route_table.id
}


resource "aws_route_table_association" "public_rt_asso2" {
  subnet_id      = aws_subnet.public_subnet2.id
  route_table_id = aws_route_table.route_table.id
}


