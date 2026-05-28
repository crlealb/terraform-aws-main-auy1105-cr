variable "aws_region" {
  description = "Región de AWS"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Nombre del ambiente"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Nombre del proyecto"
  type        = string
  default     = "eva2"
}

variable "vpc_cidr_block" {
  description = "CIDR block para la VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_1" {
  description = "CIDR block para la primera subnet pública"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_cidr_2" {
  description = "CIDR block para la segunda subnet pública"
  type        = string
  default     = "10.0.3.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block para la subnet privada"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone_1" {
  description = "Zona de disponibilidad para la primera subnet pública"
  type        = string
  default     = "us-east-1a"
}

variable "availability_zone_2" {
  description = "Zona de disponibilidad para la segunda subnet pública y privada"
  type        = string
  default     = "us-east-1b"
}

variable "ami_id" {
  description = "ID de la AMI de Amazon Linux 2"
  type        = string
  default     = "ami-0c02fb55956c7d316"
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t2.micro"
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
  default     = "mi-bucket-prueba2-eva2"
}