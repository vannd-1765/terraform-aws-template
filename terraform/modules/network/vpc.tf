resource "aws_vpc" "demo_vpc" {
  cidr_block = var.vpc.cidr_block

  tags = {
    Name = var.vpc.name
  }
}
