data "aws_ami" "app_ami" {
  most_recent = false

  filter {
    name   = "name"
    values = ["ami-0ae8f15ae66fe8cda"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["979382823631"] # Bitnami
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.app_ami.id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
