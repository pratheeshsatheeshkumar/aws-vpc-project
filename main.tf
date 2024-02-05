module "vpc" {
  source = "/home/ubuntu/vpc-module"
  project = var.project
  env = var.env
  vpc_cidr_block = var.vpc_cidr_block
  subnet-public-config = {
    cidr = var.zomato-prod-public1-config.cidr
    az   = var.zomato-prod-public1-config.az
  }

  subnet-private-config = {
    cidr = var.zomato-prod-private1-config.cidr
    az   = var.zomato-prod-private1-config.az
  }
}