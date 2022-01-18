resource "aws_security_group" "sg" {
  name   = var.security_group_name
  vpc_id = var.vpc_id

  dynamic "ingress" {
    for_each = var.inbound_rules

    content {
      from_port       = ingress.value.port
      to_port         = ingress.value.port
      protocol        = ingress.value.protocol
      cidr_blocks     = ingress.value.cidr_blocks
      security_groups = ingress.value.sg_ids
      self            = ingress.value.self
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = var.security_group_name
  }
  description = var.description
}
