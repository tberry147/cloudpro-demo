
resource "aws_instance" "instancepri" {
    instance_type = t2.micro
    ami = ami-0cff7528ff583bf9a
    subnet_id = aws_subnet.priv_subnet.id
    key_name = "Cloudkey"
   availability_zone = "us-east-1b"
}


