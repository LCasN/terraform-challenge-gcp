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

resource "google_compute_instance" "tf-instance-1" {
  # (resource arguments)
  name         = "tf-instance-1"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-10-buster-v20220519"
    }
  }
  
  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script =<<-EOT
  #!/bin/bash
  EOT
  allow_stopping_for_update = true
}

resource "google_compute_instance" "tf-instance-2" {
  # (resource arguments)
  name         = "tf-instance-2"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-10-buster-v20220519"
    }
  }
  
  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script =<<-EOT
  #!/bin/bash
  EOT
  allow_stopping_for_update = true
}