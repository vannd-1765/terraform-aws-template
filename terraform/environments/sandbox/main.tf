module "sandbox_network" {
  source = "../../modules/network"

  vpc = {
    name       = "vpc-sandbox"
    cidr_block = "10.10.0.0/16"
  }

  private_subnets = {
    cidr  = ["10.10.3.0/24", "10.10.4.0/24"]
    azs   = ["us-east-1a", "us-east-1b"]
    names = ["sandbox-private-a", "sandbox-private-b"]

    route_table_names = ["sandbox-private-route-table-a", "sandbox-private-route-table-b"]
  }

  public_subnets = {
    cidr  = ["10.10.1.0/24", "10.10.2.0/24"]
    azs   = ["us-east-1a", "us-east-1b"]
    names = ["sandbox-public-a", "sandbox-public-b"]

    route_table_name = "sandbox-public-route-table"
  }

  internet_gw_name = "sandbox-internet-gw"
  nat_gw_names     = ["sandbox-nat-a", "sandbox-nat-b"]
}
