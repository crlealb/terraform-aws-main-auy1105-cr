output "vpc_id" {
  description = "ID de la VPC creada por el módulo de redes"
  value       = module.redes.vpc_id
}

output "public_subnet_ids" {
  description = "IDs de las subnets públicas creadas por el módulo de redes"
  value       = module.redes.public_subnet_ids
}

output "ec2_instance_id" {
  description = "ID de la instancia EC2 creada por el módulo de cómputo"
  value       = module.computo.instance_id
}

output "ec2_public_ip" {
  description = "IP pública de la instancia EC2 creada por el módulo de cómputo"
  value       = module.computo.instance_public_ip
}

output "alb_arn" {
  description = "ARN del Application Load Balancer creado por el módulo de loadbalancer"
  value       = module.loadbalancer.alb_arn
}

output "alb_dns_name" {
  description = "DNS del Application Load Balancer creado por el módulo de loadbalancer"
  value       = module.loadbalancer.alb_dns_name
}

output "target_group_arn" {
  description = "ARN del target group creado por el módulo de loadbalancer"
  value       = module.loadbalancer.target_group_arn
}

output "s3_bucket_name" {
  description = "Nombre del bucket S3 creado por el módulo de almacenamiento"
  value       = module.storage.bucket_name
}

output "s3_bucket_id" {
  description = "ID del bucket S3 creado por el módulo de almacenamiento"
  value       = module.storage.bucket_id
}
