resource "aws_instance" "ec2_instance" {
    ami_id        = var.ec2_ami_id
    instance_type = var.ec2_instance_type
    subnet_id     = var.subnet_id
    count         = var.ec2_instance_count

    tags = {
        Name = "${var.env}-dev-${count.index}"
        Env  ="var.env"
    }

}
