module "redes" {
  source = "git::https://github.com/crlealb/terraform-aws-vpc-auy1105-cr.git?ref=1.0.0"

  vpc_cidr_block       = var.vpc_cidr_block
  public_subnet_cidr_1 = var.public_subnet_cidr_1
  public_subnet_cidr_2 = var.public_subnet_cidr_2
  private_subnet_cidr  = var.private_subnet_cidr
  availability_zone_1  = var.availability_zone_1
  availability_zone_2  = var.availability_zone_2
  environment          = var.environment
  common_tags          = local.common_tags
}

module "computo" {
  source = "git::https://github.com/crlealb/terraform-aws-ec2-auy1105-cr.git?ref=1.0.0"

  ami_id                = var.ami_id
  instance_type         = var.instance_type
  subnet_public_1_id    = module.redes.public_subnet_ids[0]
  security_group_web_id = module.redes.security_group_web_id
  user_data             = var.user_data
  environment           = var.environment
  common_tags           = local.common_tags

  depends_on = [module.redes]
}

module "loadbalancer" {
  source = "git::https://github.com/crlealb/terraform-aws-loadbalancer-auy1105-cr.git?ref=1.0.0"

  public_subnet_ids     = module.redes.public_subnet_ids
  vpc_id                = module.redes.vpc_id
  security_group_alb_id = module.redes.security_group_alb_id
  target_instance_id    = module.computo.instance_id
  target_port           = 80
  environment           = var.environment
  common_tags           = local.common_tags

  depends_on = [module.computo, module.redes]
}

module "storage" {
  source = "git::https://github.com/crlealb/terraform-aws-storage-auy1105-cr.git?ref=1.0.0"

  bucket_name = var.bucket_name
  environment = var.environment
  common_tags = local.common_tags
}
