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

resource "default_instance" "tf-instance-1" {
    source = "./modules/instances/"
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
}

resource "default_instance" "tf-instance-2" {
    source = "./modules/instances/"
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
}