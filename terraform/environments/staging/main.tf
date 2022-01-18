module "security_group_example" {
  source = "../../modules/security_group"

  security_group_name       = "example_security_group"

  ## specify vpc id with remote state
  vpc_id      = data.terraform_remote_state.sandbox.outputs.vpc_id
  description = "This is an example."

  inbound_rules = [
    {
      port        = 0
      protocol    = "-1"
      sg_ids      = []
      cidr_blocks = []
      self        = true
    },
  ]
}
