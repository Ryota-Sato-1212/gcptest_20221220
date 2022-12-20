# # Create a VPC
# resource "google_compute_network" "example" {
#   name                    = "example-vpc"
#   auto_create_subnetworks = false
# }

# # Create a subnet within the VPC
# resource "google_compute_subnetwork" "example" {
#   name          = "example-subnet"
#   ip_cidr_range = "10.0.1.0/24"
#   network       = google_compute_network.example.self_link
#   region        = "asia-northeast1"
# }