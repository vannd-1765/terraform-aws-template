variable "vpc" {
  type = object({
    name       = string
    cidr_block = string
  })
}
