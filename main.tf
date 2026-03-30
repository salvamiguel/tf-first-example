# Bloque terraform: configuracion global del proyecto
terraform {
  # Declaramos los providers que necesitamos y sus versiones
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }

  # Version minima de Terraform necesaria
  required_version = ">= 1.0"
}

# Bloque provider: configuracion especifica del provider
# El provider "local" no necesita configuracion adicional
provider "local" {}

# Bloque resource: define un recurso que Terraform gestionara
# Sintaxis: resource "<TIPO>" "<NOMBRE_LOCAL>" { ... }
resource "local_file" "saludo" {
  content  = "Hola desde Terraform! Este archivo ha sido creado automaticamente."
  filename = "${path.module}/saludo.txt"
}