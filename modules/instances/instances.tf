resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk = var.boot_disk
  
  network_interface = var.network_interface

  metadata_startup_script = var.metadata_startup_script
  allow_stopping_for_update = var.allow_stopping_for_update

}