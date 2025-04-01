# Despliegue de Autonomous Database en Oracle Cloud con Terraform

Este proyecto automatiza la creación de una **base de datos autónoma Always Free** en Oracle Cloud Infrastructure (OCI) utilizando **Terraform**, estableciendo una conexión interna.

------

## Recursos desplegados

- **Autonomous Database (ATP - OLTP)**: Base de datos autónoma optimizada para procesamiento de transacciones en línea.

------

## 📁 Estructura del proyecto

```
.
├── main.tf               # Definición de recursos OCI (base de datos y wallet)
├── variables.tf          # Declaración de variables necesarias
├── terraform.tfvars      # Asignación de valores sensibles (NO INCLUIR EN EL REPOSITORIO)
├── archivo_llave_oci.pem # Clave privada de OCI (NO INCLUIR EN EL REPOSITORIO)
└── README.md             # Documentación del proyecto
```

------

## 🚀 Requisitos

- **Cuenta Always Free en Oracle Cloud (OCI)** Si aún no tienes una, puedes registrarte en [Oracle Cloud Free Tier](https://www.oracle.com/cloud/free/).

- **Instalación de Terraform** Descarga e instala la versión adecuada para tu sistema operativo desde el [sitio oficial de Terraform](https://developer.hashicorp.com/terraform/downloads).

- **Configuración de credenciales de OCI**:

  1. **Generación de claves API**:
     - Crea un par de claves RSA para la autenticación.
     - Guarda la clave privada en el directorio `~/.oci/` y la pública en tu cuenta de OCI.
  2. **Configuración del archivo `config` de OCI**:
     - Ubica o crea el archivo `~/.oci/config`.
     - Añade las credenciales y detalles de configuración necesarios.

  Para una guía detallada, consulta la documentación oficial de Oracle: [Configuración del proveedor de Terraform para OCI](https://docs.oracle.com/en-us/iaas/Content/dev/terraform/configuring.htm).

------

## 🛠️ Uso

1. **Clonar este repositorio**:

   ```bash
   git clone https://github.com/v1ct0rjs/oci-autonomousdb.git
   cd oci-autonomousdb
   ```

2. **Configurar las variables sensibles**:

   Crea un archivo `terraform.tfvars` en el directorio raíz del proyecto con el siguiente contenido:

   ```hcl
   compartment_ocid = "ocid1.tenancy.oc1..xxxxxxxxxxxxxxxx"
   admin_password   = "UnaContraseñaSegura123!"
   wallet_password  = "OtraContraseñaSegura456!"
   ```

   **Nota*: Asegúrate de reemplazar los valores de ejemplo por los correspondientes a tu entoro.

3. **Inicializar Terraform**:

   ```bash
   terraform init
   ```

   Este comando realiza las siguientes acciones. Descarga e instala los proveedores necesarios definidos en la configuración e inicializa el directorio de trabajo de Terrafom.

4. **Planificar la ejecución**:

   ```
   terraform plan
   ```

   Al ejecutar este comando, Terraform:

   - Lee la configuración y el estado actual de la infraestructura.
   - Genera un plan detallado de los cambios que se aplicarán para alcanzar el estado deseado.
   - Permite revisar y validar los cambios antes de aplicarlos.

5. **Aplicar el plan**:

   ```bash
   terraform apply
   ```

   - Ejecuta las acciones necesarias para crear o modificar los recursos según el plan generado.
   - Solicita confirmación antes de proceder, brindando una última oportunidad para revisar los cambios.

   *Nota*: Es recomendable revisar cuidadosamente el plan antes de aplicar los cambios para evitar modificaciones no deseadas en la infraestructura.

------

## 🔒 Consideraciones de seguridad

- **Archivos sensibles*: No incluyas `terraform.tfvars` ni `archivo_llave_oci.pem` en el control de versiones, ya que contienen información confidencal.

------

## 💻 Muestra de funcionamiento

![image-20250401185758552]([/home/v1ct0r/GIT/oci-autonomousdb/image-20250401185758552.png](https://github.com/v1ct0rjs/oci-autonomousdb/blob/main/image-20250401185758552.png))

## 📚 Recursos adicionales

- [Documentación oficial de Terraform](https://developer.hashicorp.com/terraform/docs)
- [Guía de inicio rápido de OCI con Terraform](https://docs.oracle.com/en-us/iaas/Content/dev/terraform/getting-started.htm)

------

