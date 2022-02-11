resource "aws_subnet" "public_subnets" {
  count = length(var.public_subnets.cidr)

  vpc_id            = aws_vpc.sandbox_vpc.id
  cidr_block        = element(var.public_subnets.cidr, count.index)
  availability_zone = element(var.public_subnets.azs, count.index)

  tags = {
    Name = element(var.public_subnets.names, count.index)
  }
}

resource "aws_subnet" "private_subnets" {
  count = length(var.private_subnets.cidr)

  vpc_id            = aws_vpc.sandbox_vpc.id
  cidr_block        = element(var.private_subnets.cidr, count.index)
  availability_zone = element(var.private_subnets.azs, count.index)

  tags = {
    Name = element(var.private_subnets.names, count.index)
  }
}

resource "aws_route_table_association" "public" {
  count = length(var.public_subnets.cidr)

  subnet_id      = aws_subnet.public_subnets[count.index].id
  route_table_id = aws_route_table.public_route.id
}

resource "aws_route_table_association" "private" {
  count = length(var.private_subnets.cidr)

  subnet_id      = aws_subnet.private_subnets[count.index].id
  route_table_id = aws_route_table.private_route[count.index].id
}
