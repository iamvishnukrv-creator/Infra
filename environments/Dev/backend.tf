modules "vpc" {
    source = "../../Modules/vpc"
    vpc_cidr_block = "10.0.0.0/16"
    pub_cidr-block = "10.0.1.0/24"
    subnet_az      = "${var.aws_region}a"
    env            ="dev" 
}

modules "ec2" {
    source = "../../Modules/ec2"
    ec2_ami_id = "ami-02dd44faa40720bb8"
    ec2_instance_type = "t3.micro"
    ec2_instance_count = 1
     subnet_id = module.vpc.subnet_id
     env   ="dev"
}  