data "aws_ami" "app_ami" {
  most_recent = false

  filter {
    name   = "name"
    values = ["Amazon Linux 2023 AMI 2023.5.20240805.0 x86_64 HVM kernel-6.1"]
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
