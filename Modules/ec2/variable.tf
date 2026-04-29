variable ec2_ami_id {
  type        = string
  description = "EC2-instance ami_id"
}

variable ec2_instance_type {
  type        = string
  description = "EC2-instance-type"
}

variable ec2_instance_count {
  type        = number
  description = "EC2-instance-count"
}

variable env {
  type        = string
  description = "which environment are we gonna to create(Dev,Qa,Prod)"
}

variable subnet_id {
  type        = string
  description = "Subnet_id of my ec2"
}
