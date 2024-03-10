resource "aws_instance" "my-vm" {
  ami           = "ami-0cd59ecaf368e5ccf" 
  instance_type = "t2.micro"

  tags = {
    Name = "example-instance"
  }
}