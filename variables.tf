variable "environment" {
  description = "Nombre del ambiente"
  type        = string
}

variable "project_name" {
  description = "Nombre del proyecto"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block para la VPC"
  type        = string
}

variable "public_subnet_cidr_1" {
  description = "CIDR block para la primera subnet pública"
  type        = string
}

variable "public_subnet_cidr_2" {
  description = "CIDR block para la segunda subnet pública"
  type        = string
}

variable "private_subnet_cidr" {
  description = "CIDR block para la subnet privada"
  type        = string
}

variable "availability_zone_1" {
  description = "Zona de disponibilidad para la primera subnet pública"
  type        = string
}

variable "availability_zone_2" {
  description = "Zona de disponibilidad para la segunda subnet pública y privada"
  type        = string
}

variable "ami_id" {
  description = "ID de la AMI de Amazon Linux 2"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
}

variable "user_data" {
  description = "Script de inicialización para la instancia"
  type        = string
  default     = <<-EOF
    #!/bin/bash
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "<h1>Servidor Web - Prueba 2</h1>" > /var/www/html/index.html
  EOF
}

variable "bucket_name" {
  description = "Nombre del bucket S3"
  type        = string
}