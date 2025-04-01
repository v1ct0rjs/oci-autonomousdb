# Despliegue de Autonomous Database en Oracle Cloud con Terraform

Este proyecto crea una **base de datos autónoma Always Free** en Oracle Cloud Infrastructure (OCI) usando **Terraform**, con conexión interna.

---

## Recursos que se despliegan

-  Autonomous Database (ATP - OLTP)

---

## 📁 Estructura del proyecto

```
.
├── main.tf               # Recursos OCI (base de datos + wallet)
├── variables.tf          # Definición de variables necesarias
├── terraform.tfvars      # Valores claves (NO SE INCLUYE EN EL REPOSITORIO)
├── archivo_llave_Oci.pem # Llave privada OCI (NO SE INCLUYE EN EL REPOSITORIO)
└── README.md             # Documentación del proyecto


```

---

## 🚀 Requisitos

- Cuenta **Always Free** en Oracle Cloud (OCI)
- [Terraform instalado](https://developer.hashicorp.com/terraform/downloads)
- Clave API de OCI (configurada y asociada al usuario)
- Tener creada una carpeta `~/.oci/` con la clave privada (referida en `main.tf`)

---

## 🛠️ Uso

1. Clona este repositorio:
   
   ```
   git clone https://github.com/tu-usuario/oci-autonomousdb.git
   cd oci-autonomousdb
   ```
   
   
   
1. Configura las variables en el archivo `terraform.tfvars`:
   
   ```
   compartment_ocid = "ocid1.tenancy.oc1..xxxxxxxxxxxxxxxx"
   admin_password   = "UnaContraseñaSegura123!"
   wallet_password  = "OtraContraseñaSegura456!"
   ```
   
   
   
1. Inicializa Terraform:
   
   ```
   terraform init
   terraform plan
   ```
   
   
   
1. Aplica el despliegue:
   
   ```bash
   terraform apply