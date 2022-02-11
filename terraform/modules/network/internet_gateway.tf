resource "aws_internet_gateway" "sandbox_internet_gw" {
  vpc_id = aws_vpc.sandbox_vpc.id

  tags = {
    Name = var.internet_gw_name
  }
}
