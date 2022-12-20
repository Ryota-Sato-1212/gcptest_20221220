# Create a GCE instance(example-instance_a) and attach the VPC and subnet
resource "google_compute_instance" "exampletestA" {
  name         = "example-instance-a"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
  # #要修正
  # metadata_startup_script = metadata_startup_script = file(//c/Users//xxxx//Desktop//Terraform//terraform_gcp//test.sh)
}


# Create a GCE instance(example-instance_b) and attach the VPC and subnet
resource "google_compute_instance" "exampletestB" {
  name         = "example-instance-b"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
  # #要修正
  # metadata_startup_script = file(//c/Users//xxxxx//Desktop//Terraform//terraform_gcp//test.sh)
}