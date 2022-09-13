# Create Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.azp-vpc.id

  tags = {
    Name = "Demo IGW"
  }
}