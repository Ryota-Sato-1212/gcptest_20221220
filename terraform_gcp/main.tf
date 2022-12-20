provider "google" {
  credentials = file("terraform-test20221212-0fad77a7d74a.json")
  project     = "terraform-test20221212"
  region      = "asia-northeast1"
  zone        = "asia-northeast1-b"
}