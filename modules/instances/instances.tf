module "default_instance" {
    source = "hashicorp/google//google_compute_instance"
    name         = var.name
    machine_type = var.machine_type
    zone         = var.zone

    boot_disk = var.boot_disk
    
    network_interface = var.network_interface

    metadata_startup_script =<<-EOT
    #!/bin/bash
    EOT
    allow_stopping_for_update = var.allow_stopping_for_update
  
}

