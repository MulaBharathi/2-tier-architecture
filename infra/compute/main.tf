module "networking" {
  source = "./networking"
}

module "compute" {
  source           = "./compute"
  key_name         = var.key_name
  public_key_path  = var.public_key_path
  vpc_id           = module.networking.vpc_id
}

