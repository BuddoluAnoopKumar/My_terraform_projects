provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0150ccaf51ab55a51"
  instance_type = "t2.micro"
  key_name      = "mdkey"

  tags = {
    Name = "Jenkins-Provisioned-EC2"
  }
}
