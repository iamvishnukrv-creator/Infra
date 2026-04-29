resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = {
        Name = "${var.env}-vpc"
        Env  =var.env
    }
 
}

resource "aws_subnet" "public_subnet" {
vpc_id     = aws_vpc.main.id
cidr_block = var.pub_cidr-block
availability_zone = var.subnet_az

 tags = {
        Name = "${var.env}-subnet"
        Env  =var.env
    }

}


output subnet_id {
  value       = "aws_subnet.public_subnet.id"
  description = "The subnet which my EC2 will be created"
}
