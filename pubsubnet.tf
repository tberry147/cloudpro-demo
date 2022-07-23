
resource "aws_subnet" "pub"{
    vpc_id = local.vpc_id
     map_public_ip_on_launch = true
     cidr_block = var.pub_cidr
  }