# Archivo de importación para recursos ya creados en AWS.
# Sustituye los IDs de ejemplo por los valores reales de tus recursos.

import {
  to = module.computo.aws_instance.web
  id = "i-1234567890abcdef0"
}

import {
  to = module.redes.aws_vpc.main
  id = "vpc-1234567890abcdef0"
}

import {
  to = module.redes.aws_subnet.public[0]
  id = "subnet-1234567890abcdef0"
}

import {
  to = module.redes.aws_subnet.public[1]
  id = "subnet-1234567890abcdef0"
}

import {
  to = module.redes.aws_subnet.private[0]
  id = "subnet-1234567890abcdef0"
}

import {
  to = module.redes.aws_security_group.web
  id = "sg-1234567890abcdef0"
}

import {
  to = module.redes.aws_security_group.alb
  id = "sg-1234567890abcdef0"
}

import {
  to = module.loadbalancer.aws_lb.this
  id = "arn:aws:elasticloadbalancing:us-east-1:123456789012:loadbalancer/app/mi-alb/1234567890abcdef"
}

import {
  to = module.storage.aws_s3_bucket.storage
  id = "eva2-storage-bucket-cr-dev"
}
