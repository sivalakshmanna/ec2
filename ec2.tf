provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "prod" {
  ami           = "ami-0cca134ec43cf708f"
  instance_type = "t2.nano"
  tags          = local.common_tags
  count         = 3
}
locals {
  common_tags = {
  Owner = "lakshman"
  service = "backend"
  }
 }