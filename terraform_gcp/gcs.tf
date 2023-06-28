##Google cloud storage created
resource "google_storage_bucket" "example-bucket" {
  name     = "example-gcs-bucket"
  location = "ASIA"

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  cors {
    origin          = ["http://image-store.com"]
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    max_age_seconds = 3600
  }
}  
