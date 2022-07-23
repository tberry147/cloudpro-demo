
#create IGW
resource "aws_internet_gateway" "igw" {
  vpc_id = local.vpc_id

}
