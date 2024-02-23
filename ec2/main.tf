provider "aws" {
  region = var.region
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "${var.prefix}-${var.name}"

  instance_type          = "t2.micro"
  key_name               = "devops.coherent"
  vpc_security_group_ids = ["${var.vpc_security_group_ids}"]
  subnet_id              = var.subnet_id
}