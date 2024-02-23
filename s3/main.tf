provider "aws" {
  region = var.region
}

module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.1.0"
  bucket = "${var.prefix}-${var.name}"
}