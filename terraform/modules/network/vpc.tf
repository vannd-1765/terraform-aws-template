resource "aws_vpc" "new_vpc" {
  cidr_block = var.vpc.cidr_block

  tags = {
    Name = var.vpc.name
  }
}
