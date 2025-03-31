provider "aws" {
  region = var.region
}
module "vpc" {
  source = "./modules/vpc"
  region = var.region
  availability_zone_1 = var.availability_zone_1
  availability_zone_2 = var.availability_zone_2
  cidr_block = var.cidr_block
  public_subnet_ips = var.public_subnet_ips
  private_subnet_ips = var.private_subnet_ips
}
module "security" {
  source = "./modules/security"
  region = var.region
  vpc_id = module.vpc.vpc_id
}
module "ec2" {
  source = "./modules/ec2"
  region = var.region
  image_id = var.amis[var.region]
  instance_type = var.instance_type
  ec2_security_group_ids = [module.security.public_security_group_id]
  subnet_id = module.vpc.public_subnet_ids[0]
}