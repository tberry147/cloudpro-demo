
resource "aws_subnet" "priv_subnet" {
  vpc_id            = local.vpc_id
  cidr_block        = var.private_subnet_cidr
  
}
resource "aws_nat_gateway" "mynatgw" {
  subnet_id     = aws_subnet.pubsub.id
}

