resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.sandbox_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.sandbox_internet_gw.id
  }

  tags = {
    Name = var.public_subnets.route_table_name
  }
}

resource "aws_route_table" "private_route" {
  count = length(var.nat_gw_names)

  vpc_id = aws_vpc.sandbox_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.sandbox_nat[count.index].id
  }

  tags = {
    Name = var.private_subnets.route_table_names[count.index]
  }
}
