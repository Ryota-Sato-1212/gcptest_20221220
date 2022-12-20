resource "google_compute_firewall" "allow-http-https" {
  name    = "allow-http-https"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  # Specify network tag
  target_tags = ["web-servers"]
}