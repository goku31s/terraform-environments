resource "google_compute_instance" "myvm" {
  name         = "mynewtb2"
  zone         = "us-east1-b"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral public IP
    }

}

terraform {
  backend "gcs" {
    bucket = "bucket67ut"
    prefix = "terraform/state/dev"
  }
}


