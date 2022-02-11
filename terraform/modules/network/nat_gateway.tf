resource "aws_nat_gateway" "sandbox_nat" {
  count = length(var.nat_gw_names)

  allocation_id = element(aws_eip.nat.*.id, count.index)
  subnet_id     = element(aws_subnet.public_subnets.*.id, count.index)

  tags = {
    Names = element(var.nat_gw_names, count.index)
  }
}
