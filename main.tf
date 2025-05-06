terraform {
  required_version = ">= 1.0.0"
}

module "vpc" {
  source = "./modules/vpc"

  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones  = var.availability_zones
  project             = var.project
  environment         = var.environment
}

module "networking" {
  source = "./modules/networking"

  vpc_id            = module.vpc.vpc_id
  igw_id            = module.vpc.igw_id
  public_subnet_ids = module.vpc.public_subnet_ids
  private_subnet_ids = module.vpc.private_subnet_ids
  nat_gateway_ids   = module.vpc.nat_gateway_ids
  project           = var.project
  environment       = var.environment
}

module "security" {
  source = "./modules/security"

  vpc_id          = module.vpc.vpc_id
  project         = var.project
  environment     = var.environment
  allowed_ssh_ip  = var.allowed_ssh_ip
}

module "compute" {
  source = "./modules/compute"

  ami_id           = var.app_ami_id
  instance_type    = var.instance_type
  public_subnet_ids = module.vpc.public_subnet_ids
  private_subnet_ids = module.vpc.private_subnet_ids
  public_sg_id     = module.security.public_ec2_sg_id
  private_sg_id    = module.security.private_ec2_sg_id
  key_name         = var.key_name
  project          = var.project
  environment      = var.environment
}