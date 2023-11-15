# variable "region" {}
# variable "name" {}

# module "vpc" {
#   source = "./vpc"
#   name   = var.name
#   region = var.region
# }


variable "region" {}
variable "name" {}

module "vpc" {
  source = "./vpc"
  name   = var.name
  region = var.region
}

module "config" {
  source             = "./eksctl_config"
  name               = var.name
  region             = var.region
  vpc_id             = module.vpc.vpc_id
  instance_type      = "t2.micro"
  public_key_name    = "deploykey"
  filename           = "${path.module}/cluster_config.yaml"
}