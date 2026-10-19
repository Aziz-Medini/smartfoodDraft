module "vpc" {
  source = "./modules/vpc"

  name_prefix            = local.name_prefix
  vpc_cidr               = var.vpc_cidr
  azs                    = local.azs
  public_subnet_cidrs    = var.public_subnet_cidrs
  frontend_subnet_cidrs  = var.frontend_subnet_cidrs
  backend_subnet_cidrs   = var.backend_subnet_cidrs
  db_subnet_cidrs        = var.db_subnet_cidrs
  nat_mode               = var.nat_mode
}
