provider "aws" {
  region = "us-east-1"
}

# EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
}

# S3 Bucket
resource "aws_s3_bucket" "storage" {
  bucket = "my-app-bucket"
  acl    = "private"
}

# Security Group (Firewall)
resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow HTTP inbound traffic"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
