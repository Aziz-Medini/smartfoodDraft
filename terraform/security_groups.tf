module "security_groups" {
  source = "./modules/security_groups"

  name_prefix = local.name_prefix
  vpc_id      = module.vpc.vpc_id
  vpc_cidr    = var.vpc_cidr
}
