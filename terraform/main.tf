resource "google_compute_instance" "vm_instance" {
  name         = "iac-vm"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata_startup_script = <<-EOF
    #!/bin/bash
    apt update
    apt install -y docker.io docker-compose
    systemctl start docker
    systemctl enable docker
  EOF
}
