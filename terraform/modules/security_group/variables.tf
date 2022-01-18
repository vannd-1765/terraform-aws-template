variable "security_group_name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "description" {
  type = string
}

variable "inbound_rules" {
  type = list(object({
    protocol = string
    port        = number
    sg_ids      = list(string)
    cidr_blocks = list(string)
    self        = bool
  }))
}
