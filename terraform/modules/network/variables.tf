variable "vpc" {
  type = object({
    name       = string
    cidr_block = string
  })
}

variable "public_subnets" {
  type = object({
    cidr             = list(string)
    azs              = list(string)
    names            = list(string)
    route_table_name = string
  })
}

variable "private_subnets" {
  type = object({
    cidr              = list(string)
    azs               = list(string)
    names             = list(string)
    route_table_names = list(string)
  })
}


variable "internet_gw_name" {
  type = string
}

variable "nat_gw_names" {
  type = list(string)
}
