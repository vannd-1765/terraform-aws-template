resource "aws_eip" "nat" {
  count = length(var.nat_gw_names)
}
