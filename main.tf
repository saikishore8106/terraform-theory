
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-0c02fb55956c7d316" # Ubuntu 22.04 in us-east-1
  instance_type = "t2.micro"

  tags = {
    Name = "simple-terraform-instance"
  }
}
