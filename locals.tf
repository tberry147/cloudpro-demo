
locals {
  vpc_id = aws_vpc.cloudpros_vpc.id
  create_vpc = var.create_vpcs
}