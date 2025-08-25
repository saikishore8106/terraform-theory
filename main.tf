
provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-0a716d3f3b16d290c" # Ubuntu AMI for eu-north-1
  instance_type = "t3.micro"
}
