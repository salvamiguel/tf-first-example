# Primer ejemplo con Terraform

Proyecto de ejemplo que utiliza el provider `local` para crear un archivo en el sistema de archivos local, sin necesidad de una cuenta en ningun proveedor cloud.

## Requisitos

- [Terraform](https://developer.hashicorp.com/terraform/install) >= 1.0

## Uso

### 1. Inicializar el proyecto

Descarga los providers declarados y prepara el directorio de trabajo:

```bash
terraform init
```

### 2. Previsualizar los cambios

Revisa que recursos se van a crear, modificar o destruir:

```bash
terraform plan
```

### 3. Aplicar los cambios

Crea los recursos definidos en la configuracion:

```bash
terraform apply
```

Terraform pedira confirmacion. Escribe `yes` para proceder. Se generara el archivo `saludo.txt` con el contenido definido en `main.tf`.

### 4. Destruir la infraestructura

Elimina todos los recursos gestionados:

```bash
terraform destroy
```

## Estructura del proyecto

| Archivo | Descripcion |
|---------|-------------|
| `main.tf` | Configuracion principal: provider `local` y recurso `local_file` |
| `terraform.tfstate` | State generado tras el apply (no versionar) |
| `.terraform/` | Plugins descargados (no versionar) |
| `.terraform.lock.hcl` | Versiones exactas de providers (versionar) |

## Documentacion

Este ejemplo forma parte del curso de introduccion a Terraform. Consulta la documentacion completa en:

- [Introduccion a Terraform](https://salvamiguel.com/materials/terraform/intro#5-primer-recurso-con-terraform) -- Fundamentos de IaC, comparativa de herramientas, arquitectura de Terraform y sintaxis de HCL.
