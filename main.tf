
module "tf-instance-1" {
    source = "./modules/instances/"
    # (resource arguments)
    name         = "tf-instance-1"
    machine_type = "n1-standard-1"
    zone         = "us-central1-a"

    image = "debian-10-buster-v20220519"
    network = "default"
}

module "tf-instance-2" {
    source = "./modules/instances/"
    # (resource arguments)
    name         = "tf-instance-2"
    machine_type = "n1-standard-1"
    zone         = "us-central1-a"

    image = "debian-10-buster-v20220519"
    network = "default"
}