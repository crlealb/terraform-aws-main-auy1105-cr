# terraform-aws-main-auy1105-cr

Repositorio Terraform para desplegar infraestructura en AWS utilizando módulos remotos y variables por entorno.

## Propósito

Este repositorio define una infraestructura básica para provisionar en AWS:

- una VPC con subredes públicas y privadas,
- una instancia EC2 con servidor web,
- un balanceador de carga,
- un bucket S3,
- y configuración separada por ambientes como desarrollo, QA y producción.

## Estructura del repositorio

- [main.tf](main.tf): define los módulos principales que componen la infraestructura.
- [variables.tf](variables.tf): declara las variables reutilizables del proyecto.
- [locals.tf](locals.tf): define etiquetas y valores comunes para los recursos.
- [providers.tf](provider.tf): configura el proveedor de AWS.
- [tfvars/dev.tfvars](tfvars/dev.tfvars): valores para el ambiente de desarrollo.
- [tfvars/qa.tfvars](tfvars/qa.tfvars): valores para el ambiente de QA.
- [tfvars/prod.tfvars](tfvars/prod.tfvars): valores para el ambiente de producción.
- [import.tf](import.tf): archivo base para importar recursos ya existentes al state de Terraform.

## Requisitos previos

Antes de usar este repositorio debes tener instalado:

- Terraform
- AWS CLI configurado con credenciales válidas
- permisos adecuados en AWS para crear VPC, EC2, ALB y S3

## Cómo usarlo

1. Clona el repositorio.
2. Ajusta los valores en los archivos de [tfvars](tfvars).
3. Inicializa Terraform:

   ```bash
   terraform init
   ```

4. Previsualiza los cambios:

   ```bash
   terraform plan -var-file=tfvars/dev.tfvars
   ```

5. Aplica la infraestructura:

   ```bash
   terraform apply -var-file=tfvars/dev.tfvars
   ```

## Importar recursos existentes

Si ya existen recursos creados en AWS y quieres gestionarlos con Terraform, puedes usar [import.tf](import.tf) como base para registrar esos recursos en el state.

## Changelog

El historial detallado de cambios se encuentra en [CHANGELOG.md](CHANGELOG.md).
