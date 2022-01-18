module "sandbox_network" {
  source = "../../modules/network"

  vpc = {
    name       = "vpc-sandbox"
    cidr_block = "10.10.0.0/16"
  }
}
