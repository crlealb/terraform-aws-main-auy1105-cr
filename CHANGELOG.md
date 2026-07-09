# Changelog

## 0.5.0

- Se añadió documentación más completa en el README para explicar el propósito del repositorio y el flujo de uso.
- Se ajustaron los archivos de variables de entorno para mantener consistencia entre los diferentes .tfvars.
- Se incorporó la variable `ami_id` como parte de la configuración de entrada para la instancia EC2.
- Se añadieron archivos de ejemplo para la gestión de imports y del estado de Terraform.
- Se mejoró la organización general del proyecto para facilitar despliegues por entorno.

## 0.4.2

- fix: sanitize variables for tflint and enable storage bucket support

## 0.4.1

- style: fix formatting compliance for v0.4.2

## 0.4.0

- chore: release version 0.4.0
- merge: pull origin dev --allow-unrelated-histories --no-rebase

## 0.3.0

- Se agregan archivos dentro de workflows: terraform.yml y main.yml
- Se incluye terraform.tfvars en el repositorio

## 0.2.1

- Se realizan arreglos en el archivo main.tf

## 0.2.0

- Se agrega el archivo checkov y carpeta workflows

## 0.1.0

- Se agrega el archivo .tf con el provider de AWS
