variable "compartment_ocid" {
  description = "Clave OCID del usuario"
  type        = string
}

variable "admin_password" {
  description = "Contraseña del usuario ADMIN de la base de datos"
  type        = string
  sensitive   = true
}

