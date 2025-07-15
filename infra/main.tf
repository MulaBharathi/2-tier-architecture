module "networking" {
  source = "./networking"
  region = var.region
}

module "compute" {
  source           = "./compute"
  key_name         = var.key_name
  public_key_path  = var.public_key_path
  instance_type    = var.instance_type
  vpc_id           = module.networking.vpc_id
  public_subnet_id = module.networking.public_subnet_id
}

module "database" {
  source           = "./database"
  db_name          = var.db_name
  db_username      = var.db_username
  db_password      = var.db_password
  vpc_id           = module.networking.vpc_id
  private_subnet_id = module.networking.private_subnet_id
}

