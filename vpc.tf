# Create a VPC
resource "aws_vpc" "azp-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "azp_vpc"
  }
}