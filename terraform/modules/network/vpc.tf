resource "aws_vpc" "sandbox_vpc" {
  cidr_block = var.vpc.cidr_block

  tags = {
    Name = var.vpc.name
  }
}
