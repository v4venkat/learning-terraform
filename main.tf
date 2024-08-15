resource "aws_instance" "web" {
  ami           = "ami-0ae8f15ae66fe8cda"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
