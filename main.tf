provider "oci" {
  tenancy_ocid     = ""
  user_ocid        = ""
  fingerprint      = ""
  private_key_path = ""
  region           = ""
}

resource "oci_database_autonomous_database" "adb" {
  compartment_id           = var.compartment_ocid
  db_name                  = "ADBDemo"
  cpu_core_count           = 1
  data_storage_size_in_tbs = 1
  admin_password           = var.admin_password
  db_workload              = "OLTP"
  display_name             = "MiBaseAutonoma"
  license_model            = "LICENSE_INCLUDED"
  is_free_tier             = true
}

