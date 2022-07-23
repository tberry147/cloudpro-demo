
# Create Instance
resource "aws_instance" "web" {
  ami               = "ami-0cff7528ff583bf9a"
  availability_zone = "us-east-1a"
  instance_type     = "t2.micro"
  subnet_id         = aws_subnet.pub.id
  key_name          = "Key"
}