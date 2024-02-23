module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.1.0"

  name = var.name
  region = var.region
  prefix = var.prefix
}