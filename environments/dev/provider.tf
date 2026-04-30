module "vpc" {
  source        = "../../Modules/vpc"
  vpc_cidr      = "10.0.0.0/16"
  subnet_cidr   = "10.0.1.0/24"
  subnet_az     = "${var.aws_region}a"          # ap-southeast-1a
  env           = "dev"
}

module "ec2" {
  source            = "../../Modules/ec2"
  ami_id            = "ami-03c3282f979a6a9b0"
  instance_type     = "t2.micro"
  subnet_id         = module.vpc.subnet_id
  ec2_count         = 2
  env               = "dev"
}