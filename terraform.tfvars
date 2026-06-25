aws_region = "us-east-1"
environment = "dev"
project_name = "eva2"
vpc_cidr_block = "10.0.0.0/16"
public_subnet_cidr_1 = "10.0.1.0/24"
public_subnet_cidr_2 = "10.0.3.0/24"
private_subnet_cidr = "10.0.2.0/24"
availability_zone_1 = "us-east-1a"
availability_zone_2 = "us-east-1b"
ami_id = "ami-0c02fb55956c7d316"
instance_type = "t2.micro"
user_data = <<EOF
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>Servidor Web - Prueba 2</h1>" > /var/www/html/index.html
EOF
bucket_name = "mi-bucket-prueba2-eva2"
