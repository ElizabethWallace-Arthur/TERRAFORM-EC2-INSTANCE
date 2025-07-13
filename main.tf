
resource "aws_instance" "firstEC2" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  key_name      = var.key_pair_name

  tags = {
    Name = "MyFirstEC2"
  }
}
