
# Create a VPC
resource "aws_vpc" "cloudpros_vpc" {
  cidr_block = "10.0.0.0/16"

}
#create IGW
resource "aws_internet_gateway" "igw" {
  vpc_id = local.vpc_id

}

resource "aws_subnet" "pub"{
    vpc_id = local.vpc_id
     map_public_ip_on_launch = true
     cidr_block = var.pub_cidr

  }

  resource "aws_subnet" "priv_subnet" {
  vpc_id            = local.vpc_id
  cidr_block        = var.private_subnet_cidr
  
}

#route table
resource "aws_route_table" "cloudpros_rt" {
  vpc_id = aws_vpc.cloudpros_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "route_table"
  }
}

#route table association
resource "aws_route_table_association" "rt_association" {
  subnet_id = aws_subnet.pub.id
  route_table_id = aws_route_table.cloudpros_rt.id

}

resource "aws_eip" "eip" {
    vpc        = true
  depends_on = [aws_internet_gateway.igw]

}

resource "aws_nat_gateway" "mynatgw" {
  subnet_id     = aws_subnet.pub.id
  allocation_id = aws_eip.eip.id

  depends_on = [aws_internet_gateway.igw]

}

