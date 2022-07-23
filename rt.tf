
#route table
resource "aws_route_table" "cloudpros_rt" {
  vpc_id = aws_vpc.cloudpros_vpc.id

  route {
    cidr_block = var.rt_cidr
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "route_table"
  }
}

#internet gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.cloudpros_vpc.id

  tags = {
    Name = "internet_gateway"
  }
}


#route table association
resource "aws_route_table_association" "rt_association" {
  gateway_id     = aws_internet_gateway.gw.id
  route_table_id = aws_route_table.cloudpros_rt.id
}