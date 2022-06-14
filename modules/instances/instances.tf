terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.24.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = var.project_id
  region = var.region
  zone = var.zone
}


resource "google_compute_instance" "default_instance" {
    name         = var.name
    machine_type = var.machine_type
    zone         = var.zone

    boot_disk {
        initialize_params {
        image = var.image
        }
    }
       
    network_interface {
        network = var.network

        access_config {
        // Ephemeral public IP
        }
    }

    metadata_startup_script = "#!/bin/bash"
    allow_stopping_for_update = var.allow_stopping_for_update
  
}

