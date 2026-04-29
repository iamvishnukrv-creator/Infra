variable env {
  type        = string
  description = "which environment are we gonna to create(Dev,Qa,Prod)"
}

variable vpc_cidr_block {
  type        = string
  description = "vpc_cidr_block"
}

variable pub_cidr-block {
  type        = string
  description = "pub_cidr-block"
}

variable "subnet_az" {
  type        = string
  description = "subnet_az"
}
