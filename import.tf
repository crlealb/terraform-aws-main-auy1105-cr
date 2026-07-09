# Archivo de importación preparado para futuros entornos.
# Los bloques quedan comentados para que terraform validate no falle
# mientras el recurso no está definido en la configuración actual.

# import {
#   to = module.redes.aws_vpc.main
#   id = "vpc-xxxxxxxxxxxxxxxx"
# }

# import {
#   to = module.redes.aws_subnet.public_1
#   id = "subnet-xxxxxxxxxxxxxxxx"
# }

# import {
#   to = module.redes.aws_subnet.public_2
#   id = "subnet-xxxxxxxxxxxxxxxx"
# }

# import {
#   to = module.redes.aws_subnet.private
#   id = "subnet-xxxxxxxxxxxxxxxx"
# }

# import {
#   to = module.computo.aws_instance.web
#   id = "i-xxxxxxxxxxxxxxxx"
# }

# import {
#   to = module.loadbalancer.aws_lb.main
#   id = "arn:aws:elasticloadbalancing:us-east-1:123456789012:loadbalancer/app/nombre-alb/xxxxxxxxxxxxxxxx"
# }

# import {
#   to = module.storage.aws_s3_bucket.storage
#   id = "mi-bucket-s3"
# }
