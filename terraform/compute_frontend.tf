# L3 : une seule instance frontend privée (pas encore d'ASG).
module "app_instance" {
  source = "./modules/compute_app"

  name_prefix           = local.name_prefix
  subnet_id             = module.vpc.frontend_subnet_ids[0]
  security_group_id     = module.security_groups.frontend_sg_id
  instance_type         = var.instance_type
  instance_profile_name = var.lab_instance_profile_name
  key_name              = var.key_name
  app_repo_url          = var.app_repo_url
}
