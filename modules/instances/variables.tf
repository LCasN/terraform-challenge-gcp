variable "region" {
  type    = string
  default = "us-central1"
}

variable "zone" {
  type    = string
  default = "us-central1-a"
}

variable "project_id" {
  type    = string
  default = "qwiklabs-gcp-03-2a8961094173"
}

variable "name" {
  type    = string
}

variable "machine_type" {
  type    = string
  default = "n1-standard-1"
}

variable "metadata_startup_script" {
  type    = string
  default = "metadata_startup_script = <<-EOT #!/bin/bash EOT"
}


variable "allow_stopping_for_update" {
  type    = bool
  default = true
}

variable "image" {
  type    = string
  default = "debian-cloud/debian-9"
}

variable "network" {
  type    = string
}
